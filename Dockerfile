# Use uma imagem base leve do Linux, como Alpine
FROM alpine:latest

# Diretório de trabalho
WORKDIR /app

# Instale o utilitário git
RUN apk --no-cache add git

# Clone o repositório do GitHub para /tmp
RUN git clone https://github.com/rudival591/teste.git /tmp

# Mova o arquivo teste.sh para o diretório de trabalho
RUN mv /tmp/teste/teste.sh .

# Definir permissões de execução para o script
RUN chmod +x teste.sh

# Comando padrão para executar o script
CMD ["./teste.sh"]

