#!/bin/sh

if [ -n "$FIRESTORE_PORT" ]; then
  jq ".emulators.firestore.port = \"$FIRESTORE_PORT\"" ./firebase.json > /tmp/firebase.json
  mv /tmp/firebase.json firebase.json
  echo "Firestore port is set to $FIRESTORE_PORT"
fi

if [ -n "$PUBSUB_PORT" ]; then
  jq ".emulators.pubsub.port = \"$PUBSUB_PORT\"" ./firebase.json > /tmp/firebase.json
  mv /tmp/firebase.json firebase.json
  echo "Pubsub port is set to $PUBSUB_PORT"
fi

if [ -n "$UI_PORT" ]; then
  jq ".emulators.ui.port = \"$UI_PORT\"" ./firebase.json > /tmp/firebase.json
  mv /tmp/firebase.json firebase.json
  echo "UI port is set to $UI_PORT"
fi

echo "GCP project is set to $GCP_PROJECT"
firebase --project=$GCP_PROJECT emulators:start "$@"
