curl --include --request POST http://localhost:3000/projects \
  --header "Content-Type: application/json" \
  --data '{
    "project": {
      "name": "test Project",
      "genre": "dance"
    }
  }'
