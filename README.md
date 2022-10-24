# Topical Tweets App
This is an interface for geting recent tweets from the Topical tweets Api

Select a topic and the App will get the latest 10 tweets from the Api.

### Heroku Deployment
#### Deploying to Heroku
- `heroku create`
- `git push heroku main` 
- May attempt to build then fail. Try running `bundle lock --add-platform x86_64-linux` and commit to git. Then push again.

#### Useful Heroku commands
- `git push heroku main` - deploy app to heroku
- `heroku run console` - access the prod app's console
- `heroku logs --tail` - see logs
- `heroku open` - opens app in browser
- `heroku config:get X` gets value of X environment variable