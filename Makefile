all:
	@bash srcs/utils/create_dir_volumes.sh
	@docker compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env up -d

build:
	@docker compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env build

down:
	@docker compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env down

fclean:
	@docker stop $$(docker ps -a -q)
	@docker system prune -a -f
	@docker volume rm srcs_mariadb srcs_wordpress
	@bash srcs/utils/remove_dir_volumes.sh

re: fclean all

.PHONY: all build down fclean re
