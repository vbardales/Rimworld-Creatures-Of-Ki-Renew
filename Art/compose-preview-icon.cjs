// Composites the cut-out ModIcon onto the corner of the Steam header image, per the owner's showcase
// convention of 2026-09-29: the icon looks like it is climbing out of the emptier bottom corner, tilted
// (left corner +15 degrees, right corner -15 degrees), its side and bottom edges overflowing the frame.
// Usage: node Art/compose-preview-icon.cjs  (NODE_PATH may point to a bundled Sharp install)
// Composites onto Mod/About/Preview.png IN PLACE, on top of whatever is there. Run it once, right after
// `node Art/render-preview.cjs` (or after Preview.png is otherwise regenerated text-and-badge-complete),
// never twice in a row: a second run stacks a second icon on the first.
const sharp = require('sharp');
const path = require('node:path');

const root = __dirname;
const repo = path.dirname(root);

// Step 1: cut the icon out. ModIcon.png has no true alpha=0 background (a soft dark vignette instead), and
// the icon's own linework (eyes, outline) is also near-black — a global luminance key would strip both. So
// this flood-fills from the four border edges through dark pixels only, marking the connected background
// region transparent; dark pixels *inside* the icon that the flood never reaches (the linework) stay opaque.
// Re-run this whenever ModIcon.png changes; ModIcon-cutout.png is committed so the composite step does not
// need Sharp again.
async function cutout() {
  const src = path.join(repo, 'Mod', 'About', 'ModIcon.png');
  const { data, info } = await sharp(src).ensureAlpha().raw().toBuffer({ resolveWithObject: true });
  const { width: w, height: h, channels: c } = info;
  const lum = new Float32Array(w * h);
  for (let i = 0; i < w * h; i++) {
    const o = i * c;
    lum[i] = 0.2126 * data[o] + 0.7152 * data[o + 1] + 0.0722 * data[o + 2];
  }
  const threshold = 40;
  const bg = new Uint8Array(w * h);
  const visited = new Uint8Array(w * h);
  const stack = [];
  const push = (x, y) => {
    if (x < 0 || y < 0 || x >= w || y >= h) return;
    const i = y * w + x;
    if (visited[i]) return;
    visited[i] = 1;
    if (lum[i] <= threshold) { bg[i] = 1; stack.push(i); }
  };
  for (let x = 0; x < w; x++) { push(x, 0); push(x, h - 1); }
  for (let y = 0; y < h; y++) { push(0, y); push(w - 1, y); }
  while (stack.length) {
    const i = stack.pop();
    const x = i % w, y = (i / w) | 0;
    push(x + 1, y); push(x - 1, y); push(x, y + 1); push(x, y - 1);
  }
  // The silhouette's own black outline stroke touches the background at the same near-black luminance, so
  // the flood fill above correctly (and unavoidably) removes it along with the background too. Recover it:
  // dilate the icon mask by a couple of pixels and paint that ring black, reconstructing the outline the
  // original art has all around its silhouette.
  const icon = new Uint8Array(w * h);
  for (let i = 0; i < w * h; i++) icon[i] = bg[i] ? 0 : 1;
  const dilate = (mask) => {
    const grown = new Uint8Array(w * h);
    for (let y = 0; y < h; y++) for (let x = 0; x < w; x++) {
      const i = y * w + x;
      if (mask[i]) { grown[i] = 1; continue; }
      if ((x > 0 && mask[i - 1]) || (x < w - 1 && mask[i + 1]) ||
          (y > 0 && mask[i - w]) || (y < h - 1 && mask[i + w])) grown[i] = 1;
    }
    return grown;
  };
  let ring = icon;
  for (let n = 0; n < 2; n++) ring = dilate(ring);
  const out = Buffer.from(data);
  for (let i = 0; i < w * h; i++) {
    const o = i * c;
    if (bg[i] && ring[i]) {
      out[o] = 10; out[o + 1] = 8; out[o + 2] = 6; out[o + 3] = 255;
    } else if (bg[i]) {
      out[o + 3] = 0;
    }
  }
  const cutoutPath = path.join(root, 'ModIcon-cutout.png');
  await sharp(out, { raw: { width: w, height: h, channels: c } }).png().toFile(cutoutPath);
  return cutoutPath;
}

// Step 2: which bottom corner has the least going on, by pixel variance of a corner-sized crop, and the
// matching sign of rotation and overflow direction.
async function emptiestCorner(previewPath) {
  const { width: W, height: H } = await sharp(previewPath).metadata();
  const cw = Math.round(W * 0.245), ch = Math.round(H * 0.436); // ~220x220 at 896x504
  const score = async (left) => {
    const stats = await sharp(previewPath).extract({ left, top: H - ch, width: cw, height: ch }).stats();
    return stats.channels.reduce((a, ch2) => a + ch2.stdev, 0) / stats.channels.length;
  };
  const left = await score(0);
  const right = await score(W - cw);
  return left <= right ? 'left' : 'right';
}

async function compose() {
  const cutoutPath = await cutout();
  const previewPath = path.join(repo, 'Mod', 'About', 'Preview.png');
  const corner = await emptiestCorner(previewPath);
  const { width: W, height: H } = await sharp(previewPath).metadata();

  const iconSize = 260;
  const angle = corner === 'left' ? 15 : -15;
  const rotated = await sharp(cutoutPath)
    .resize(iconSize, iconSize, { fit: 'contain', background: { r: 0, g: 0, b: 0, alpha: 0 } })
    .rotate(angle, { background: { r: 0, g: 0, b: 0, alpha: 0 } })
    .blur(0.6) // 128px source stepped up to iconSize then rotated: soften the resulting jagged edges
    .png()
    .toBuffer();
  const { width: rw, height: rh } = await sharp(rotated).metadata();

  const overflowSide = Math.round(rw * 0.30);
  const overflowBottom = Math.round(rh * 0.28);
  const left = corner === 'left' ? -overflowSide : W - rw + overflowSide;
  const top = H - rh + overflowBottom;

  const composed = await sharp(previewPath)
    .composite([{ input: rotated, left, top }])
    .png()
    .toBuffer();
  await sharp(composed).toFile(previewPath);

  console.log(`Preview.png: icon composited in the ${corner} corner, ${angle > 0 ? '+' : ''}${angle} degrees, at (${left}, ${top}).`);
}

compose().catch((error) => { console.error(error); process.exitCode = 1; });
