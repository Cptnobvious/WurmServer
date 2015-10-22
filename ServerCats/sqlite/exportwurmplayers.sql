/* Controllable exports for easy diffing */
/* Set output file and export schema */
.out wurmplayers.export.sql
.schema MAP_ANNOTATIONS
.schema CHAMPIONS
.schema PLAYERS
.schema POSITION
.schema AWARDS
.schema ARTISTS
.schema WISHES
.schema ACHIEVEMENTS
.schema ACHIEVEMENTTEMPLATES
.schema COOLDOWNS
.schema CULT
.schema REFERERS
.schema MISSIONTRIGGERS
.schema TRIGGEREFFECTS
.schema MISSIONS
.schema MISSIONSPERFORMED
.schema REIMB
.schema KILLS
.schema AFFINITIES
.schema FRIENDS
.schema ENEMIES
.schema IGNORED
.schema BANNEDIPS
.schema GMMESSAGES
.schema MGMTMESSAGES
.schema SKILLS
.schema WOUNDS
.schema TITLES
.schema SPELLEFFECTS
.schema VOTES
.schema PLAYERHISTORYIPS
.schema PLAYEREHISTORYEMAIL
.schema PERMISSIONSHISTORY
/* Set output file and export insert statements */
.out insertwurmplayers.export.sql
.mode insert MAP_ANNOTATIONS
select * from MAP_ANNOTATIONS;
.mode insert CHAMPIONS
select * from CHAMPIONS;
.mode insert PLAYERS
select * from PLAYERS;
.mode insert POSITION
select * from POSITION;
.mode insert AWARDS
select * from AWARDS;
.mode insert ARTISTS
select * from ARTISTS;
.mode insert WISHES
select * from WISHES;
.mode insert ACHIEVEMENTS
select * from ACHIEVEMENTS;
.mode insert ACHIEVEMENTTEMPLATES
select * from ACHIEVEMENTTEMPLATES;
.mode insert COOLDOWNS
select * from COOLDOWNS;
.mode insert CULT
select * from CULT;
.mode insert REFERERS
select * from REFERERS;
.mode insert MISSIONTRIGGERS
select * from MISSIONTRIGGERS;
.mode insert TRIGGEREFFECTS
select * from TRIGGEREFFECTS;
.mode insert MISSIONS
select * from MISSIONS;
.mode insert MISSIONSPERFORMED
select * from MISSIONSPERFORMED;
.mode insert REIMB
select * from REIMB;
.mode insert KILLS
select * from KILLS;
.mode insert AFFINITIES
select * from AFFINITIES;
.mode insert FRIENDS
select * from FRIENDS;
.mode insert ENEMIES
select * from ENEMIES;
.mode insert IGNORED
select * from IGNORED;
.mode insert BANNEDIPS
select * from BANNEDIPS;
.mode insert GMMESSAGES
select * from GMMESSAGES;
.mode insert MGMTMESSAGES
select * from MGMTMESSAGES;
.mode insert SKILLS
select * from SKILLS;
.mode insert WOUNDS
select * from WOUNDS;
.mode insert TITLES
select * from TITLES;
.mode insert SPELLEFFECTS
select * from SPELLEFFECTS;
.mode insert VOTES
select * from VOTES;
.mode insert PLAYERHISTORYIPS
select * from PLAYERHISTORYIPS;
.mode insert PLAYEREHISTORYEMAIL
select * from PLAYEREHISTORYEMAIL;
.mode insert PERMISSIONSHISTORY
select * from PERMISSIONSHISTORY;
