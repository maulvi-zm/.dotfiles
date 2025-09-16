function co
    set filename (basename $argv[1] .cpp)
    g++ -std=c++17 -O2 -o $filename $argv[1] -Wall
end
