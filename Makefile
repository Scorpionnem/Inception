all:
	mkdir -p /home/inception/data
	mkdir -p /home/inception/data/mariadb
	mkdir -p /home/inception/data/wordpress
	docker compose -f srcs/docker-compose.yml up -d

re: fclean all

clean: stop
	rm -rf /home/inception/data

fclean: clean
	docker system prune -af

stop:
	docker compose -f srcs/docker-compose.yml down

.PHONY: all re clean fclean stop
