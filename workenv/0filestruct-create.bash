cat 0filestruct.conf | while read l ; do
    echo \"${l/[a-z]*}\"
    echo "$l"
done
