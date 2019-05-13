


docker build -t node-provided-lambda-v8.10.0 .
docker run --rm node-provided-lambda-v8.10.0 cat /tmp/node-v8.10.0.zip > ./layer.zip
