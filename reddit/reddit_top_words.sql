#standardSQL
WITH
  top_subreddits AS (
  SELECT
    subreddit
  FROM
    `fh-bigquery.reddit_posts.*`
  WHERE
    _TABLE_SUFFIX BETWEEN '2019_01' AND '2019_08'
    AND score >= 5
    AND LENGTH(title) >= 8
    AND subreddit NOT IN ("me_irl",
      "2meirl4meirl",
      "anime_irl",
      "furry_irl",
      "cursedimages",
      "meirl",
      "hmmm",
      "the_donald")
  GROUP BY
    subreddit
  HAVING
    COUNT(*) >= 2000
  ORDER BY
    APPROX_COUNT_DISTINCT(author) DESC
  LIMIT
    100 )

SELECT
  word,
  APPROX_QUANTILES(score, 100)[OFFSET(90)] AS q90_score
FROM (
  SELECT
    SPLIT(UPPER(REGEXP_REPLACE(title, r'[^a-zA-Z0-9 -]', '')), " ") words,
    score
  FROM
    `fh-bigquery.reddit_posts.*`
  WHERE
    _TABLE_SUFFIX BETWEEN '2019_01' AND '2019_08'
    AND subreddit IN (SELECT subreddit FROM top_subreddits) ),
  UNNEST(words) word
GROUP BY
  word
HAVING
  COUNT(*) >= 100
ORDER BY
  q90_score DESC
LIMIT
  2000
