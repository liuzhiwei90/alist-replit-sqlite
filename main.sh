# rm -rf alist* #Uncomment this line to update
if [ ! -f "alist" ];then
  curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
  tar -zxvf alist.tar.gz
  rm -f alist.tar.gz
else
  if [ ! -f "data.db2" ];then
  cp data.db ../data.db
  cp data.db data.db2
  #rm -f data.db
  sed -i "s#data\\/data.db#..\\/data.db#g" ./data/config.json
  fi
fi

export pwd=`pwd`

cd ..
if [ ! -f "data.db" ];then
  curl -L $url_db -o data.db
  curl -L $url_db-shm -o data.db-shm
  curl -L $url_db-wal -o data.db-wal
fi
cd $pwd

./alist server --no-prefix
