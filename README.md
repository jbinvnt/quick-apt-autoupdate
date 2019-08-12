# quick-apt-autoupdate
 Simple shell script to automatically run updates using apt
## Operation
This script provides a simple way to install updates in Debian or Ubuntu using the apt package manager. It will create `updatelog.txt` to store the results of update operations.
## Preparation
Make the script executable:
```
sudo chmod +x update.sh
```
and then run it:
```
sudo bash update.sh
```
## Automatic execution
You also can set the script to run automatically using:
```
sudo crontab -e
```
and then run it every week by adding the line:
```
0 7 * * 1 cd /path/to/file/ && ./update.sh
```
The above configuration example runs the script at 7am every week. To modify the time/frequency of execution, change the values before the `cd` command.
