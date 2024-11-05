function oks
    eval $argv
    if test $status -eq 0
        say "worked"
    else 
        say "fail"
    end
end
