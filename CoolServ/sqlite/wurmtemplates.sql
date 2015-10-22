CREATE TABLE SKILLCHANCES
(
    SKILL                   TINYINT       NOT NULL,
    DIFFICULTY              TINYINT       NOT NULL,
    CHANCE                  TINYINT       NOT NULL,
    PRIMARY KEY (SKILL, DIFFICULTY)
);
CREATE TABLE SKILLS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    NUMBER                  INT           ,
    TEMPLATE                VARCHAR(40)   ,
    VALUE                   DOUBLE
);
