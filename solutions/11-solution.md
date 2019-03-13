### Solution 11

```
curl -s https://api.github.com/repos/git/git/commits \
  | jq -r '.[].commit.author | [.name, .date] | @csv'
```

