if status --is-interactive; and test -d $LAST_WORKING_DIR; and test $PWD = $HOME
  cd $LAST_WORKING_DIR
end

function __onpwd --on-variable PWD
    set --universal LAST_WORKING_DIR $PWD
end
# __onpwd
