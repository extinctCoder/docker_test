heroku config:set WEBSITE_URL=$(heroku info -a docker-test-007 -s | grep web_url | cut -d= -f2) -a docker-test-007
