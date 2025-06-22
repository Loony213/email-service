FROM php:8.2-cli

RUN apt-get update && apt-get install -y \
    unixodbc \
    gnupg \
    curl \
    apt-transport-https \
    libodbc1 \
    libssl-dev \
    && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list \
    && apt-get update \
    && ACCEPT_EULA=Y apt-get install -y msodbcsql18 unixodbc-dev \
    && docker-php-ext-install pdo pdo_odbc

COPY cambiar_email.php /var/www/html/
CMD php -S 0.0.0.0:8080 -t /var/www/html
