#!/bin/bash

declare -a query=(
'"Apache" "Server at" "index of" org:"$org"'
'"nginx" "Welcome to nginx!" org:"$org"'
'"Microsoft-IIS" "IIS" "ASP.NET" org:"$org"'
'"lighttpd" "HTTP/1.1" org:"$org"'
'"Tomcat" "Apache Tomcat" org:"$org"'
'"MongoDB" "MongoDB shell" org:"$org"'
'"PostgreSQL" "PostgreSQL" "server closed the connection unexpectedly" org:"$org"'
'"MySQL" "MySQL" "Access denied for user" org:"$org"'
'"Redis" "Redis" org:"$org"'
'"Microsoft SQL Server" "version" org:"$org"'
'"Smart Camera" "model" "firmware" org:"$org"'
'"webcamXP" "webcam 7" org:"$org"'
'"IP Camera" "RTSP" "H.264" org:"$org"'
'"Smart Thermostat" "device" org:"$org"'
'"Smart Home" "connected" org:"$org"'
'"admin:admin" "root:root" "user:user" org:"$org"'
'"username:password" "login" "password" org:"$org"'
'"admin:password" "default" org:"$org"'
'"guest:guest" org:"$org"'
'"VNC" "RFB 003.008" org:"$org"'
'"FTP" "220" "vsftpd" "proftpd" org:"$org"'
'"Telnet" "Welcome to the Telnet server" org:"$org"'
'"SMB" "Microsoft" org:"$org"'
'"RDP" "Microsoft Remote Desktop" "port 3389" org:"$org"'
'"admin panel" "login" "dashboard" org:"$org"'
'"phpMyAdmin" "MySQL" "phpMyAdmin" "version" org:"$org"'
'"Jenkins" "Jenkins" "login" org:"$org"'
'"WordPress" "wp-admin" "login" org:"$org"'
'"cPanel" "Login" org:"$org"'
'"Amazon S3" "Bucket" "Access Denied" org:"$org"'
'"Azure Blob" "Container" "public access" org:"$org"'
'"Google Cloud Storage" "gs://" "Access Control" org:"$org"'
'"OpenStack" "Keystone" org:"$org"'
'"IBM Cloud" "public" org:"$org"'
'"Joomla!" "version" "vulnerable" org:"$org"'
'"WordPress" "version" "vulnerable" org:"$org"'
'"Drupal" "version" "vulnerable" org:"$org"'
'"phpBB" "version" "vulnerable" org:"$org"'
'"MediaWiki" "version" "vulnerable" org:"$org"'
'"OpenSSH" "banner" "version" org:"$org"'
'"SNMP" "community" "public" org:"$org"'
'"UPnP" "HTTP/1.1" org:"$org"'
'"Raspberry Pi" "model" org:"$org"'
'"Network Attached Storage" "NAS" org:"$org"'
'"Shellshock" "bash" "CVE-2014-6271" org:"$org"'
'"Heartbleed" "CVE-2014-0160" "OpenSSL" org:"$org"'
'"SMB" "CVE-2017-0144" "EternalBlue" org:"$org"'
'"Drupalgeddon" "CVE-2014-3704" org:"$org"'
'"Joomla" "CVE-2015-7297" org:"$org"'
'"filetype:pdf" "confidential" "sensitive" org:"$org"'
'"filetype:doc" "confidential" "sensitive" org:"$org"'
'"filetype:xls" "confidential" "sensitive" org:"$org"'
'"filetype:txt" "password" "credentials" org:"$org"'
'"filetype:sql" "dump" "database" org:"$org"'
'"HTTP/1.1" "Server" "nginx" org:"$org"'
'"HTTP/1.1" "Server" "Apache" org:"$org"'
'"HTTP/1.1" "Server" "Microsoft-IIS" org:"$org"'
'"SMTP" "220" org:"$org"'
'"POP3" "OK" org:"$org"'
'"X-Powered-By" "PHP" org:"$org"'
'"X-Content-Type-Options" "nosniff" org:"$org"'
'"Server: Apache" "mod_security" org:"$org"'
'"Server: nginx" "mod_security" org:"$org"'
'"Jenkins" "Jenkins is the leading open-source automation server" org:"$org"'
'"Grafana" "Grafana" org:"$org"'
'"ElasticSearch" "You’re not authorized to access this resource" org:"$org"'
'"Redis" "Redis" org:"$org"'
'"Router" "model" "firmware" org:"$org"'
'"Firewall" "model" "version" org:"$org"'
'"Switch" "model" "version" org:"$org"'
'"Smart Meter" "model" "firmware" org:"$org"'
'"vulnerable" "CVE" org:"$org"'
'"exposed" "sensitive" org:"$org"'
'"public" "access" "confidential" org:"$org"'
'"leak" "credentials" org:"$org"'
'"backup" "config" org:"$org"'
'"WordPress" "wp-json" org:"$org"'
'"Drupal" "user" "login" org:"$org"'
'"Magento" "version" org:"$org"'
'"Node.js" "Express" org:"$org"'
'"net:192.168.1.0/24" org:"$org"'
'"net:10.0.0.0/8" org:"$org"'
'"net:172.16.0.0/12" org:"$org"'
'"Swagger UI" "API documentation" org:"$org"'
'"swagger.json" org:"$org"'
'"openapi.json" org:"$org"'
'"api-docs" org:"$org"'
'"swagger" "version" org:"$org"'
'"REST API" "GET" org:"$org"'
'"REST API" "POST" org:"$org"'
'"REST API" "PUT" org:"$org"'
'"REST API" "DELETE" org:"$org"'
'"API" "application/json" org:"$org"'
'"GraphQL" "query" org:"$org"'
'"GraphQL" "mutation" org:"$org"'
'"GraphQL" "introspection" org:"$org"'
'"public API" "access" org:"$org"'
'"private API" "access" org:"$org"'
'"API Key" "access" org:"$org"'
'"API Token" "access" org:"$org"'
'"API secret" "access" org:"$org"'
'"Bearer" "token" org:"$org"'
'"OAuth" "access_token" org:"$org"'
'"JWT" "eyJ" org:"$org"'
'"Basic" "Auth" org:"$org"'
'"CVE-2017-12149" "API" "vulnerability" org:"$org"'
'"CVE-2019-11043" "PHP-FPM" "vulnerability" org:"$org"'
'"CVE-2020-11022" "React" "vulnerability" org:"$org"'
'"CVE-2020-26116" "API" "vulnerability" org:"$org"'
'"CVE-2021-22986" "F5" "API" org:"$org" '
'"X-Frame-Options" "DENY" org:"$org"'
'"Content-Security-Policy" "default-src" org:"$org"'
'"CORS" "Access-Control-Allow-Origin" org:"$org"'
'"X-Content-Type-Options" "nosniff" org:"$org"'
'"X-XSS-Protection" "1; mode=block" org:"$org"'
'"admin" "API" "dashboard" org:"$org"'
'"admin" "API" "login" org:"$org"'
'"admin" "API" "access" org:"$org"'
'"Rate Limit" "exceeded" org:"$org"'
'"Rate Limit" "too many requests" org:"$org"'
'"Rate Limit" "HTTP/429" org:"$org"'
'"Node.js" "Express" "API" org:"$org"'
'"Flask" "API" org:"$org"'
'"Django" "API" org:"$org"'
'"Spring" "REST" org:"$org"'
'"Ruby on Rails" "API" org:"$org"'
'"API v1" org:"$org"'
'"API v2" org:"$org"'
'"API v3" org:"$org"'
'"version" "API" org:"$org"'
'"API" "documentation" org:"$org"'
'"API" "endpoint" org:"$org"'
'"API" "service" org:"$org"'
'"Grafana" "login" org:"$org"'
'"Jira" "login" org:"$org"'
'"Apache" "server-status" org:"$org"'
'"Apache" "server-info" org:"$org"'
'"Swagger UI" "API documentation" org:"$org"'
'"swagger.json" org:"$org"'
'"openapi.json" org:"$org"'
'"api-docs" org:"$org"'
'"swagger" "version" org:"$org"'
'"Bearer" "token" org:"$org"'
'"OAuth" "access_token" org:"$org"'
'"JWT" "eyJ" org:"$org"'
'"Basic" "Auth" org:"$org"'
'"X-Frame-Options" "DENY" org:"$org"'
'"Content-Security-Policy" "default-src" org:"$org"'
'"CORS" "Access-Control-Allow-Origin" org:"$org"'
'"X-Content-Type-Options" "nosniff" org:"$org"'
'"X-XSS-Protection" "1; mode=block" org:"$org"'
'"Node.js" "Express" "API" org:"$org"'
'"Flask" "API" org:"$org"'
'"Django" "API" org:"$org"'
'"Spring" "REST" org:"$org"'
'"Ruby on Rails" "API" org:"$org"'
'"exposed" "sensitive" org:"$org"'
'"public" "access" "confidential" org:"$org"'
'"leak" "credentials" org:"$org"'
'"backup" "config" org:"$org"'

)

ORG () {
echo ""
read -p "[+] Enter Org :: " org

if [[ -z "$org" ]];then
echo -e "[+] Usage : $0 "
else
name=$(echo "$org" | cut -d " " -f1)
mkdir -p $PWD/shodanxx
mkdir -p $PWD/shodanxx/$name

for querys in "${query[@]}";do

shodanx custom -ra -r -to 5000 -cq '$querys' -o $PWD/shodanxx/$name/results.txt

done

cat $PWD/shodanxx/$name/results.txt | sort -u | anew $PWD/shodanxx/$name/allips.txt
fi
}

SUBS () {
echo ""
read -p "[+] Enter Subdomains :: " domain
if [[ -z "$domain" ]];then
echo -e "[+] Usage : $0 "
else
name=$(echo "$name" | cut -d " " -f1)
mkdir -p $PWD/shodanxx
mkdir -p $PWD/shodanxx/$name

#shodanx subdomain -d $domain -ra -to -r -fct ip -o $PWD/shodanxx/$name/subdomains.txt

shodanx ssl -sq ssl.cert.issuer.cn:$domain -ra -to 5000 -r -fct ip -o $PWD/shodanxx/$name/subdomains.txt
shodanx ssl -sq ssl.cert.subject.cn:$domain -ra -to 5000 -r -fct ip -o $PWD/shodanxx/$name/subdomains.txt
shodanx ssl -sq ssl.cert.subject.cn:*$domain -ra -to 5000 -r -fct ip -o $PWD/shodanxx/$name/subdomains.txt
fi

}

Option () {

echo -e "\e[1;31m
(1) subdomains
(2) org
(3) help \e[0m "

read -p $'\e[5;32m[::]Choose an option :: \e[0m' Opts
case $Opts in
1)
SUBS
;;
2)
ORG
;;
3)
help
;;
esac
}

Option
