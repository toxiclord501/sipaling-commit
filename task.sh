#!/bin/bash

arr[0]="bot: 👋 Hello Github!"
arr[1]="bot: 🥳 Yeayyy!"
arr[2]="bot: 😬 Working from github."
arr[3]="bot: 👨‍💻 Work, work, work!"
arr[4]="bot: 😪 Hufft..."
arr[5]="bot: 😎 I'm working for my master!"
arr[6]="bot: 🙄 Running task, again."
arr[7]="bot: 👻 Thanks master."

rand=$[$RANDOM % ${#arr[@]}]
d=`date '+%Y-%m-%dT%H:%M:%SZ'`

echo "## 🤔 LAST UPDATED AT: ${d}" > update.md

git config --local user.email "wahyuamri501@gmail.com"
git config --local user.name "toxiclord501"
git commit -am "${arr[$rand]} (at ${d})"
