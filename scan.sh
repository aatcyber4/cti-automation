#!/bin/bash

echo "CTI Scan Target: $TARGET"
echo "========================"


echo ""

echo "Shodan DNS Resolve"
curl -s https://api.shodan.io/dns/resolve?hostnames=$TARGET\&key=$SHODAN_API_KEY

IP=$(curl -s https://api.shodan.io/dns/resolve?hostnames=$TARGET\&key=$SHODAN_API_KEY | jq -r '.[]')

echo ""
