#!/bin/bash
auth_key=000000000000abcdef
zone_id=000000000000000abcdef
email="yourcloudflareemail@example.com"

domain1="example.com"
domain1_id=837364abcdef
domain2="subdomain.example.com"
domain2_id=2739178474932abcdef

declare -a curlArgs=('-H' "X-Auth-Email: $email" '-H' "X-Auth-Key: $auth_key" '-H' "Content-Type: application/json"  )

yolo=$(curl -s icanhazip.com/s)
echo "external IP detected as:${yolo}"
 
domain1values=$(< <(cat <<EOF
{
  "type":"A",
  "name":"$domain1",
  "content":"$yolo"
}
EOF
))
domain2values=$(< <(cat <<EOF
{
  "type":"A",
  "name":"$domain2",
  "content":"$yolo"
}
EOF
))


echo $payload
echo ""
echo "UPDATING $domain1"
curl -X PUT "https://api.cloudflare.com/client/v4/zones/${zone_id}/dns_records/$domain1_id" "${curlArgs[@]}" --data "$domain1values"
echo ""
echo "UPDATING $domain2"
curl -X PUT "https://api.cloudflare.com/client/v4/zones/${zone_id}/dns_records/$domain2_id" "${curlArgs[@]}" --data "$domain2values"
echo ""

