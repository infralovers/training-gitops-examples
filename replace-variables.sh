#!/bin/sh

# Replace <ENV-USER-ID>
find deployment* -type f -exec sed -i -e "s/<ENV-USER-ID>/$USER_ID/g" {} \;

# Replace <ENV-ANIMAL>
find deployment* -type f -exec sed -i -e "s/<ENV-ANIMAL>/$ANIMAL/g" {} \;

# Replace <ENV-GITLAB-DOMAIN>
find deployment* -type f -exec sed -i -e "s/<ENV-GITLAB-DOMAIN>/$GITLAB_DOMAIN/g" {} \;
