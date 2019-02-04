function diary
    set FILE "$NOTES/diary/diary.gpg"
    cat $FILE  | gpg --decrypt > /tmp/diary.md
    vim /tmp/diary.md
    cat /tmp/diary.md | gpg --encrypt -r mail@pascalbrokmeier.de > $FILE
    rm -rf /tmp/diary.md
end

