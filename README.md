# rsync_backup

Before start, make sure you have a id_rsa.pub generated, in case you do not have following [this](https://help.github.com/es/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)


the script setup_backup.sh will setup ssh key in the remote server, perform a first sync and create backup.sh


example run:

```
$ ./setup_buckup.sh
insert your-user@your-hostname : user@xxx.xxx.xxx.xxx <-- insert remote host
insert id_rsa.pub file path [~/.ssh/id_rsa.pub]: a/file/path <--- if not enter anything use the default location
here it will ask you for the ssh credentials
you enter -> user@xxx.xxx.xxx.xxx
id_rsa.pub added to remote  host
insert path of the local folder to be sync : /full/path/of/folder 
insert path of the remote folder : /full/path/to/folder
starting the file transfer...

.....list of files transfered.

file transfer finish
creating backup.sh
```

After the script finish you will find a new script backup.sh this is the one you will run for future backup.
