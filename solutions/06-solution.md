### Solution 06

```
git log --since '1 month ago' | grep '^Author' | sort | uniq -c | sort -n
```

