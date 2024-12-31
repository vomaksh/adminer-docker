FROM php:8.3

RUN apt-get update && apt-get install --no-install-recommends -y libpq-dev

RUN docker-php-ext-install mysqli pdo pdo_mysql pgsql pdo_pgsql && docker-php-ext-enable pdo_mysql pdo_pgsql

RUN curl -fsSL "https://github.com/adminerevo/adminerevo/releases/download/v4.8.4/adminer-4.8.4.php" -o /var/www/html/index.php
RUN mkdir -p /var/www/html/plugins
RUN curl -fsSL "https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/plugin.php" -o /var/www/html/plugins/plugin.php
RUN curl -fsSL "https://github.com/adminerevo/adminerevo/releases/download/v4.8.4/editor-4.8.4.php" -o /var/www/html/plugins/editor.php
RUN curl -fsSL "https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/edit-calendar.php" -o /var/www/html/plugins/edit-calendar.php
RUN curl -fsSL "https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/tables-filter.php" -o /var/www/html/plugins/tables-filter.php
RUN curl -fsSL "https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/designs.php" -o /var/www/html/plugins/designs.php
RUN curl -fsSL "https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/edit-calendar.php" -o /var/www/html/plugins/edit-calendar.php
RUN curl -fsSL "https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/pretty-json-column.php" -o /var/www/html/plugins/pretty-json-column.php
RUN curl -fsSL "https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/login-servers.php" -o /var/www/html/plugins/login-servers.php

CMD [ "php", "-S", "[::]:8080", "-t", "/var/www/html" ]
