### Exercise 00
Cheat at crossword puzzles.

Find words in `/usr/share/dict/words` that match a pattern specific pattern. For example, seven letter words with `s` in the fourth, fifth, and seventh position.

### Hint
If `/usr/share/dict/words` doesn't exist, you can install it on Ubuntu with
```
sudo apt install wamerican
```

---
### Exercise 01
Compose calls of `head` and `tail` to print lines 11-20 of a given file.

### Hint
If you want to create a fake file of consecutive numbers, use `seq`.
```
seq 30
```

---

### Exercise 02
Compose calls of `head` and `tail` the second to last line of a file.

### Hint
If you want to create a fake file of consecutive numbers, use `seq`.
```
seq 30
```

---
### Exercise 03
`uniq` deduplicates adjacent lines.

Find all unique lines.

---
### Exercise 04
List all users from `/etc/passwd`.

### Hint
There are many ways to do this, but `cut` works well here.

---
### Exercise 05
Given a list of full domain names, print just the top level domain name.

### Example
For example, given `domains.txt`:
```
google.com
www.summitlearning.org
app.summitlearning.org
```

Print
```
com
org
org
```

### Hint
Given that the number of fields is variable, `cut` won’t work. You might want to try using `awk` or `ruby -ne`.

---
### Exercise 06
For a given Git repository, show the count of commits in the last month for all authors.

### Hint
To scope commits by time, search `git log` documentation for `since`.

---
### Exercise 07

Count the number of files with the extension `.js` in a given directory.

`find` can list all files under a given path. Try

```
find <path>
```

---
### Exercise 08

Count the number of files that do not end with `.js` or `.rb`.

---

### Exercise 09

Find the top ten "hottest" files in a Git repository. Rank files by the number
of times they’ve been modified in the last month.

### Hint
Search  `git logs`  documentation for `pretty` ,  `name-only`, and `since`.

---
### Exercise 10
Find the count of files for each file extensions in a given directory.

Example output:
```
  40904 js
  28827 rb
   6843 map
   6504 hpp
   3107 md
   3076 cache
   3030 json
   1340 h
   1331 c
   1268 html
```

### Hint
Given a character to use as a field delimiter, `awk` can select the last field
of records.

```
echo "a,b,c,last" | awk -F',' '{print $NF}'
echo "a:b:last" | awk -F':' '{print $NF}'
```

---
### Exercise 11
Use `jq` to select the author and date of commits listed at https://api.github.com/repos/git/git/commits.

### Hint
Use `curl` to fetch a webpage.
If you’re on Ubuntu and need to install `jq`, run `sudo apt install jq`.

---
### Exercise 12
Given a log file that is being updated in real-time, stream lines that contain
"error". What if "error" has multiple capitalizations?


### Hint
`tail -f` can be used to continuous stream a file.

This repository of exercises includes a script to produce fake log lines. Run
it with

```
ruby log-producer.rb >> fake.log
```

---
### Exercise 13
Given a log file that is being updated in real-time, stream lines that contain
"error" with additional context: 1 line before the "error" line and 3 lines
after the "error" line.


### Hint
Read through `grep`'s various flags.

---
### Exercise 14
Find files in a Git repository that have not been touched in over 2 years.


### Hint
As with all of these exercises, there are many solutions. Some tools that
might be helpful. `comm` could be useful here.


