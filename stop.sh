docker container ls -f label=gpt --format "{{.ID}}" | xargs -I {} docker container stop {}
