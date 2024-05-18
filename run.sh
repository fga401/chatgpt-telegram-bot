### usage: ./run.sh <.env file path>
project_path="$(dirname "$(readlink -f "$0")")"
source "$project_path/venv/bin/activate"
if [ -n "$1" ]; then
  mv "$1" "$project_path/.env"
fi
python3 "$project_path/bot/main.py"