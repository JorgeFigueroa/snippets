https://devcenter.heroku.com/articles/heroku-cli

brew tap heroku/brew && brew install heroku. #macOS


heroku --version
heroku login
which heroku

git init
git add .
git commit -m "init"

heroku apps:create name-app
heroku apps:create name-project-prod --remote production

heroku git:remote -a name-project-prod

heroku addons:add sendgrid --app name-project-prod
heroku addons:add redistogo --app name-project-prod

heroku config:set PROJECT_URL=name-project-prod.herokuapp.com --app name-project-prod


git push heroku master
