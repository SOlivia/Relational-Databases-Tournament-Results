-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


-- Drop tournament database if it exists
DROP DATABASE IF EXISTS tournament;

-- Create Database 'Tournament'
CREATE DATABASE tournament;

-- Connect to the tournament database
\connect tournament

-- Drop all tables and views if they exist
DROP TABLE IF EXISTS players CASCADE;
DROP TABLE IF EXISTS matches CASCADE;

-- Creates player table
CREATE TABLE players(
  player_id     serial  PRIMARY KEY,
  player_name   text
);

-- Creates match table
CREATE TABLE matches(
  match_id      serial PRIMARY KEY,
  winner        integer,
  loser         integer,
  FOREIGN KEY(winner) REFERENCES players(player_id),
  FOREIGN KEY(loser) REFERENCES players(player_id)
);

-- Create view for standings
CREATE VIEW standings AS
SELECT p.player_id as player_id, p.player_name,
(SELECT count(*) FROM matches WHERE matches.winner = p.player_id) as wins,
(SELECT count(*) FROM matches WHERE p.player_id in (winner, loser)) as matches
FROM players as p
GROUP BY p.player_id
ORDER BY wins DESC;
