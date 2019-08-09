#usage: bash timebomb.sh [time] [cmd]
#time format: min hour dayOfMonth monthOfYear dayOfWeek
#            0-59 0-23    1-31       1-12      0-6 (sunday=0)
#leave '*' to have it wildcard
#example: 3 12 20 9 *
#this will run at 12:03am on sept 20


crontab -l > /tmp/3301
echo $1 $2 >> /tmp/3301
crontab /tmp/3301
rm /tmp/3301
