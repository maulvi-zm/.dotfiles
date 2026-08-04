#!/usr/bin/env python3
"""Launch sqlit with the `ansi` theme field allowed in custom theme JSON.

sqlit whitelists which textual Theme fields a custom theme file may set, and
`ansi` is not on the list. Without it, `background: ansi_default` gets converted
to opaque RGB and the terminal background never shows through. Patching the
whitelist at import time keeps the change out of the tool venv, so it survives
`uv tool upgrade sqlit-tui`.
"""

import sys

from sqlit.domains.shell.app import theme_manager

theme_manager.CUSTOM_THEME_FIELDS = set(theme_manager.CUSTOM_THEME_FIELDS) | {"ansi"}

from sqlit.cli import main  # noqa: E402  (import after patch is the point)

if __name__ == "__main__":
    sys.exit(main())
