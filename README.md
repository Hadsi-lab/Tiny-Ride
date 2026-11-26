# Backyard Blitz

A slingshot toy-car racing game for phone browsers. Launch a tiny race car through six giant worlds (Garden, Kitchen, Garage, Bathroom, Playroom, Beach), land flips and rolls off ramps, and race the ghost of your best run.

Play: https://hadsi-lab.github.io/Tiny-Ride/

## Files

- `index.html` – the game (one file, uses three.js from a CDN).
- `docs/index.html` – the same game wrapped as a full web page for GitHub Pages. Generated; don't edit by hand.
- `scripts/build-pages.sh` – regenerates `docs/index.html` from `index.html`.
- `docs/manifest.webmanifest`, `docs/icons/` – app name and home-screen icon (the blue racer from the game).

## Publishing on GitHub Pages

1. On GitHub: **Settings → Pages**.
2. Under **Build and deployment**, set **Source** to *Deploy from a branch*.
3. Pick the branch that holds this code and the **/docs** folder, then **Save**.
4. After a minute or two the game is live at `https://hadsi-lab.github.io/Tiny-Ride/`.

After changing `index.html`, run `./scripts/build-pages.sh`, then commit and push.

## Controls

- Drag down and let go to fire the slingshot (release when the meter flashes gold for a Perfect launch).
- Steer with the ◀ ▶ buttons, by dragging, or by tilting the phone (choose in Settings).
- Tap the flame to boost; coins refill it.
- In the air off a ramp, tap FLIP or ROLL. Land the trick for a speed burst.
