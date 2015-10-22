/* Controllable exports for easy diffing */
/* Set output file and export schema */
.out wurmtemplates.export.sql
.schema SKILLCHANCES
.schema SKILLS
/* Set output file and export insert statements */
.out insertwurmtemplates.export.sql
.mode insert SKILLCHANCES
select * from SKILLCHANCES;
.mode insert SKILLS
select * from SKILLS;
