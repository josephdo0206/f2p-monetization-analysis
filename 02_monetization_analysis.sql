/*
-- ==============================================================================
-- BUSINESS QUESTION: Who are our highest-value players ("Whales")?
-- LOGIC: Aggregates lifetime spend per player. 
-- A "Whale" is defined as any player with >= $500 total lifetime spend.
-- ==============================================================================
SELECT
  player_id,
  sum(amount_usd) AS total_spent
FROM portfolio-2026-485302.f2p_monetization_analysis.purchases
GROUP BY player_id
HAVING total_spent >= 500

-- ==============================================================================
-- BUSINESS QUESTION: Which players have abandoned the game?
-- LOGIC: Calculates the difference between the current date (2026-03-01) and the player's last login.
-- "Churn" is strictly defined as > 30 days of inactivity.
-- ==============================================================================
SELECT
  player_id,
  last_login_date,
  DATE_DIFF(DATE '2026-03-01', last_login_date, DAY) AS days_since_last_login
FROM `portfolio-2026-485302.f2p_monetization_analysis.player_activity`
WHERE DATE_DIFF(DATE '2026-03-01', last_login_date, DAY) > 30

*/
SELECT
  player_id,
  sum(amount_usd) AS total_spent
FROM portfolio-2026-485302.f2p_monetization_analysis.purchases AS p
INNER JOIN portfolio-2026-485302.f2p_monetization_analysis.player_activity AS a
  ON p.player_id = a.player_id