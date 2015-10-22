/* Controllable exports for easy diffing */
/* Set output file and export schema */
.out wurmeconomy.export.sql
.schema ITEMSSOLD 
.schema ECONOMY
.schema SUPPLYDEMAND
.schema LOCALSUPPLYDEMAND
.schema TRANSACTS
.schema TRADER
.schema BANKS
.schema BANKS_ITEMS
/* Set output file and export insert statements */
.out insertwurmeconomy.export.sql
.mode insert ITEMSSOLD 
select * from ITEMSSOLD;
.mode insert ECONOMY
select * from ECONOMY;
.mode insert SUPPLYDEMAND
select * from SUPPLYDEMAND;
.mode insert LOCALSUPPLYDEMAND
select * from LOCALSUPPLYDEMAND;
.mode insert TRANSACTS
select * from TRANSACTS;
.mode insert TRADER
select * from TRADER;
.mode insert BANKS
select * from BANKS;
.mode insert BANKS_ITEMS
select * from BANKS_ITEMS;
