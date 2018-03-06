#!/bin/bash
echo "CONVERSATION_SERVICE=$CONVERSATION_SERVICE"
export CONVERSATION_PASSWORD=$(echo "$CONVERSATION_SERVICE" | jq -r '.password')
export CONVERSATION_USERNAME=$(echo "$CONVERSATION_SERVICE" | jq -r '.username')
export CONVERSATION_URL=$(echo "$CONVERSATION_SERVICE" | jq -r '.url')
echo "CONVERSATION_USERNAME: $CONVERSATION_USERNAME"
echo "CONVERSATION_PASSWORD: $CONVERSATION_PASSWORD"
echo "CONVERSATION_URL:      $CONVERSATION_URL"
echo "WORKSPACE_ID:          $WORKSPACE_ID"
npm start