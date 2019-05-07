

set NODE_VERSION=8.10.0
docker build --build-arg %NODE_VERSION% -t node-provided-lambda-v8.10.0 .
docker run --rm node-provided-lambda-v8.10.0 cat /tmp/node-v%NODE_VERSION%.zip > ./layer.zip
