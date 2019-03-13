### Solution 09

```
git log --pretty='' --name-only --since "3 month ago" \
  | sort | uniq -c | sort -rn | head -10
```

