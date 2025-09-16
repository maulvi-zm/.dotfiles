function run
    co $argv[1]
    set filename (basename $argv[1] .cpp)
    ./$filename
end
