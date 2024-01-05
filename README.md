# Grafana 10.2 + Prometheus Script de Instalação

Este repositório contém um script para facilitar a instalação do Grafana 10.2.2-1.x86_64 em sistemas Linux baseados no Fedora Linux. O script automatiza o processo de instalação, configurando todos os requisitos necessários.

## Instalação

Siga estas etapas para instalar o Grafana 10.2.2-1.x86_64 em seu sistema:

1. **Inatale o GIT:**
   ```
   sudo dnf install git
   ```

1. **Clone este repositório:**
   ```
   git clone https://github.com/eliezershell/grafana10-2.git
   ```

2. **Execute o script de instalação:**
   ```
   cd grafana10-2; chmod +x instalador_grafana10.2.sh; ./instalador_grafana10.2.sh
   ```

2. **Durante a execução do script, um arquivo de texto será automaticamente aberto; para concluir a instalação, salve o arquivo com este nome:**
   ```
   /etc/systemd/system/grafana-server.service.d/override.conf
   ```
   
## Notas Adicionais

- **Testado no Amazon Linux 2023:** Este script foi testado e aprovado no Amazon Linux 2023.
  
- **Suporte a Outras Distribuições:** Embora tenha sido testado no Amazon Linux 2023, este script também deve funcionar em outras distribuições baseadas no Fedora.

- **Problemas e Suporte:** Se encontrar problemas durante o processo de instalação ou precisar de suporte, sinta-se à vontade para abrir uma [issue](https://github.com/eliezershell/grafana10-2/issues) neste repositório.

