### Solution 05

Using `awk`
```
cat domains.txt | awk -F. '{print $NF}' | sort | uniq -c | sort -rn
```

Using `ruby -ne`
```
cat domains.txt | ruby -ne 'puts $_.split(".")[-1]'
```

