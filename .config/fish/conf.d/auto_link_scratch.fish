function __auto_link_scratch --on-variable PWD -d "Symlink ./_scratch to a per-repo scratch dir shared by all worktrees"
    # ponytail: conf.d, not functions/ -- autoloaded functions don't register
    # their event handlers until first called, so --on-variable would never fire.
    set -l top (git rev-parse --path-format=absolute --show-toplevel 2>/dev/null)
    or return

    # only at worktree root, else every cd litters subdirs with symlinks
    test "$top" = "$PWD"; or return

    test -e ./_scratch -o -L ./_scratch; and return

    set -l common (git rev-parse --path-format=absolute --git-common-dir 2>/dev/null)
    or return

    mkdir -p "$common/scratch"; and ln -s "$common/scratch" ./_scratch
end

# A shell spawned directly inside a worktree (herdr worktree create) never
# *changes* PWD, so --on-variable alone never fires. Run once at startup too.
status is-interactive; and __auto_link_scratch
