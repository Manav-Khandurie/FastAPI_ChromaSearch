#/bin/bash
cd test

curl -X 'POST' 'http://127.0.0.1:8000/ingest' -H 'accept: application/json' -H 'Content-Type: multipart/form-data' -F 'file=@document.txt'
curl -X 'POST' 'http://127.0.0.1:8000/ingest' -H 'accept: application/json' -H 'Content-Type: multipart/form-data' -F 'file=@document1.txt'
curl -X 'POST' 'http://127.0.0.1:8000/ingest' -H 'accept: application/json' -H 'Content-Type: multipart/form-data' -F 'file=@random.txt'
curl -X 'POST' 'http://127.0.0.1:8000/ingest' -H 'accept: application/json' -H 'Content-Type: multipart/form-data' -F 'file=@random2.txt'


curl -X 'POST' 'http://127.0.0.1:8000/query' -H 'accept: application/json' -H 'Content-Type: application/json' -d '{
  "query": "kindoff",
  "top_k": 2
}'

curl -X 'POST' 'http://127.0.0.1:8000/query' -H 'accept: application/json' -H 'Content-Type: application/json' -d '{
  "query": "sample text",
  "top_k": 3
}'

