# rm -rf alist* #Uncomment this line to update
if [ ! -f "alist" ];then
  curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
  tar -zxvf alist.tar.gz
  rm -f alist.tar.gz
else
  if [ ! -f "data.db2" ];then
  cp data.db ../data.db
  cp data.db-shm ../data.db-shm
  cp data.db-wal ../data.db-wal
  cp data.db data.db2
  #rm -f data.db
  sed -i "s#data\\/data.db#..\\/data.db#g" ./data/config.json
  fi
fi
./alist server --no-prefix
