# rm -rf alist* #Uncomment this line to update
if [ ! -f "alist" ];then
  curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
  tar -zxvf alist.tar.gz
  rm -f alist.tar.gz
fi
./alist server --no-prefix

if [ ! -f "data.db" ];then
  cp data.db ../data.db
  rm -f data.db
  sed -i "s#data\\/data.db#..\\/data\\/data.db#g" ./data/config.json
fi
