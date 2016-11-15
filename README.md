<B>Tournament Results</B>
<br>In this project, you’ll be writing a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament. The game tournament will use the Swiss system for pairing up players in each round: players are not eliminated, and each player should be paired with another player with the same number of wins, or as close as possible.

<B>Files</B>
<br>tournament.py - Contains the implementation for the Swiss tournament
<br>tournament.sql - Contains the SQL queries to create the database, tables and views
<br>tournament_test.py - Contains the test cases for tournament.py

<B>Instructions</B>
<br>1. Start Vagrant
<br>2. Launch Terminal or cd to the vagrant folder
<br>3. Type command vagrant up
<br>4. Type command vagrant ssh
<br>5. Change folder by type command cd /vagrant/tournament
<br>6. Open PSQL by type psql
<br>7. copy the contents of tournament.sql and paste in to the terminal window
<br>8. Type \q to quit out of PSQL
<br>9. Run the tests by type python tournament_test.py

<B>Expected result</B>
<br>Success! All tests pass!
<br>vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
<br>1. Old matches can be deleted.
<br>2. Player records can be deleted.
<br>3. After deleting, countPlayers() returns zero.
<br>4. After registering a player, countPlayers() returns 1.
<br>5. Players can be registered and deleted.
<br>6. Newly registered players appear in the standings with no matches.
<br>7. After a match, players have updated standings.
<br>8. After one match, players with one win are paired.
<br>Success! All tests pass!
