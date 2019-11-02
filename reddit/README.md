# reddit

A word cloud of the top words used on Reddit in 2019 with a twist; instead of sizing the words based on counts and averages (which rewards spam and and is not reflective of typical Reddit viewing), it uses the 90th score quantile of submissions containing that word, among the top subreddits. (excluding /r/The_Donald + some meme subs, in which the circlejerking seems to have a more extreme biasing effect for this heuristic)

The BigQuery in `reddit_top_words.sql` will return a 2,000 row CSV of these top words (`reddit_top_words.csv`).