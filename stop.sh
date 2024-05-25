docker container ls -f label=gpt --format "{{.ID}}" | xargs -I {} docker contain
er stop {}
