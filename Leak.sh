#!/bin/bash

while getopts "c:" opt; do
    case $opt in
        c) TARGET="$OPTARG" ;;
        *) echo "Usage: $0 -c <CIDR_or_IP>" && exit 1 ;;
    esac
done

mkdir -p Leakix
cd Leakix || exit

get_ips_in_cidr() {
    local cidr="$1"
    ipcalc -n "$cidr" | grep "HostMin" | awk '{print $2}' | \
    while read -r ip; do
        for i in {1..254}; do
            new_ip="${ip%.*}.$i"
            echo "$new_ip"
        done
    done
}

Main() {
    if [[ $TARGET =~ / ]]; then
        for target_ip in $(get_ips_in_cidr "$TARGET"); do
            echo "Checking ${target_ip}..."
            result=$(curl -s "https://leakix.net/host/${target_ip}")
            if echo -e "$result" | grep -q "No record"; then
                echo -e "\e[1;32m[+] No Record for ${target_ip}\e[0m"
            else
                echo -e "\e[1;31m[+] Found for ${target_ip}\e[1;0m"
                echo "$result" > "${target_ip}_result.txt"
            fi
        done
    else
        echo "Checking ${TARGET}..."
        result=$(curl -s "https://leakix.net/host/${TARGET}")
        if echo "$result" | grep -q "No record"; then
            echo "[+] No Record for ${TARGET}"
        else
            echo "[+] Found for ${TARGET}"
            echo "$result" > "${TARGET}_result.txt"
        fi
    fi
}

Main

