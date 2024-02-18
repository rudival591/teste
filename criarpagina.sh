# Use a imagem oficial do Nginx como base
FROM nginx:latest

# Nome do diretório
ENV DIRETORIO teste

# Nome do arquivo da página
ENV PAGINA index.html

# Diretório padrão do Nginx
ENV DIRETORIO_NGINX /usr/share/nginx/html

# Caminho completo do diretório
ENV CAMINHO_DIRETORIO ${DIRETORIO_NGINX}/${DIRETORIO}

# Caminho completo do arquivo
ENV CAMINHO_COMPLETO ${CAMINHO_DIRETORIO}/${PAGINA}

# Conteúdo da página
ENV CONTEUDO "<html><head><title>Teste</title></head><body><h1>Teste Testando</h1></body></html>"

# Criar diretório se não existir
RUN mkdir -p ${CAMINHO_DIRETORIO}

# Escrever conteúdo no arquivo
RUN echo "${CONTEUDO}" > "${CAMINHO_COMPLETO}"

# Reiniciar o Nginx (usando serviço supervisor, pois systemctl não está disponível em containers)
CMD service nginx restart && tail -f /dev/null

