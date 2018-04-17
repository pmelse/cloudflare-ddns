h1 clouldflare ddns update script

This script updates your cloudflare A records to your external ip address.

h2 instructions
- login to cloudflare, create your a records.
- open get_records.sh and grab the api info needed from your account
- run the get_records.sh script to get the id's of your a records
- configure and run update_ip.sh to update your a records
- run the script every 5/10 minutes with cron to keep your ip up to date
