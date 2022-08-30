up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose up -d --build

ps:
	docker compose ps

node:
	docker compose exec app sh

dev:
	docker compose exec app sh -c 'yarn dev'

deploy:
	git subtree push --prefix src/ heroku main

create:
	docker compose exec app sh -c 'yarn create nuxt-app . --overwrite-dir'