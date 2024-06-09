# how to use

setup your elastic & kibana environments.
```bash
vi .env
```

build container and post kibana password.
```bash
chmod +x *.bash
sudo ./certs.bash
sudo docker compose up -d
sudo ./kibana_password.bash
```