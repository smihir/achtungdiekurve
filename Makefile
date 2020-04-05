.PHONY: heroku-deploy
heroku-deploy:
	curl https://raw.githubusercontent.com/smihir/achtungdiekurve/master/index.html -s -O

.PHONY: heroku-deploy-local
heroku-deploy-local:
	mvn -X clean compile assembly:single
	heroku local
