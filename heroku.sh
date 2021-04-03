https://devcenter.heroku.com/articles/heroku-cli

brew tap heroku/brew && brew install heroku. #macOS


heroku --version
heroku login
which heroku

git init
git add .
git commit -m "init"

heroku apps:create name-app
heroku apps:create proyecto-mejorandola-prod --remote production
heroku addons:add sendgrid --app proyecto-mejorandola-prod


git push heroku master
