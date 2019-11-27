#!/usr/bin/env bash
read -p "insert your-user@your-hostname :" user_host
read -p "insert id_rsa.pub file path [~/.ssh/id_rsa.pub]:" id_rsa_file_path
id_rsa_file_path=${id_rsa_file_path:-~/.ssh/id_rsa.pub}
echo "you enter -> $user_host"
cat $id_rsa_file_path | ssh  $user_host "cat >> .ssh/authorized_keys"

echo "id_rsa.pub added to remote  host"

read -p "insert path of the local folder to be sync :" local_folder_path
read -p "insert path of the remote folder :" remote_folder_path

echo "starting the file transfer..."

rsync -r -a -v -e ssh --delete ${local_folder_path} ${user_host}:${remote_folder_path}

echo "file transfer finish"

echo "creating backup.sh"
echo rsync -r -a -v -e ssh --delete ${local_folder_path} ${user_host}:${remote_folder_path} > backup.sh
