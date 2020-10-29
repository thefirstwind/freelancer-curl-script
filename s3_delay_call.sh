delayed_curl() {
  local url=$1
  local timestamp=$2
  local server_id=$3
  local seconds=$4
  local output_file=/tmp/curl-response_"$timestamp"_"$server_id".txt

  
  sleep $seconds
  curl --silent -X POST -H 'Content-type:text/xml' -d @"./resources/$server_id.xml" -w "%{http_code}" -o "$output_file" "$url" > /dev/null 

  local http_code="500"
  local accord_response=""

  if test -f "$output_file"; then
    http_code=`cat $output_file | awk -F'[<>]' '/(ns2:accord)/ {print $3}'`
    accord_response=`cat $output_file | awk -F'[<>]' '/(ns2:Reference)/ {print $3}'`
  fi

  printf "%10s\t|\t%20s\t|\t%10s\t|\t%10s\t\n" "$server_id"  "server-$server_id.localhost" "$http_code" "$accord_response"
  
  
  
}

server_ids=(4501 4502 4503 4504 4505 4506)
delay_time=0.1

printf "\n%10s\t|\t%20s\t|\t%10s\t|\t%10s\t\n" "Server ID"  "Server Name" "code Statut" "Accord"
for server_id in "${server_ids[@]}"
do
  # echo $delay "server_id: $server_id"

  current_time=`date "+%Y%m%d%H%M%S"`
  domain=server-$server_id.localhost
  # echo "delayed_curl http://$domain/script.txt $current_time $server_id $delay_time &"
  delayed_curl http://server-$server_id.localhost/script.txt $current_time $server_id $delay_time 
done
