FROM php:8.2-cli

# Copia os arquivos para o diretório root do Apache
COPY . /var/www/html/

# Permissões (opcional dependendo do host)
RUN php build.php

RUN chown -R www-data:www-data /var/www/html

# Ativa o mod_rewrite se precisares futuramente
RUN a2enmod rewrite

# Exemplo: suponha que o build gere os arquivos na pasta /app/dist
CMD ["echo", "Build completo. Arquivos estão na pasta /app/dist"]

EXPOSE 80
