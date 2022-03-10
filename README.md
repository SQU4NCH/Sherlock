# Sherlock

O Script realiza uma pesquisa utilizando o mecanismo de busca avançada do Google e faz o download de todos os arquivos no formato que foi solicitado, em seguida faz uma análise dos metadados de todos os arquivos encontrados

## Modo de uso

./Sherlock.sh [dominio alvo] [formato arquivo]

#### Exemplo

./Sherlock.sh tesla.com pdf

### Requisitos

Para que o Script funcione corretamente é necessário fazer a instalação de dois programas:

Lynx - Para navegar na web através do terminal

``` # apt install lynx ```

Exiftool - Para extrair os metadados dos arquivos

``` # apt install exiftool ```
 
