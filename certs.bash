# build & run
docker build -t es_for_cert .
docker run --name es_for_cert -v certs:/usr/share/elasticsearch/config/certs es_for_cert

# 鍵をローカルにコピーし展開
mkdir -p config/certs
docker cp es_for_cert:/usr/share/elasticsearch/config/certs/certs.zip config/certs/certs.zip
docker cp es_for_cert:/usr/share/elasticsearch/config/certs/ca.zip config/certs/ca.zip
unzip config/certs/ca.zip -d config/certs
unzip config/certs/certs.zip -d config/certs
