all :
	@mkdir -p /home/miroka/mariadb/ /home/miroka/wordpress/
	@docker-compose -f srcs/docker-compose.yml up -d --build

clean :
	@docker-compose -f srcs/docker-compose.yml down

fclean : clean
	@docker system prune -af
	rm -rf /home/miroka/mariadb/ /home/miroka/wordpress/

re : clean all