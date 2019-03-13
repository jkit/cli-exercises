### Solution 10

Find count of all file extensions
```
find . -type f \
  | awk -F'/' '{print $NF}' \
  | grep '\w\.' \
  | awk -F'.' '{print $NF}' \
  | sort \
  | uniq -c \
  | sort -rn
```

