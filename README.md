# Game

Built with Rojo, published with Roblox Open Cloud via GitHub Actions. No Studio required.

## Setup (once)
1. Create the experience on create.roblox.com; note the Universe ID and Place ID.
2. Creator Hub → Open Cloud → API Keys: create a key with `universe-places:write`
   scoped to that experience only. Add your IP allowlist as `0.0.0.0/0` (Actions IPs vary).
3. GitHub repo → Settings → Environments → create `production`.
   - Secret: `ROBLOX_API_KEY`
   - Variables: `ROBLOX_UNIVERSE_ID`, `ROBLOX_PLACE_ID`
4. Change `Coffilhg` in [`.github/workflows/publish.yml`](<.github/workflows/publish.yml#L14>) if the repo lives elsewhere.

## Publish
Actions → "Publish to Roblox" → Run workflow, or `git tag v1.0.0 && git push --tags`.

## Local dev
`rokit install`, then `rojo serve` with the Rojo Studio plugin, or `rojo build -o game.rbxl`.

## Generating sourcemap & types
```wally install && rojo sourcemap default.project.json --output sourcemap.json && wally-package-types -s sourcemap.json Packages/ ServerPackages/ DevPackages/```