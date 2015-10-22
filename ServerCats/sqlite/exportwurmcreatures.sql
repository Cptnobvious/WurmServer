/* Controllable exports for easy diffing */
/* Set output file and export schema */
.out wurmcreatures.export.sql
.schema CREATURES
.schema POSITION
.schema OFFSPRING
.schema BRANDS
.schema PROTECTED
.schema SKILLS
.schema ANIMALSETTINGS
/* Set output file and export insert statements */
.out insertwurmcreatures.export.sql
.mode insert CREATURES
select * from CREATURES;
.mode insert POSITION
select * from POSITION;
.mode insert OFFSPRING
select * from OFFSPRING;
.mode insert BRANDS
select * from BRANDS;
.mode insert PROTECTED
select * from PROTECTED;
.mode insert SKILLS
select * from SKILLS;
.mode insert ANIMALSETTINGS
select * from ANIMALSETTINGS;
