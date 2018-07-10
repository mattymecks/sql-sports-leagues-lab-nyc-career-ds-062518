

ALTER TABLE games ADD COLUMN info TEXT;

INSERT INTO leagues (name) VALUES ("NHL"), ("NBA");

INSERT INTO teams (name, league_id) VALUES ("New York Rangers", 1), ("Vancouver Canucks", 1), ("New York Knicks", 2), ("Houston Rockets", 2);

INSERT INTO players (name, team_id) VALUES

("Brian Leetch", 1),
("Pavel Bure", 2),
("Patrick Ewing", 3),
("Hakeem Olajuwon", 4);

INSERT INTO games (date, location, info) VALUES
("1994-05-31", "New York, NY", "Stanley Cup Finals - Game 1"),
("1994-06-02", "New York, NY", "Stanley Cup Finals - Game 2"),
("1994-06-04", "Vancouver, BC", "Stanley Cup Finals - Game 3");

INSERT INTO team_games (team_id, game_id, score) VALUES

(1,1,2),
(2,1,3),
(1,2,3),
(2,2,1),
(1,3,5),
(2,3,1);

-- 3 total games, and teams are allowed to play teams from other leagues
-- Lastly, we will need to log scores and the relevant team and game ids into the team_games join table to build out the "many-to-many" relationship
