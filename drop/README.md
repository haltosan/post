# Drop

## Purpose
These files are payloads, I just use them to make post a little bit easier.

## Use
**user.sh**

Creates highest priv user possible.

Usage:
```
bash user.sh USERNAME PASSWORD
```

**rev.sh**

Attempts to make a reverse shell using multiple methods.

Usage:
```
bash rev.sh IP PORT
```

**bind.sh**

Attempts to make a bind shell using multiple methods.

Usage:
```
bash bind.sh PORT
```

**timebomb.sh**

Runs a command at a specific time.

Usage:
```
bash timebomb.sh "TIME" "COMMAND"
```
The time needs to be entered in the following crontab format:

min(0-59) hour(0-23) dayOfMonth(1-31) monthOfYear(1-12) dayOfWeek(0-6 sunday=0)

Leave '\*' to have it wildcard

Example: ```bash timebomb.sh "20 4 21 9 \*" "echo 'Triggered!'"```

This will run at 4:20am on every sept 21

Also, the parameters need to be enclosed in quotes
