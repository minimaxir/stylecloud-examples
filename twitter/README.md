# Twitter

![](stylecloud.png)

A quick Twitter scraper made using [twint](https://github.com/twintproject/twint) to gather 2,000 tweets based on a search phase and saves them to a .txt file. Then, generates a stylecloud from it.

Instead of using the more-popular twint CLI, the implementation in `tweet_scraper.py` uses the Python interface to write *only* tweets to the text file (you can also use `tweet_scraper_csv.py` to save the tweets as a single-column CSV, which is more simple but less hackable).

This stylecloud also uses the [Open Sans font](https://fonts.google.com/specimen/Open+Sans) which is close to Twitter's font, to mix things up a bit.

CLI command:

```sh
stylecloud --file_path tweets.txt --icon_name 'fab fa-twitter' --palette colorbrewer.sequential.Blues_9 --gradient horizontal --font_path OpenSans-SemiBold.ttf
```