### Solution 14

```
git log --name-only --pretty='' --since '2 years ago' \
  | sort \
  | uniq \
  | comm -23 <(git ls-files | sort) -
```

A much slower solution:

```
git log --name-only --pretty='' --since '2 years ago' \
  | sort \
  | uniq \
  | grep -v -f - <(git ls-files)
```

Why is this so much slower?
