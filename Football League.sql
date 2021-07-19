create database League ;
#drop database League;
use League ;
create table team
(team_name varchar(30) primary key,
 captain varchar(30),
 manager varchar(30),
 matches_played int,
 wins int,
 loses int,
 tie int,
 points int,
 goals_scored int,
 goals_conceded int);
 
create table fixture
(match_no int primary key auto_increment,
 team_1 varchar(30),
 team_2 varchar(30),
 match_type ENUM('HOME','AWAY'),
 winner varchar(30),
 score_team1 int,
 score_team2 int,
 match_date date,
 venue varchar(20),
 foreign key(team_1) references team(team_name),
 foreign key(team_2) references team(team_name));
 
create table players
(playerID int primary key auto_increment,
 player_name varchar(20) null,
 team_name varchar(20) null,
 jersey_no int null,
 playing_pos varchar(20) null,
 nationality varchar(20) null,
 foreign key(team_name) references team(team_name));

create table playerStats
(playerID int primary key,
 matches_played int null,
 goals int null,
 assists int null,
 fouls int null,
 yellow_cards int null,
 red_cards int null,
 tackles int null,
 cleansheets int null,
 foreign key(playerID) references players(playerID));
 
 create table matchGoals
 (player_no int primary key auto_increment,
  match_no int null,
  playerID int null,
  no_of_goals int null,
  foreign key(playerID) references players(playerID),
  foreign key(match_no) references fixture(match_no));
  
  
  
  insert into players(player_name,jersey_no,playing_pos,nationality)
values
('Messi',10,'Striker','Portugal');

insert into players(player_name,jersey_no,playing_pos,nationality)
values
('Ronaldo',7,'Striker','Portugal');

insert into players(player_name,jersey_no,playing_pos,nationality)
values
('Ronaldo',7,'Striker','Portugal');

insert into players(player_name,jersey_no,playing_pos,nationality)
values
('Ronaldo',7,'Striker','Portugal');

insert into players(player_name,jersey_no,playing_pos,nationality)
values
('Ronaldo',7,'Striker','Portugal');

insert into players(player_name,jersey_no,playing_pos,nationality)
values
('Ronaldo',7,'Striker','Portugal');

insert into playerStats(playerID,matches_played,goals,assists,fouls,yellow_cards,red_cards,tackles)
 values
 (1,2,1,1,1,1,0,10);

insert into playerStats(playerID,matches_played,goals,assists,fouls,yellow_cards,red_cards,tackles)
 values
 (2,2,1,1,1,1,0,10);
insert into playerStats(playerID,matches_played,goals,assists,fouls,yellow_cards,red_cards,tackles)
 values
 (3,2,1,1,1,1,0,10);
insert into playerStats(playerID,matches_played,goals,assists,fouls,yellow_cards,red_cards,tackles)
 values
 (4,2,1,1,1,1,0,10);
 
 

 
 insert into players(player_name,jersey_no,playing_pos,nationality)
values
('Neymar',7,'Striker','Portugal');
insert into players(player_name,jersey_no,playing_pos,nationality)
values
('Mes',7,'Striker','Portugal');

insert into team(team_name,captain,manager,matches_played,wins,loses,tie,points)
 values 
 ('Real Madrid','Messi','Ronaldo',6,3,2,1,7),
 ('Barcelona','Jack','Joey',5,3,1,1,7),
 ('Juventus','Abd','Virat',4,1,3,0,2);

insert into fixture(team_1,team_2,match_type,winner,match_date,venue)
 values
 ('Real Madrid','Barcelona','Home','TBD','2019-12-12','Berlin');
 
 #update team set tie=tie+1,points=points+1,matches_played=matches_played+1,goals_scored=goals_scored+3,goals_conceded=goals_conceded+3 where team_name='Juventus';
 
 select * from team;