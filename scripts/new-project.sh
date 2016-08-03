curl --include --request POST http://localhost:3000/projects \
  --header "Content-Type: application/json" \
  --data '{
    "project": {
      "name": "test Project",
      "genre": "dance"
    }
  }'

  curl --include --request PATCH http://localhost:3000/projects/2 \
    --header "Content-Type: application/json" \
    --data '{
      "project": {
        "profile_id": 1,
      }
    }'
