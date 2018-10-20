function activate
    set project (basename $PWD)
    set activate_path "$HOME/.venv/$project/bin/activate.fish"
    echo "sourcing $activate_path"
    source $activate_path
end

