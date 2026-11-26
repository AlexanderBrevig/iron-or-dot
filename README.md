# iron-or-dot

**Iron or Dot:** an interactive model of the pistol sight picture (iron sights vs. red dot) for different prescriptions: myopia, hyperopia, presbyopia, astigmatism and anisometropia. Defaults to the author's own eyes (anisometropia + astigmatism) as an extreme example; isolated astigmatism-only and anisometropia-only presets are included.

- `src/page.html`: the page as a fragment (no doctype/head); also published as a claude.ai Artifact.
- `build.sh`: wraps the fragment into `index.html` for GitHub Pages.
- `index.html`: the built page. Don't edit it directly; edit `src/page.html` and run `./build.sh`.

Model: blur = |object vergence − eye focus| per principal meridian × pupil diameter, as an (anisotropic) Gaussian blur. Accommodation is shared by both eyes and set by the dominant eye. Simplified: no aberrations, no aniseikonia, approximate astigmatism direction. Not a vision test.
