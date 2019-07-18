function screens
    if test $argv[1] = 'in'
        #set DNS 
        #start VM
        #set http_proxy
    end
    if test $argv[1] = 'out'
        #unset DNS 
        #stop VM
        #unset http_proxy
    end
end
