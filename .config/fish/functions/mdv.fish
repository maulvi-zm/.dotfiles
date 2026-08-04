function mdv --description 'View markdown with leaf, horizontally scrollable'
    # ponytail: fixed width; bump MDV_WIDTH if tables/diagrams get clipped
    set -l width (test -n "$MDV_WIDTH"; and echo $MDV_WIDTH; or echo 200)
    leaf --inline ansi:$width $argv | less -RS
end
