curl --include --request POST http://localhost:3000/profiles \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "location": "Boston",
      "biography": "no"
    }
  }'
