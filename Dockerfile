# Use uma imagem base leve do Linux, como Alpine
FROM alpine:latest

# Diretório de trabalho
WORKDIR /app

# Copiar os arquivos do repositório para o contêiner
COPY . .

# Definir permissões de execução para o script
RUN chmod +x tmp/teste.sh

# Comando padrão para executar o script
CMD ["./tmp/teste.sh"]
