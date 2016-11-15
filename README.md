<B>Tournament Results</B>
<br>In this project, you’ll be writing a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament. The game tournament will use the Swiss system for pairing up players in each round: players are not eliminated, and each player should be paired with another player with the same number of wins, or as close as possible.

<B>Files</B>
tournament.py - Contains the implementation for the Swiss tournament
tournament.sql - Contains the SQL queries to create the database, tables and views
tournament_test.py - Contains the test cases for tournament.py

<B>Instructions</B>
1. Start Vagrant
2. Launch Terminal or cd to the vagrant folder
3. Type command vagrant up
4. Type command vagrant ssh
5. Change folder by type command cd /vagrant/tournament
6. Open PSQL by type psql
7. copy the contents of tournament.sql and paste in to the terminal window
8. Type \q to quit out of PSQL
9. Run the tests by type python tournament_test.py

<B>Expected result</B>
Success! All tests pass!
vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success! All tests pass!
