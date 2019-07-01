echo "**starting**"

{
	useradd --system --password $(mkpasswd --hash=SHA-512 $2) $1 && echo "system user made"
} || { 
	useradd --password $(mkpasswd --hash=SHA-512 $2) $1 && echo "basic user made"
}
