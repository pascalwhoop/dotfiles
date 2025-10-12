#setting display env variable for tmux
export EDITOR=/opt/homebrew/bin/vim

#adding home brewed binaries and scripts
export PATH="$HOME/.scripts/bin:$PATH"
export PATH="$HOME/.scripts/macos:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="$HOME/.rd/bin:$PATH"
export TERM="xterm-256color"
#export GDK_SCALE=2

#make FZF even better
export FZF_DEFAULT_COMMAND='fd -H'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export HOMEBREW_NO_AUTO_UPDATE=1

eval "$(/opt/homebrew/bin/brew shellenv)"

export BW_USER='<YOUR-USER>'

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# BITWARDEN SUDO PROTECTION
# bw() {
#   bw_exec=$(sh -c "which bw")
#   local -r bw_session_file='/var/root/.bitwarden.session' # Only accessible as root
#
#   _read_token_from_file() {
#
#     local -r err_token_not_found="Token not found, please run bw --regenerate-session-key"
#     case $1 in
#     '--force')
#       unset bw_session
#       ;;
#     esac
#
#     if [ "$bw_session" = "$err_token_not_found" ]; then
#       unset bw_session
#     fi
#
#     # If the session key env variable is not set, read it from the file
#     # if file it not there, ask user to regenerate it
#
#     if [ -z "$bw_session" ]; then
#       bw_session="$(
#         sh -c "sudo cat $bw_session_file 2> /dev/null"
#         # shellcheck disable=SC2181
#         if [ "$?" -ne "0" ]; then
#           echo "$err_token_not_found"
#           sudo -k # De-elevate privileges
#           exit 1
#         fi
#         sudo -k # De-elevate privileges
#       )"
#
#       # shellcheck disable=SC2181
#       if [ "$bw_session" = "$err_token_not_found" ]; then
#         echo "$err_token_not_found"
#         return 1
#       fi
#     fi
#   }
#
#   case $1 in
#   '--regenerate-session-key')
#     echo "Regenerating session key, this has invalidated all existing sessions..."
#     sudo rm -f /var/root/.bitwarden.session && ${bw_exec} logout 2>/dev/null # Invalidate all existing sessions
#
#     ${bw_exec} login "${BW_USER}" --raw | sudo tee /var/root/.bitwarden.session &>/dev/null # Generate new session key
#
#     _read_token_from_file --force # Read the new session key for immediate use
#     sudo -k                       # De-elevate privileges, only doing this now so _read_token_from_file can resuse the same sudo session
#     ;;
#
#   'login' | 'logout' | 'config')
#     ${bw_exec} "$@"
#     ;;
#
#
#   '--help' | '-h' | '')
#     ${bw_exec} "$@"
#     echo "To regenerate your session key type:"
#     echo "  bw --regenerate-session-key"
#     ;;
#
#   *)
#     _read_token_from_file
#
#     ${bw_exec} "$@" --session "$bw_session"
#     ;;
#   esac
# }

. "$HOME/.cargo/env"
