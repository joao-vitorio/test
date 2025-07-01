# Usa uma imagem base do PHP (sem Apache)
FROM php:8.2-cli

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos da aplicação para dentro do container
COPY . .

# Executa o script de build (ajuste o nome conforme o teu projeto)
# Exemplo: build.php é um script que gera os arquivos finais
RUN php build.php

# Define o diretório de saída (útil para plataformas que esperam uma pasta com o build)
# Exemplo: suponha que o build gere os arquivos na pasta /app/dist
CMD ["echo", "Build completo. Arquivos estão na pasta /app/dist"]
