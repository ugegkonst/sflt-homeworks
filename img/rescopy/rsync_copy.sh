rsync -ac --delete /home/george/ /tmp/backup

if [ "$?" -eq 0 ]; then
	logger "Backup is OK"
else	logger "Backup is failed"
fi
