
arecord -l | grep -E '^card\s[0-9]*:' | awk '{printf "[%d] %s\n", NR, $0}'
