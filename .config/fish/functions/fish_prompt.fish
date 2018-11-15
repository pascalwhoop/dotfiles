function fish_prompt
    function _git_branch_name
        echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    end
    function _is_git_dirty
        echo (git status -s --ignore-submodules=dirty ^/dev/null)
    end
    if [ (_git_branch_name) ]
        set -l git_branch (set_color -o blue)(_git_branch_name)
        if [ (_is_git_dirty) ]
            for i in (git branch -qv --no-color | string match -r '\*' | cut -d' ' -f4- | cut -d] -f1 | tr , \n)\
 (git status --porcelain | cut -c 1-2 | uniq)
                switch $i
                    case "*[ahead *"
                        set git_status "$git_status"(set_color red)⬆
                    case "*behind *"
                        set git_status "$git_status"(set_color red)⬇
                    case "."
                        set git_status "$git_status"(set_color green)✚
                    case " D"
                        set git_status "$git_status"(set_color red)✖
                    case "*M*"
                        set git_status "$git_status"(set_color green)✱
                    case "*R*"
                        set git_status "$git_status"(set_color purple)➜
                    case "*U*"
                        set git_status "$git_status"(set_color brown)═
                    case "??"
                        set git_status "$git_status"(set_color red)≠
                end
            end
        else
            set git_status (set_color green):
        end
        set git_info "(git$git_status$git_branch"(set_color white)")"
    end
 
	and set retc green
    or set retc red
    tty | string match -q -r tty
    and set tty tty
    or set tty pts

    set_color $retc
    if [ $tty = tty ]
        echo -n .-
    else
        echo -n '┬─'
    end
    set_color -o green
    echo -n [
    if test "$USER" = root -o "$USER" = toor
        set_color -o red
    else
        set_color -o yellow
    end
    echo -n $USER
    set_color -o white
    echo -n @
    if [ -z "$SSH_CLIENT" ]
        set_color -o blue
    else
        set_color -o cyan
    end
    echo -n (prompt_hostname)
    set_color -o white
    #echo -n :(prompt_pwd)
    echo -n :(pwd|sed "s=$HOME=~=")
    set_color -o green
    echo -n ']'
    set_color normal
    set_color $retc
    if [ $tty = tty ]
        echo -n '-'
    else
        echo -n '─'
    end
    set_color -o green
    echo -n '['
    set_color normal
    set_color $retc
    echo -n (date +%X)
    set_color -o green
    echo -n ]

    if type -q acpi
        if [ (acpi -a 2> /dev/null | string match -r off) ]
            echo -n '─['
            set_color -o red
            echo -n (acpi -b|cut -d' ' -f 4-)
            set_color -o green
            echo -n ']'
        end
    end
    echo
    set_color normal
    for job in (jobs)
        set_color $retc
        if [ $tty = tty ]
            echo -n '; '
        else
            echo -n '│ '
        end
        set_color brown
        echo $job
    end
    set_color normal
    set_color $retc
    if [ $tty = tty ]
        echo -n "'->"
    else
        echo -n '╰─>'
    end
    set_color -o red
    echo -n '$ '
    set_color normal
end

# wakatime for fish
#
# Add this to the fish_prompt function in
# ~/.config/fish/functions/fish_prompt.fish
# (or if it doesn't exist, create it).


# We've also included an example of how
# to determine the current project from the pwd.
# It'll only work without alterations if
# you happen to keep all your projects in
# ~/Sites/ on a Mac, but it's easy to modify

set -l project

if echo (pwd) | grep -qEi "^/Users/$USER/Sites/"
    set  project (echo (pwd) | sed "s#^/Users/$USER/Sites/\\([^/]*\\).*#\\1#")
else
    set  project "Terminal"
end

wakatime --write --plugin "fish-wakatime/0.0.1" --entity-type app --project "$project" --entity (echo $history[1] | cut -d ' ' -f1) 2>&1 > /dev/null&

