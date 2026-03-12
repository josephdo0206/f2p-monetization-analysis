/*
-- 1. Create the Tables
CREATE TABLE portfolio-2026-485302.f2p_monetization_analysis.player_profiles (
    player_id INT64, join_date DATE, country STRING, guild_member BOOL
);

CREATE TABLE portfolio-2026-485302.f2p_monetization_analysis.player_activity (
    player_id INT64, last_login_date DATE, highest_level_reached INT64, total_matches_played INT64
);

CREATE TABLE portfolio-2026-485302.f2p_monetization_analysis.purchases (
    transaction_id INT64, player_id INT64, item_type STRING, amount_usd FLOAT64
);
*/

-- 2. Insert Player Profiles
INSERT INTO portfolio-2026-485302.f2p_monetization_analysis.player_profiles VALUES 
(101, '2025-11-01', 'USA', TRUE),
(102, '2025-11-15', 'CAN', FALSE),
(103, '2025-12-05', 'UK', TRUE),
(104, '2026-01-10', 'USA', FALSE),
(105, '2025-10-20', 'KOR', TRUE);

-- 3. Insert Player Activity (Current Date for context is March 1, 2026)
INSERT INTO portfolio-2026-485302.f2p_monetization_analysis.player_activity VALUES 
(101, '2026-01-10', 50, 850),  -- Churned (Over 30 days ago), Max Level
(102, '2026-02-28', 32, 210),  -- Active, Mid Level
(103, '2026-02-27', 50, 920),  -- Active, Max Level
(104, '2026-02-28', 15, 45),   -- Active, Low Level
(105, '2026-01-05', 50, 1100); -- Churned, Max Level

-- 4. Insert Purchases (The Monetization Data)
INSERT INTO portfolio-2026-485302.f2p_monetization_analysis.purchases VALUES 
(1, 101, 'Legendary Skin', 250.00),
(2, 101, 'XP Boost Pack', 150.00),
(3, 101, 'Loot Box Bundle', 200.00), -- Player 101 Total: $600 (WHALE)
(4, 102, 'Starter Pack', 20.00),
(5, 102, 'Battle Pass', 15.00),      -- Player 102 Total: $35 (MINNOW)
(6, 103, 'Loot Box Bundle', 200.00),
(7, 103, 'Legendary Mount', 400.00), -- Player 103 Total: $600 (WHALE)
(8, 105, 'Legendary Skin', 250.00),
(9, 105, 'Weapon Upgrade', 300.00);  -- Player 105 Total: $550 (WHALE)

-- 1. Add 10 New Player Profiles
INSERT INTO portfolio-2026-485302.f2p_monetization_analysis.player_profiles VALUES 
(106, '2025-12-01', 'USA', TRUE),
(107, '2026-01-15', 'JPN', FALSE),
(108, '2025-09-10', 'GER', TRUE),
(109, '2025-11-20', 'USA', FALSE),
(110, '2026-02-01', 'CAN', TRUE),
(111, '2025-10-05', 'KOR', TRUE),
(112, '2026-01-20', 'UK', FALSE),
(113, '2025-08-15', 'USA', TRUE),
(114, '2026-02-10', 'JPN', FALSE),
(115, '2025-12-25', 'GER', TRUE);

-- 2. Add Their Activity Data 
INSERT INTO portfolio-2026-485302.f2p_monetization_analysis.player_activity VALUES 
(106, '2026-02-28', 50, 1200), -- Active, Max Level
(107, '2026-01-25', 22, 150),  -- Churned, Mid Level
(108, '2025-12-15', 50, 950),  -- Churned, Max Level (Whale)
(109, '2026-02-27', 45, 600),  -- Active, High Level
(110, '2026-02-28', 10, 30),   -- Active, Low Level
(111, '2026-01-10', 50, 1500), -- Churned, Max Level (Whale)
(112, '2026-02-20', 30, 200),  -- Active, Mid Level
(113, '2025-11-01', 15, 80),   -- Churned, Low Level
(114, '2026-02-28', 18, 90),   -- Active, Low Level
(115, '2026-02-25', 50, 1100); -- Active, Max Level

-- 3. Add Their Monetization Data (Purchases)
INSERT INTO portfolio-2026-485302.f2p_monetization_analysis.purchases VALUES 
(10, 106, 'Battle Pass', 15.00),
(11, 106, 'XP Boost Pack', 135.00),  -- Player 106: Dolphin ($150)
(12, 108, 'Legendary Mount', 400.00),
(13, 108, 'Legendary Skin', 400.00), -- Player 108: Whale ($800)
(14, 109, 'Starter Pack', 10.00),    -- Player 109: Minnow ($10)
(15, 111, 'Weapon Upgrade', 300.00),
(16, 111, 'Loot Box Bundle', 350.00),-- Player 111: Whale ($650)
(17, 115, 'Legendary Skin', 250.00),
(18, 115, 'Weapon Upgrade', 300.00); -- Player 115: Whale ($550)
-- Players 107, 110, 112, 113, 114 have 0 purchases (F2P)

-- 1. Insert Players 116 to 150 (Profiles)
INSERT INTO portfolio-2026-485302.f2p_monetization_analysis.player_profiles VALUES 
(116, '2025-11-10', 'USA', FALSE), (117, '2026-01-05', 'CAN', TRUE), (118, '2025-12-15', 'UK', TRUE),
(119, '2026-02-20', 'GER', FALSE), (120, '2025-08-01', 'USA', TRUE), (121, '2026-01-22', 'FRA', FALSE),
(122, '2025-10-30', 'BRA', TRUE), (123, '2026-02-14', 'JPN', TRUE), (124, '2025-09-18', 'KOR', FALSE),
(125, '2025-11-25', 'USA', TRUE), (126, '2026-01-11', 'AUS', FALSE), (127, '2026-02-05', 'CAN', TRUE),
(128, '2025-12-08', 'UK', TRUE), (129, '2025-10-12', 'USA', FALSE), (130, '2026-01-30', 'GER', TRUE),
(131, '2025-08-22', 'FRA', FALSE), (132, '2026-02-18', 'USA', TRUE), (133, '2025-11-05', 'BRA', FALSE),
(134, '2025-12-20', 'KOR', TRUE), (135, '2025-09-10', 'JPN', TRUE), (136, '2026-01-02', 'USA', FALSE),
(137, '2026-02-25', 'CAN', TRUE), (138, '2025-10-01', 'UK', FALSE), (139, '2025-11-15', 'AUS', TRUE),
(140, '2026-01-18', 'FRA', FALSE), (141, '2026-02-10', 'GER', TRUE), (142, '2025-08-30', 'USA', TRUE),
(143, '2025-12-05', 'BRA', FALSE), (144, '2026-01-28', 'JPN', TRUE), (145, '2025-10-20', 'KOR', FALSE),
(146, '2025-11-22', 'USA', TRUE), (147, '2026-02-08', 'CAN', FALSE), (148, '2025-09-15', 'UK', TRUE),
(149, '2026-01-12', 'AUS', TRUE), (150, '2026-02-27', 'USA', FALSE);

-- 2. Insert Player Activity
INSERT INTO portfolio-2026-485302.f2p_monetization_analysis.player_activity VALUES 
(116, '2026-02-28', 12, 40), (117, '2026-01-20', 18, 85), (118, '2026-02-25', 35, 400),
(119, '2026-02-27', 8, 20), (120, '2026-01-15', 50, 1600), -- Whale 120: Churned at Max Level
(121, '2026-02-28', 22, 110), (122, '2026-02-10', 40, 500), (123, '2026-02-28', 15, 60),
(124, '2025-11-01', 25, 180), (125, '2026-02-28', 48, 800), (126, '2026-02-15', 10, 30),
(127, '2026-02-28', 14, 55), (128, '2026-01-25', 38, 450), (129, '2026-02-20', 20, 100),
(130, '2026-02-28', 42, 600), (131, '2025-10-15', 30, 250), (132, '2026-02-28', 5, 15),
(133, '2026-01-10', 16, 70), (134, '2026-02-27', 28, 190), (135, '2026-02-28', 50, 1300), -- Whale 135: Active
(136, '2026-01-30', 12, 45), (137, '2026-02-28', 8, 25), (138, '2025-12-05', 33, 320),
(139, '2026-02-26', 19, 90), (140, '2026-02-28', 45, 750), (141, '2026-02-20', 14, 50),
(142, '2026-01-05', 50, 1450), -- Whale 142: Churned at Max Level
(143, '2026-01-15', 21, 105), (144, '2026-02-28', 11, 35), (145, '2026-02-10', 36, 420),
(146, '2026-02-28', 29, 210), (147, '2026-02-25', 17, 80), (148, '2026-01-28', 49, 900),
(149, '2026-02-28', 24, 150), (150, '2026-02-28', 6, 20);

-- 3. Insert Purchases (Injecting 3 more Whales + casual spenders)
INSERT INTO portfolio-2026-485302.f2p_monetization_analysis.purchases VALUES 
(19, 118, 'Starter Pack', 10.00),
(20, 118, 'Battle Pass', 15.00),      -- Dolphin: $25
(21, 120, 'Legendary Mount', 400.00),
(22, 120, 'Legendary Skin', 250.00),  -- Whale: $650
(23, 122, 'XP Boost Pack', 50.00),    -- Dolphin: $50
(24, 125, 'Loot Box Bundle', 100.00), -- Dolphin: $100
(25, 128, 'Battle Pass', 15.00),      -- Minnow: $15
(26, 130, 'Legendary Skin', 200.00),  -- Dolphin: $200
(27, 135, 'Weapon Upgrade', 300.00),
(28, 135, 'Loot Box Bundle', 200.00),
(29, 135, 'Legendary Mount', 250.00), -- Whale: $750
(30, 140, 'Starter Pack', 20.00),     -- Minnow: $20
(31, 142, 'Legendary Mount', 400.00),
(32, 142, 'Weapon Upgrade', 300.00),  -- Whale: $700
(33, 145, 'XP Boost Pack', 50.00),
(34, 148, 'Loot Box Bundle', 150.00); -- Dolphin: $150
-- All other players are Free-to-Play Grinders (0 purchases)