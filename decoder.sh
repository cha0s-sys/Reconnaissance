#!/bin/bash
clear
hash=$1
wordlist=$2
[[ -e $wordlist ]] || wordlist=/usr/share/seclists/Passwords/probable-v2-top12000.txt

banner() {
echo ""
echo -e "\e[1;32m
        ##################################
        # Simple D3c0d3r By cx405_5y5    #
        #                                #
        ################   ###############
\e[0m"
echo -e "${red}################################################${reset}"
}

if [[ -z $hash ]];then
banner
echo -e "\e[7;32mUsage :: ./decoder.sh {hash} {wordlist}\e[0m"
echo ""
echo -e "\e[1;32mIf No input file was provided,default wordlist will be used\e[0m"
exit 1
else
echo ""
fi


md5 () {
echo ""
echo -e "\e[1;32m[::]Cracking Decoded Hash ---\e[0m"
while IFS= read -r unhash;do
hashed=$(echo $unhash | md5sum | awk '{print $1}')
hash=$(echo $hash | tr [A-Z] [a-z])
if [[ $hashed == $hash ]];then
echo ""
echo -e "\e[1;32m[::]Cracked MD5 Hash Found :: "
echo $hash "::" $unhash

exit 1
else
continue
fi
done < $wordlist

}

sha256 () {
echo ""
echo -e "\e[1;32m[::]Cracking Decoded Hash ---\e[0m"
while IFS= read -r unhash;do

hashed=$(echo $unhash | sha256sum | awk '{print $1}')
hash=$(echo $hash | tr [A-Z] [a-z])
if [[ $hashed == $hash ]];then
echo ""
echo -e "\e[1;32m[::]Cracked SHA-256 Hash Found :: "
echo $hash "::" $unhash

exit 1
else
continue
fi
done < $wordlist
}

sha512 () {
echo ""
echo -e "\e[1;32m[::]Cracking Decoded Hash ---\e[0m"
while IFS= read -r unhash;do
hashed=$(echo $unhash | sha512sum | awk '{print $1}')
hash=$(echo $hash | tr [A-Z] [a-z])
if [[ $hashed == $hash ]];then
echo ""
echo -e "\e[1;32m[::]Cracked sha-512 Hash Found :: "
echo $hash "::" $unhash

exit 1
else
continue
fi
done < $wordlist
}

sha1 () {
echo ""
echo -e "\e[1;32m[::]Cracking Decoded Hash ---\e[0m"
while IFS= read -r unhash;do

hashed=$(echo $unhash | sha1sum | awk '{print $1}')
hash=$(echo $hash | tr [A-Z] [a-z])
if [[ $hashed == $hash ]];then
echo ""
echo -e "\e[1;32m[::]Cracked sha-1 Hash Found :: "
echo $hash "::" $unhash

exit 1
else
continue
fi
done < $wordlist
}

sha224 () {
echo ""
echo -e "\e[1;32m[::]Cracking Decoded Hash ---\e[0m"
while IFS= read -r unhash;do
hashed=$(echo $unhash | sha224sum | awk '{print $1}')
hash=$(echo $hash | tr [A-Z] [a-z])
if [[ $hashed == $hash ]];then
echo ""
echo -e "\e[1;32m[::]Cracked sha-224 Hash Found :: "
echo $hash "::" $unhash

exit 1
else
continue
fi
done < $wordlist
}

sha384 () {
echo ""
echo -e "\e[1;32m[::]Cracking Decoded Hash ---\e[0m"
while IFS= read -r unhash;do
hashed=$(echo $unhash | sha384sum | awk '{print $1}')
hash=$(echo $hash | tr [A-Z] [a-z])
if [[ $hashed == $hash ]];then
echo ""
echo -e "\e[1;32m[::]Cracked sha-384 Hash Found :: "
echo $hash "::" $unhash

exit 1
else
continue

fi
done < $wordlist
}

Base64 () {
echo ""
echo -e "\e[1;32m[::]Cracking Decoded Hash ---\e[0m"
cracked=$(echo $hash | base64 -d)
if [[ -z $cracked ]];then
echo ""
echo "Hash Not Found :: MayBe this is not a base64 Decoded hash"
else
echo ""
echo -e "\e[1;32m[::]Cracked Base64 Hash Found :: "
echo $hash "::" $cracked
fi

}

urlencode() {
    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf "$c" ;;
            *) printf '%%%02X' "'$c" ;;
        esac
    done
}



Option () {

echo -e "\e[1;31m
(1) md5
(2) sha256
(3) sha512
(4) sha384
(5) sha1
(6) sha224
(7) base64
(8) urlencoder
(9) urldoubleEncoder \e[0m"

read -p $'\e[5;32m[::]Choose an option :: \e[0m'  Opts
case $Opts in
1)
md5
;;
2)
sha256
;;
3)
sha512
;;
4)
sha384
;;
5)
sha1
;;
6)
sha224
;;
7)
Base64
;;
8)
urlencode "$hash"
;;
9)
first=$(urlencode "$hash")
urlencode "$first"
;;

esac

}
clear
banner
Option
​
