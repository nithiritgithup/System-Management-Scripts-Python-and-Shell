echo "Enter you name:"
read name
echo "Welcome user ,"$name
if [ $name == "vk" ]
then
echo "you are not allowed for this app"
else
while true;
do
echo "1.make dir 2.make  file 3.remove dir and remove file 4.htop 5.tree 6.exit"
echo "Enetr opt:"
read opt
if [ $opt -eq 1 ]
then
echo "Enter dir name:"
read dir
mkdir $dir
echo "dir created succesfully"
elif [ $opt -eq 2 ]
then
echo "enter file name:"
read file
touch file
echo "file created successfully"
elif  [ $opt -eq 3 ]
then
echo "Enter dir for remove:"
read rs
rmdir $rs
echo "**********************dir removed succesfully********************************************"
echo "Enter file name to remove:"
read rs1
rm rs1
echo "file removed successfully"
elif [ $opt -eq 4 ]
then
htop
elif [ $opt -eq 5 ]
then
tree
elif [ $opt -eq 6 ]
then
echo "Thank you visit our app"
exit 0
else
echo "you enter wrong check once"
fi
done
fi
