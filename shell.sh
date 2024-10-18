docker compose run --rm app bundle init

docker compose run --rm app bundle install

docker compose build

docker compose run --rm app bundle exec ruby app.rb

docker compose run --rm app rails new . --force --no-deps --database=mysql
