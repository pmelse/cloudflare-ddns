#!/bin/bash
# you can find the below values from https://www.cloudflare.com/a/overview/
# auth key is the global api key
# zone id you can find on the overviewpage
auth_key=000000000000abcdef
zone_id=000000000000000abcdef
email="yourcloudflareemail@example.com"


declare -a curlArgs=('-H' "X-Auth-Email: $email" '-H' "X-Auth-Key: $auth_key" )



curl -X GET "https://api.cloudflare.com/client/v4/zones/${zone_id}/dns_records?type=A"  "${curlArgs[@]}" 2>&1 
echo ""
echo "From the above output, you'll want the zone, and id for the domains you want to update via ddns"
echo "next, edit update_ip.sh with the relevant values"
