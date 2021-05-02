
#!/bin/bash
echo "Memory Information:" \n > ~/backups/freemem/free_mem.txt
free -h > ~/backups/freemem/free_mem.txt
echo "Disk Usage:" \n > ~/backups/diskuse/disk_usage.txt
du -h > > ~/backups/diskuse/disk_usage.txt
echo "List of Open Files by User:" \n > ~/backups/openlist/open_list.txt
lsof /dev/null >/backups/openlist/open_list.txt
echo "Disk Space Statistics:" \n > ~/backups/freedisk/free_disk.txt
df -h > ~/backups/freedisk/free_disk.txt

