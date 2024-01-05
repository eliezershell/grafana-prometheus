#!/bin/bash
#
#---Instalação do Grafana---
wget -O gpg.key https://rpm.grafana.com/gpg.key
sudo rpm --import gpg.key
sudo touch /etc/yum.repos.d/grafana.repo
sudo sh -c 'echo "[grafana]
name=grafana
baseurl=https://rpm.grafana.com
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://rpm.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt[grafana]
name=grafana
baseurl=https://rpm.grafana.com
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://rpm.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt
exclude=*beta*" > /etc/yum.repos.d/grafana.repo'
sudo dnf install grafana
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl status grafana-server
sudo systemctl enable grafana-server.service
sudo systemctl edit grafana-server.service
echo "CapabilityBoundingSet=CAP_NET_BIND_SERVICE" | sudo tee -a /etc/systemd/system/grafana-server.service.d/override.conf
echo "AmbientCapabilities=CAP_NET_BIND_SERVICE" | sudo tee -a /etc/systemd/system/grafana-server.service.d/override.conf
echo "PrivateUsers=false" | sudo tee -a /etc/systemd/system/grafana-server.service.d/override.conf
sudo systemctl daemon-reload
sudo systemctl restart grafana-server
#
#---Instalação do Prometheus---
cd
wget https://github.com/prometheus/prometheus/releases/download/v2.45.2/prometheus-2.45.2.linux-arm64.tar.gz
tar xvf prometheus-2.45.2.linux-arm64.tar.gz
cd prometheus-2.45.2.linux-arm64/
#espaço para mudar os argumentos do arquivo de configuração
tee prometheus.yml s/asdfsdf/asdfasdf/g 
#
./prometheus --config.file=./prometheus.yml
