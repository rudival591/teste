# Use uma imagem base leve do Linux, como Alpine
FROM alpine:latest

# Diretório de trabalho
WORKDIR /app

# Copiar os arquivos do repositório para o contêiner
COPY . .

# Garantir que o arquivo teste.sh esteja no diretório correto
RUN mv tmp/teste.sh .

# Definir permissões de execução para o script
RUN chmod +x teste.sh

# Comando padrão para executar o script
CMD ["./teste.sh"]

