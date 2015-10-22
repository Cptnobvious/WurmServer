/* Controllable exports for easy diffing */
/* Set output file and export schema */
.out wurmitems.export.sql
.schema CALENDAR
.schema PROTECTEDCORPSES
.schema ENDGAMEITEMS
.schema ITEMS
.schema FROZENITEMS
.schema INSCRIPTIONS 
.schema MAIL
.schema ITEMREQUIREMENTS
.schema VEHICLESETTINGS
.schema BODYPARTS
.schema COINS
.schema SPELLEFFECTS
.schema LOCKS
.schema ITEMKEYS
.schema ITEMDATA
.schema EFFECTS
.schema ITEMSETTINGS 
/* Set output file and export insert statements */
.out insertwurmitems.export.sql
.mode insert CALENDAR
select * from CALENDAR;
.mode insert PROTECTEDCORPSES
select * from PROTECTEDCORPSES;
.mode insert ENDGAMEITEMS
select * from ENDGAMEITEMS;
.mode insert ITEMS
select * from ITEMS;
.mode insert FROZENITEMS
select * from FROZENITEMS;
.mode insert INSCRIPTIONS 
select * from INSCRIPTIONS;
.mode insert MAIL
select * from MAIL;
.mode insert ITEMREQUIREMENTS
select * from ITEMREQUIREMENTS;
.mode insert VEHICLESETTINGS
select * from VEHICLESETTINGS;
.mode insert BODYPARTS
select * from BODYPARTS;
.mode insert COINS
select * from COINS;
.mode insert SPELLEFFECTS
select * from SPELLEFFECTS;
.mode insert LOCKS
select * from LOCKS;
.mode insert ITEMKEYS
select * from ITEMKEYS;
.mode insert ITEMDATA
select * from ITEMDATA;
.mode insert EFFECTS
select * from EFFECTS;
.mode insert ITEMSETTINGS 
select * from ITEMSETTINGS;
