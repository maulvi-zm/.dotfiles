function sqlit --wraps sqlit --description 'sqlit with transparent-background custom themes enabled'
    set -l venv_python ~/.local/share/uv/tools/sqlit-tui/bin/python3
    set -l launcher ~/.config/sqlit/sqlit-launch.py
    if test -x $venv_python -a -f $launcher
        $venv_python $launcher $argv
    else
        command sqlit $argv
    end
end
