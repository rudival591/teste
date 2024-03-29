# Use uma imagem base leve do Linux, como Alpine
FROM alpine:latest

# Diretório de trabalho
WORKDIR /app

# Instale o utilitário git
RUN apk --no-cache add git

# Clone o repositório do GitHub para /srv1
RUN git clone https://github.com/rudival591/teste.git /srv1

# Mova o arquivo teste.sh para o diretório de trabalho
RUN mv /srv1/criarpagina.sh .

# Definir permissões de execução para o script
RUN chmod +x criarpagina.sh

# Comando padrão para executar o script
CMD ["./criarpagina.sh"]

