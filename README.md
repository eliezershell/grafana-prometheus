# Grafana 10.2 + Prometheus 2.45 Script de Instalação

Este repositório contém um script para facilitar a instalação do Grafana 10.2 e do Prometheus 2.45 em sistemas Linux baseados no RHEL. O script automatiza o processo de instalação, configurando todos os requisitos necessários.

## Instalação

Siga estas etapas para instalar o Grafana + Prometheus em seu sistema:

1. **Inatale o GIT:**
   ```
   sudo dnf install git
   ```

1. **Clone este repositório:**
   ```
   git clone https://github.com/eliezershell/grafana-prometheus.git
   ```

2. **Execute o script de instalação:**
   ```
   cd grafana-prometheus; chmod +x instalador_grafana_prometheus.sh; ./instalador_grafana_prometheus.sh
   ```

2. **Durante a execução do script, um arquivo de texto será automaticamente aberto; para concluir a instalação, salve o arquivo com este nome:**
   ```
   /etc/systemd/system/grafana-server.service.d/override.conf
   ```

2. **Durante a execução do script, o segundo arquivo de texto será automaticamente aberto; para concluir a instalação altere as targets padrões para os endereços desejados, exemplo:**
   ```
   #Troque:
   - targets: ["localhost:9090"]
   #Por:
   - targets: ["192.168.0.1:9100, 192.168.0.2:9100"]
   ```
   
## Notas Adicionais

- **Testado no Amazon Linux 2023:** Este script foi testado e aprovado no Amazon Linux 2023.
  
- **Suporte a Outras Distribuições:** Embora tenha sido testado no Amazon Linux 2023, este script também deve funcionar em outras distribuições baseadas no Fedora.

- **Problemas e Suporte:** Se encontrar problemas durante o processo de instalação ou precisar de suporte, sinta-se à vontade para abrir uma [issue](https://github.com/eliezershell/grafana-prometheus/issues) neste repositório.

