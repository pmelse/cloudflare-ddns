= Clouldflare ddns update script

This script updates your cloudflare A records to your external ip address.

== Instructions
- login to cloudflare, create your a records.
- open get_records.sh and grab the api info needed from your account
- run the get_records.sh script to get the id's of your a records
- configure and run update_ip.sh to update your a records
- run the script every 5/10 minutes with cron to keep your ip up to date

== Special Thanks
- the dude who runs icanhazip.com, which we use to lookup external ip
  - https://major.io/icanhazip-com-faq/
- the free tier of cloudflare, to which I am grateful.
