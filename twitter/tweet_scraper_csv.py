import twint

c = twint.Config()
c.Search = "twitter"   # comment if you want to search a user instead
# c.Username = "dril"   # comment out if want to search a user instead
c.Limit = 20   # must be multiple of 20
# c.Min_retweets = 50
c.Links = "exclude"
c.Verified = True
c.Lang = "en"
c.Popular_tweets = True
c.Custom["tweet"] = ["tweet"]
c.Output = "tweets.csv"
c.Store_csv = True

twint.run.Search(c)
