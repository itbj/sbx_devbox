# Setting up DevBox Sync
To enable updates to the DevBox between gold image locks, add the following to the `~/.bash_profile` or `~/.bashrc` file of the `developer` user on the sandbox.  

This will download the script [`devbox_sync.sh`](devbox_sync.sh) from this repo and run it.  If the `SYNC_VERSION` on the DevBox differs from that in the script, it will execute the needed updates.  

```bash
echo "Checking if any updates are needed."
echo "If updates are needed, it may take a few minutes to complete."
curl https://raw.githubusercontent.com/DevNetSandbox/sbx_devbox/master/tools/devbox_sync.sh \
  -o ~/devbox_sync.sh  >> sync_log.txt 2>&1
chmod +x ~/devbox_sync.sh >> sync_log.txt 2>&1
~/devbox_sync.sh >> sync_log.txt 2>&1
rm devbox_sync.sh
clear
```
