### Solution 13

```
tail -f fake.log | grep -B1 -A3 -i error
```

To test this directly

```
ruby log-producer.rb | grep -B1 -A3 -i error
```
