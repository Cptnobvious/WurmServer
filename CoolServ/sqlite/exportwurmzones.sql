/* Controllable exports for easy diffing */
/* Set output file and export schema */
.out wurmzones.export.sql
.schema VILLAGERECRUITMENT
.schema ZONES
.schema HOTA_ITEMS
.schema HOTA_HELPERS
.schema FOCUSZONES
.schema MINING
.schema DENS
.schema STRUCTURES
.schema BUILDTILES
.schema STRUCTUREGUESTS
.schema DOORS
.schema FLOORS
.schema BRIDGEPARTS
.schema WALLS
.schema FENCES
.schema VILLAGES
.schema VILLAGEPERIMETERS
.schema PERIMETERFRIENDS
.schema HISTORY
.schema CITIZENS
.schema VILLAGEROLE
.schema GATES
.schema GUARDS
.schema GUARDPLAN
.schema GUARDPLANPAYMENTS
.schema RETURNEDGUARDS
.schema TRAPS
.schema TOWERGUARDS
.schema PVPALLIANCE
.schema ALLIANCEWARS
.schema VILLAGEWARS
.schema VILLAGEWARDECLARATIONS
.schema REPUTATION
.schema MISSIONHELPERS
.schema KING_ERA
.schema KINGDOMS
.schema KALLIANCES
.schema APPOINTMENTS
.schema OFFICES
.schema MINEDOOR
.schema MDPERMS
.schema DOORSETTINGS 
.schema EPICTARGETITEMS
/* Set output file and export insert statements */
.out insertwurmzones.export.sql
.mode insert VILLAGERECRUITMENT
select * from VILLAGERECRUITMENT;
.mode insert ZONES
select * from ZONES;
.mode insert HOTA_ITEMS
select * from HOTA_ITEMS;
.mode insert HOTA_HELPERS
select * from HOTA_HELPERS;
.mode insert FOCUSZONES
select * from FOCUSZONES;
.mode insert MINING
select * from MINING;
.mode insert DENS
select * from DENS;
.mode insert STRUCTURES
select * from STRUCTURES;
.mode insert BUILDTILES
select * from BUILDTILES;
.mode insert STRUCTUREGUESTS
select * from STRUCTUREGUESTS;
.mode insert DOORS
select * from DOORS;
.mode insert FLOORS
select * from FLOORS;
.mode insert BRIDGEPARTS
select * from BRIDGEPARTS;
.mode insert WALLS
select * from WALLS;
.mode insert FENCES
select * from FENCES;
.mode insert VILLAGES
select * from VILLAGES;
.mode insert VILLAGEPERIMETERS
select * from VILLAGEPERIMETERS;
.mode insert PERIMETERFRIENDS
select * from PERIMETERFRIENDS;
.mode insert HISTORY
select * from HISTORY;
.mode insert CITIZENS
select * from CITIZENS;
.mode insert VILLAGEROLE
select * from VILLAGEROLE;
.mode insert GATES
select * from GATES;
.mode insert GUARDS
select * from GUARDS;
.mode insert GUARDPLAN
select * from GUARDPLAN;
.mode insert GUARDPLANPAYMENTS
select * from GUARDPLANPAYMENTS;
.mode insert RETURNEDGUARDS
select * from RETURNEDGUARDS;
.mode insert TRAPS
select * from TRAPS;
.mode insert TOWERGUARDS
select * from TOWERGUARDS;
.mode insert PVPALLIANCE
select * from PVPALLIANCE;
.mode insert ALLIANCEWARS
select * from ALLIANCEWARS;
.mode insert VILLAGEWARS
select * from VILLAGEWARS;
.mode insert VILLAGEWARDECLARATIONS
select * from VILLAGEWARDECLARATIONS;
.mode insert REPUTATION
select * from REPUTATION;
.mode insert MISSIONHELPERS
select * from MISSIONHELPERS;
.mode insert KING_ERA
select * from KING_ERA;
.mode insert KINGDOMS
select * from KINGDOMS;
.mode insert KALLIANCES
select * from KALLIANCES;
.mode insert APPOINTMENTS
select * from APPOINTMENTS;
.mode insert OFFICES
select * from OFFICES;
.mode insert MINEDOOR
select * from MINEDOOR;
.mode insert MDPERMS
select * from MDPERMS;
.mode insert DOORSETTINGS 
select * from DOORSETTINGS ;
.mode insert EPICTARGETITEMS
select * from EPICTARGETITEMS;
