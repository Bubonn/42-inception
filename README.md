# 42-inception

Ce projet consiste à nous faire mettre en place une mini-infrastructure de différents
services en suivant des règles spécifiques. Nous devons obligatoirement utiliser docker-compose.

J'ai du mettre en place :

- Un container Docker contenant NGINX avec TLSv1.2 ou TLSv1.3 uniquement.
- Un container Docker contenant WordPress + php-fpm (installé et configuré) uniquement sans nginx.
- Un container Docker contenant MariaDB uniquement sans nginx.
- Un volume contenant votre base de données WordPress.
- Un second volume contenant les fichiers de votre site WordPress.
- Un docker-network qui fera le lien entre vos containers
