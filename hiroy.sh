#!/usr/bin/env bash

YELLOW='\033[1;33m'

if [ ! -f tweet.key ]; then

    #MY_SCREEN_NAME=${screenname}
    #MY_LANGUAGE=${language}
    #CONSUMER_KEY=${consumerkey}
    #CONSUMER_SECRET=${consumersecret}
    #ACCESS_TOKEN=${accesstoken}
    #ACCESS_TOKEN_SECRET=${accesstokensecret}

    echo "Enter Your Screen Name:"
    read screenname
    echo "Enter Your Language (2 Char Code ex: US):"
    read language
    echo "Enter Consumer Key:"
    read consumerkey
    echo "Enter Secret Key:"
    read consumersecret
    echo "Enter Access Token:"
    read accesstoken
    echo "Enter Token Secret:"
    read accesstokensecret

    printf "\n${YELLOW}Creating api key file...\n\n"
    while read line
    do
        eval newline="$line\n"
        echo $newline >> tweet.key
    done < "./api-template.key"
fi

echo "Attempting to say hi to Roy...\n\n"

# Need help figuring out oauth in bash to post a tweet... I know there are libraries but I want to keep this light weight
# and just for posting a tweet right now

echo "Hi Roy"

