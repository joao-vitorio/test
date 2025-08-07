FROM php:8.2-apache

# Copia os arquivos para o diretório root do Apache
COPY . /var/www/html/

# Permissões (opcional dependendo do host)
RUN chown -R www-data:www-data /var/www/html

# Ativa o mod_rewrite se precisares futuramente
RUN a2enmod rewrite

EXPOSE 80
