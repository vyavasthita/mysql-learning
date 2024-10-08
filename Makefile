all: stop clean run

stop:
	docker compose stop

clean:
	docker compose stop
	docker container prune -f
	docker image prune -f
	docker network prune -f

run:
	docker compose up -d --build --remove-orphans

ps:
	docker compose ps -a