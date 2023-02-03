#!/bin/bash
set -xe
NAME=backup-bucket-sa
FULL_NAME="serviceAccount:$NAME@fm-labs-api-mvp.iam.gserviceaccount.com"
MEMBER_NAME="serviceAccount:$FULL_NAME"
gcloud iam service-accounts create $NAME
gcloud projects add-iam-policy-binding fm-labs-api-mvp \
    --member="$FULL_NAME" \
    --role="roles/storage.objectAdmin"
gcloud iam service-accounts keys create ./secret_key.json --iam-account $FULL_NAME

