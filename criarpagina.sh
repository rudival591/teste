#!/bin/bash

# Nome do diretório
diretorio="teste"

# Nome do arquivo da página
pagina="index.html"

# Diretório padrão do Apache2 no Debian/Ubuntu
diretorio_apache="/var/www/html"

# Caminho completo do diretório
caminho_diretorio="$diretorio_apache/$diretorio"

# Caminho completo do arquivo
caminho_completo="$caminho_diretorio/$pagina"

# Conteúdo da página
conteudo="<html><head><title>Teste</title></head><body><h1>Teste Testando</h1></body></html>"

# Criar diretório se não existir
mkdir -p "$caminho_diretorio"

# Escrever conteúdo no arquivo
echo "$conteudo" > "$caminho_completo"

# Reiniciar o Apache2 para aplicar as alterações (usando systemctl)
systemctl restart apache2

echo "Página criada com sucesso em: $caminho_completo"
