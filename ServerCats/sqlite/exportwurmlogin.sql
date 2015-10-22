/* Controllable exports for easy diffing */
/* Set output file and export schema */
.out wurmlogin.export.sql
.schema IDS
.schema CHALLENGE
.schema OVERRIDDENFEATURES
.schema HISTORY
.schema SERVERS 
.schema SERVERNEIGHBOURS
.schema PENDINGACCOUNTS
.schema PASSWORDTRANSFERS
.schema EIGC 
.schema TICKETS
.schema TICKETACTIONS
.schema TICKETNOS
.schema VOTINGQUESTIONS
.schema VOTINGSERVERS
/* Set output file and export insert statements */
.out insertwurmlogin.export.sql
.mode insert IDS
select * from IDS;
.mode insert CHALLENGE
select * from CHALLENGE;
.mode insert OVERRIDDENFEATURES
select * from OVERRIDDENFEATURES;
.mode insert HISTORY
select * from HISTORY;
.mode insert SERVERS 
select * from SERVERS;
.mode insert SERVERNEIGHBOURS
select * from SERVERNEIGHBOURS;
.mode insert PENDINGACCOUNTS
select * from PENDINGACCOUNTS;
.mode insert PASSWORDTRANSFERS
select * from PASSWORDTRANSFERS;
.mode insert EIGC 
select * from EIGC;
.mode insert TICKETS
select * from TICKETS;
.mode insert TICKETACTIONS
select * from TICKETACTIONS;
.mode insert TICKETNOS
select * from TICKETNOS;
.mode insert VOTINGQUESTIONS
select * from VOTINGQUESTIONS;
.mode insert VOTINGSERVERS
select * from VOTINGSERVERS;
