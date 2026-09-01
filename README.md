# How to use

1. Make sure `stow` is installed
2. Clone this repository to home directory (Ex: ~/.dotfiles)
3. Change directory to the dotfiles folder
4. Run this command in the terminal 

    ```fish
    stow .
    ```

## Branches and machines

Two machines, two different macOS usernames. This is the one thing that
regularly bites when moving config between them.

| Branch   | Machine  | User            | Home              |
| -------- | -------- | --------------- | ----------------- |
| `master` | personal | `maulvizm`      | `/Users/maulvizm` |
| `work`   | work     | `maulvi.maulana` | `/Users/maulvi.maulana` |

`work` tracks `master` and adds work-only config on top.

### Config with hardcoded absolute paths

A few files hardcode `$HOME` and therefore **differ between branches on
purpose**. Do not "fix" a path to the other machine's user when merging or
cherry-picking — expect a conflict on these lines and keep whichever value
matches the branch:

- `.config/aerospace/aerospace.toml` — `exec-and-forget` path to `center-window.sh`
- `.config/herdr/plugins.json` — plugin `manifest_path` / `plugin_root` / `managed_path`

When porting a change between branches, prefer cherry-picking the portable
commit only, and keep path fixes in their own machine-specific commit.

> A wrong username here fails **silently**: aerospace's `exec-and-forget`
> reports nothing when the script is missing, and herdr only surfaces it as
> `manifest unavailable` under `herdr plugin list`.

### Note on herdr plugins.json

`.config/herdr/plugins.json` is generated state, rewritten by
`herdr plugin install/uninstall`. If it drifts, reinstall rather than editing
it by hand:

```fish
herdr plugin uninstall herdr-splits
herdr plugin install lmilojevicc/herdr-splits.nvim --yes
herdr server reload-config
```
