# /bin/bash
rsync -ahW --delete-after --info=progress2 --bwlimit=0 --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/backups/*","/net/*"} / rsync://cebrail@Esekyuku:/root       
