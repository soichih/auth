tag=1.4.13

docker build -t soichih/auth ..
if [ ! $? -eq 0 ]; then
    echo "failed to build"
    exit
fi
docker tag soichih/auth soichih/auth:$tag
docker push soichih/auth:$tag
