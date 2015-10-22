CREATE TABLE CREATURES
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    NAME                    VARCHAR(40)   ,
    TEMPLATENAME            VARCHAR(40)   ,
    SEX                     TINYINT       ,
    CENTIMETERSHIGH         SMALLINT      ,
    CENTIMETERSLONG         SMALLINT      ,
    CENTIMETERSWIDE         SMALLINT      ,
    INVENTORYID             BIGINT        ,
    BODYID                  BIGINT        ,
    BUILDINGID              BIGINT        ,
    STAMINA                 SMALLINT      ,
    HUNGER                  SMALLINT      ,
    NUTRITION               FLOAT         NOT NULL DEFAULT 0,
    THIRST                  SMALLINT      ,
    DAMAGE                  FLOAT         ,
    SIZEX                   INT           ,
    SIZEY                   INT           ,
    SIZEZ                   INT           ,
    DEAD                    TINYINT(1)    NOT NULL DEFAULT 0,
    STEALTH                 TINYINT(1)    NOT NULL DEFAULT 0,
    KINGDOM                 TINYINT       NOT NULL DEFAULT 0,
    AGE                     SMALLINT      NOT NULL DEFAULT 0,
    LASTPOLLEDAGE           BIGINT        NOT NULL DEFAULT 0,
    FAT                     TINYINT       NOT NULL DEFAULT 0,
    TRAITS                  BIGINT        NOT NULL DEFAULT 0,
    DOMINATOR               BIGINT        NOT NULL DEFAULT -10,
    MOTHER                  BIGINT        NOT NULL DEFAULT -10,
    FATHER                  BIGINT        NOT NULL DEFAULT -10,
    REBORN                  TINYINT(1)    NOT NULL DEFAULT 0,
    LOYALTY                 FLOAT         NOT NULL DEFAULT 0,
    LASTPOLLEDLOYALTY       BIGINT        NOT NULL DEFAULT 0,
    OFFLINE                 TINYINT(1)    NOT NULL DEFAULT 0,
    STAYONLINE              TINYINT(1)    NOT NULL DEFAULT 0,
    SPAWNPOINT              INT           NOT NULL DEFAULT -1,
    TEMPLATEID              INT           NOT NULL DEFAULT -1,
    DETECTIONSECS           SMALLINT      NOT NULL DEFAULT 0,
    DISEASE                 TINYINT       NOT NULL DEFAULT 0,
    LASTGROOMED             BIGINT        NOT NULL DEFAULT 0,
    VEHICLE                 BIGINT        NOT NULL DEFAULT -10,
    TYPE                    TINYINT       NOT NULL DEFAULT 0,
    SETTINGS                INT           NOT NULL DEFAULT 0,
    PETNAME                 VARCHAR(40)   NOT NULL DEFAULT ""
);

CREATE TABLE POSITION 
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    POSX                    FLOAT         ,
    POSY                    FLOAT         ,
    POSZ                    FLOAT         ,
    ROTATION                FLOAT         ,
    ZONEID                  INT           ,
    LAYER                   INT           NOT NULL DEFAULT 0,
    ONBRIDGE                BIGINT        NOT NULL DEFAULT -10
);

CREATE TABLE OFFSPRING
(
    MOTHERID                BIGINT        NOT NULL PRIMARY KEY,
    FATHERID                BIGINT        NOT NULL DEFAULT 0,
    TRAITS                  BIGINT        NOT NULL DEFAULT 0,
    DELIVERYDAYS            TINYINT       NOT NULL DEFAULT 0
);

CREATE TABLE BRANDS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    OWNERID                 BIGINT        NOT NULL DEFAULT 0,
    LASTBRANDED             BIGINT        NOT NULL DEFAULT 0
);

CREATE TABLE PROTECTED
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    PLAYERID                BIGINT        NOT NULL DEFAULT 0
);

CREATE TABLE SKILLS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    OWNER                   BIGINT        ,
    NUMBER                  INT           ,
    VALUE                   DOUBLE        ,
    MINVALUE                DOUBLE        ,
    LASTUSED                BIGINT
);

CREATE TABLE ANIMALSETTINGS 
(
    WURMID                  BIGINT        NOT NULL,
    PLAYERID                BIGINT        NOT NULL,
    SETTINGS                INT           NOT NULL,
  PRIMARY KEY (WURMID, PLAYERID)
);
