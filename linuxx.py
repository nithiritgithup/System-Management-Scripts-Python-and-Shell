import os
import subprocess
def directory(s):
    os.makedirs(s)
    print(f"{s} created successfully")
def touch(s1,name):
    with open(s1,"w") as f:
        f.write(f"Hello my frd{name}")
    print(f"{s1} created succesfully")
def ping(s2):
    response=subprocess.run(["ping","-c","4",s2],capture_output=True,text=True)
    print(response.stdout)
    print(f"{s2} test completed")
def top():
    result=subprocess.run("top")
    print(result.stdout)
    print("display all ongoing process are list outed")
if __name__== "__main__":
    name=input("Enter your name:")
    print("Welcome to our world, HI",name)
    for i in range(1,5+1):
        print("1.Making Directory")
        print("2.Making File")
        print("3.Ping Test")
        print("4.Displaying all ongoing process")
        print("5.Exit")
        opt=input("Enter the option:")
        if opt=="1":
            dir_name=input("Enter directory name:")
            directory(dir_name)
        elif opt=="2":
            file_name=input("Enter the file name:")
            touch(file_name,name)
        elif opt=="3":
            ip=input("Enter host for ping:")
            ping(ip)
        elif opt=="4":
            top()
        elif opt=="5":
            break
            print("Thank you for visit our app")
        else:
            print("You select invalid option")


