## Using sed utility
### 1- Display the lines that contain the word “lp” in /etc/passwd file.
![q1](sed_q1)

### 2- Display /etc/passwd file except the third line.
![q2](sed_q2)

### 3- Display /etc/passwd file except the last line.
![q3](sed_q3)

### 4- Display /etc/passwd file except the lines that contain the word “lp”.
![q4](sed_q4)

### 5- Substitute all the words that contain “lp” with “mylp” in /etc/passwd file.
![q5](sed_q5)


## Using awk utility
### 1- Print full name (comment) of all users in the system.
![q1](awk_1)

### 2- Print login, full name (comment) and home directory of all users.( Print each line preceded by a line number)
![q2](awk_2)

### 3- Print login, uid and full name (comment) of those uid is greater than 500
![q3](awk_3)

### 4- Print login, uid and full name (comment) of those uid is exactly 500
![q4](awk_4)

### 5- Print line from 5 to 15 from /etc/passwd
![q5](awk_5)

### 6- Change lp to mylp
- Using gsub():
![q6_1](awk_6_1)

- Implementation from scratch:
![q6_2](awk_6_2)

### 7- Print all information about greatest uid.
![q7](awk_7)

### 8- Get the sum of all accounts id’s.
![q8](awk_8)
