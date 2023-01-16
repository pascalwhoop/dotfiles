"------------------------------------------------------------
"vim custom functions
"------------------------------------------------------------
command! SpellOn set spell spelllang=en_us
command! SpellOff set nospell
command! Bgd set background=dark
command! Bgl set background=light
"command -nargs=1 PadRight <f-args>s/.*/\=printf('%-72s',submatch(0))
command! Date r !date

" DELETE FILES 
function! DeleteFile(...)
  if(exists('a:1'))
    let theFile=a:1
  elseif ( &ft == 'help' )
    echohl Error
    echo "Cannot delete a help buffer!"
    echohl None
    return -1
  else
    let theFile=expand('%:p')
  endif
  let delStatus=delete(theFile)
  if(delStatus == 0)
    echo "Deleted " . theFile
  else
    echohl WarningMsg
    echo "Failed to delete " . theFile
    echohl None
  endif
  return delStatus
endfunction
"delete the current file
com! Rm call DeleteFile()
"delete the file and quit the buffer (quits vim if this was the last file)
com! RM call DeleteFile() <Bar> q!

"------------------------------------------------------------
"vim custom functions END
"------------------------------------------------------------


"------------------------------------------------------------
"vim custom remaps
"------------------------------------------------------------
"------------------------------------------------------------
"vim custom remamps END
"------------------------------------------------------------
