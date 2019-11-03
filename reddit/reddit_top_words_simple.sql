#standardSQL
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
    AND LOWER(subreddit) IN ('funny', 'aww', 'videos', 'pics', 'askreddit') ),
  UNNEST(words) word
GROUP BY
  word
HAVING
  COUNT(*) >= 100
ORDER BY
  q90_score DESC
LIMIT
  2000
