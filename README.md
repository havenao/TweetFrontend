# Topical Tweets App
This is an interface for geting recent tweets from the Topical tweets Api

Select a topic and the App will get the latest 10 tweets from the Api.

### Demo 
[View Live App](https://mysterious-plains-17104.herokuapp.com/)
## Configuring the Application
Ruby version 3.1.2

### Environment Variables
- Run `EDITOR="code --wait" rails credentials:edit --environment=development`. (Replace "code" with editor of choice)
- This will open editor. Add:
```
tweet_api:
  route: ROUTE_TO_MY_LOCAL_API/tweets
```
- Save and close the file. This will create "config/credentials/development.yml.enc" and encryption key.

### Heroku Deployment
#### Deploying to Heroku
- `heroku create`
- `git push heroku main` 
- May attempt to build then fail. Try running `bundle lock --add-platform x86_64-linux` and commit to git. Then push again.

### Prod Environment Variables
- Run `EDITOR="code --wait" rails credentials:edit --environment=development`. (Replace "code" with editor of choice)
- This will open editor. Add:
```
tweet_api:
  route: ROUTE__TO_MY_LIVE_API/tweets
```
- Save and close the file. This will create "config/credentials/production.yml.enc" and encryption key.
- Need to set in heroku `heroku config:set RAILS_MASTER_KEY=123456789` using production encryption key.
#### Useful Heroku commands
- `git push heroku main` - deploy app to heroku
- `heroku run console` - access the prod app's console
- `heroku logs --tail` - see logs
- `heroku open` - opens app in browser
- `heroku config:get X` gets value of X environment variable