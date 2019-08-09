# Drop

## Purpose
These files are payloads, I just use them to make post a little bit easier.

## Use
**user.sh**

Creates highest priv user possible.

Example:
```
bash user.sh USERNAME PASSWORD
```

**rev.sh**

Attempts to make a reverse shell using multiple methods.

Example:
```
bash rev.sh IP PORT
```

**bind.sh**

Attempts to make a bind shell using multiple methods.

Example:
```
bash bind.sh PORT
```

**timebomb.sh**

Runs a command at a specific time.

Example:
```
bash timebomb.sh "[time]" "[command]"
```
The time needs to be entered in the following crontab format:

 min hour dayOfMonth monthOfYear dayOfWeek
 
0-59 0-23    1-31       1-12      0-6 (sunday=0)

Leave '\*' to have it wildcard

Example: 3 12 20 9 \*

This will run at 12:03am on every sept 20

Also, the parameters need to be enclosed in quotes
