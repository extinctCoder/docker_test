testing

heroku config:set WEB_MEMORY=2048 -a docker-test-007

heroku config:set NODE_OPTIONS="--max_old_space_size=2560" -a docker-test-007

x
