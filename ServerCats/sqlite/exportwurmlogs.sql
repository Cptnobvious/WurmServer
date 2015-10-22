/* Controllable exports for easy diffing */
/* Set output file and export schema */
.out wurmlogs.export.sql
.schema ITEM_TRANSFER_LOG 
.schema TILE_LOG 
.schema SERVER_STATS_TYPE
.schema SERVER_STATS_LOG 
.schema PLAYER_LOGIN_EVENT_LOG
/* Set output file and export insert statements */
.out insertwurmlogs.export.sql
.mode insert ITEM_TRANSFER_LOG 
select * from ITEM_TRANSFER_LOG;
.mode insert TILE_LOG 
select * from TILE_LOG;
.mode insert SERVER_STATS_TYPE
select * from SERVER_STATS_TYPE;
.mode insert SERVER_STATS_LOG 
select * from SERVER_STATS_LOG;
.mode insert PLAYER_LOGIN_EVENT_LOG
select * from PLAYER_LOGIN_EVENT_LOG;
