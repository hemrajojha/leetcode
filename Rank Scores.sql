select R.score, R.rank from
(
select score, dense_rank() over (order by score desc) as rank from Scores
) as R;