### usage: ./run.sh <.env file path>
project_path="$(dirname "$(readlink -f "$0")")"
docker build -t chatgpt-telegram-bot "$project_path"
config=".env"
if [ -n "$1" ]; then
  config="$1"
fi
docker run -d --rm --env-file "$config" -l gpt chatgpt-telegram-bot
