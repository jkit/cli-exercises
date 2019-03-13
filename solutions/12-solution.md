### Solution 12

```
tail -f fake.log | grep -i error
```

To test this directly

```
ruby log-producer.rb | grep -i error
```
