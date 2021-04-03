https://devcenter.heroku.com/articles/heroku-cli

brew tap heroku/brew && brew install heroku. #macOS


heroku --version
heroku login
heroku keys:add
heroku keys
which heroku

git init
git add .
git commit -m "init"

heroku apps:create name-project --remote production

heroku git:remote -a name-project

heroku addons:add sendgrid --app name-project
heroku addons:add redistogo --app name-project

heroku config:set PROJECT_URL=name-project.herokuapp.com --app name-project

heroku ps --app name-project

git push production master
