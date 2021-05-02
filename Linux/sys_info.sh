
#!/bin/bash

outputFolder=~/research
outputFile=$outputFolder/sys_info.txt

if [ ! -d $outFolder ]
then
 mkdir $outFolder
fi

if [ -f $outputFile ]
then
 rm $outputFile
fi

#mkdir ~/research 2> /dev/null

#echo "A Really Cool Script" > ~/research/sys_info.txt
echo "A Really Cool Script" > $outputFile
date >> ~/research/sys_info.txt 
echo "" >> ~/research/sys_info.txt
echo "Machine Type Info:" >> ~/research/sys_info.txt
echo $MACHTYPE >> ~/research/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> ~/research/sys_info.txt
echo "" >> ~/research/sys_info.txt
echo "IP Info: $(ip addr | grep inet | tail -3 | head -1) \n" >> ~/research/sys_info.txt
echo "Hostname: $(hostname -s)" >> ~/research/sys_info.txt
cat /etc/resolv.conf >> ~/research/sys_info.txt
echo "Memory Info:" >> ~/research/sys_info.txt
free >> ~/research/sys_info.txt
echo -e "\nCPU Info" >> ~/research/sys_info.txt
lscpu | grep CPU >> ~/research/sys_info.txt
echo -e "\nDisk Usage:" >> ~/research/sys_info.txt
df -H | head -2 >> ~/research/sys_info.txt
echo -e "\nWho is logged in: \n $(who) \n" >> ~/research/sys_info.txt
echo -e "\n777 Files:" >> ~/research/sys_info.txt  

