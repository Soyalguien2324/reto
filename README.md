### Reto
```
sudo apt git docker-compose -y && clear
git clone https://github.com/Soyalguien2324/reto.git
cd reto
sudo cat reto.tar | docker import - ubuntu:latest
sudo docker run -it reto /bin/bash
```
```
sudo docker run -it reto /bin/bash
```
