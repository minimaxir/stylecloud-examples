import twint

c = twint.Config()
c.Search = "twitter"   # comment if you want to search a user instead
# c.Username = "dril"   # comment out if want to search a user instead
c.Limit = 2000   # must be multiple of 20
c.Store_object = True
# c.Min_retweets = 50
c.Links = "exclude"
c.Verified = True
c.Lang = "en"
c.Popular_tweets = True

twint.run.Search(c)
tweets = twint.output.tweets_list

with open('tweets.txt', 'w') as f:
    for tweet in tweets:
        f.write(tweet.tweet + '\n')
