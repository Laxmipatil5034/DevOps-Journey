# 🚀 Day 12 – Linux Pro Commands (AWK, SED & GREP)

## 🎯 Objective
Learn advanced Linux text processing commands used in DevOps for searching, editing, and analyzing files efficiently.

---

# 🔍 GREP (Global Regular Expression Print)

## What is GREP?
grep is used to search for specific text or patterns inside files.

### Syntax
bash
grep "pattern" filename


### Examples
bash
grep "error" logs.txt
grep -i "linux" notes.txt
grep -n "hello" file.txt
grep -r "password" .
grep -c "DevOps" file.txt


### Common Options
- -i → Ignore case
- -n → Show line numbers
- -r → Search recursively
- -c → Count matching lines
- -v → Show non-matching lines

---

# ✏️ SED (Stream Editor)

## What is SED?
sed is used to edit text in files without opening them.

### Syntax
bash
sed 'command' filename


### Examples
bash
sed 's/Linux/Ubuntu/' file.txt
sed 's/Linux/Ubuntu/g' file.txt
sed '3d' file.txt
sed -n '5p' file.txt


### Common Uses
- Replace text
- Delete lines
- Print specific lines
- Automate file editing

---

# 📊 AWK

## What is AWK?
awk is a text-processing tool used to work with rows and columns of data.

### Syntax
bash
awk '{print $1}' filename


### Examples
bash
awk '{print $1}' employees.txt
awk '{print $2}' employees.txt
awk '{print $1,$3}' employees.txt
awk '$3 > 50000' employees.txt


### Common Uses
- Print columns
- Filter records
- Generate reports
- Process CSV and log files

---

# 💼 DevOps Use Cases

- Analyze server logs using grep
- Modify configuration files using sed
- Extract data using awk
- Troubleshoot CI/CD pipeline logs
- Automate Linux administration tasks

---

# ✅ Commands Practiced

bash
grep
grep -i
grep -n
grep -r
grep -c

sed
sed 's/old/new/'
sed -n
sed d

awk
awk '{print $1}'
awk '{print $2}'
awk '{print $1,$3}'


---

# 📖 Key Learnings

- Learned how to search text using *grep*
- Learned how to edit files using *sed*
- Learned how to process structured data using *awk*
- Understood real-world DevOps use cases of these commands
