CREATE TABLE CALENDAR
(
    EVENTID                 UNSIGNED SMALLINT(5)   NOT NULL PRIMARY KEY,
    STARTTIME               UNSIGNED BIGINT(20)    NOT NULL,
    TYPE                    UNSIGNED SMALLINT(5)   NOT NULL
);
CREATE TABLE PROTECTEDCORPSES
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY
);
CREATE TABLE ENDGAMEITEMS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    TYPE                    SMALLINT      NOT NULL,
    HOLY                    TINYINT(1)    NOT NULL,
    LASTMOVED               BIGINT        NOT NULL DEFAULT 0
);
CREATE TABLE ITEMS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY DEFAULT 0,
    TEMPLATEID              INT           ,
    NAME                    VARCHAR(40)   ,
    DESCRIPTION             VARCHAR(256)  ,
    PLACE                   SMALLINT      ,
    QUALITYLEVEL            FLOAT         ,
    ORIGINALQUALITYLEVEL    FLOAT         ,
    CAPACITY                FLOAT         ,
    PARENTID                BIGINT        ,
    LASTMAINTAINED          BIGINT        ,
    CREATIONDATE            BIGINT        NOT NULL DEFAULT 0,
    CREATIONSTATE           TINYINT       NOT NULL DEFAULT 0,
    OWNERID                 BIGINT        ,
    LASTOWNERID             BIGINT        ,
    TEMPERATURE             SMALLINT      ,
    POSX                    FLOAT         ,
    POSY                    FLOAT         ,
    POSZ                    FLOAT         ,
    ROTATION                FLOAT         ,
    ZONEID                  INT           ,
    DAMAGE                  FLOAT         ,
    SIZEX                   INT           ,
    SIZEY                   INT           ,
    SIZEZ                   INT           ,
    WEIGHT                  INT           ,
    MATERIAL                TINYINT       ,
    LOCKID                  BIGINT        ,
    PRICE                   INT           NOT NULL DEFAULT 0,
    BLESS                   TINYINT       NOT NULL DEFAULT 0,
    ENCHANT                 TINYINT       NOT NULL DEFAULT 0,
    BANKED                  TINYINT(1)    NOT NULL DEFAULT 0,
    AUXDATA                 TINYINT       NOT NULL DEFAULT 0,
    WORNARMOUR              TINYINT(1)    NOT NULL DEFAULT 0,
    REALTEMPLATE            INT           NOT NULL DEFAULT -10,
    COLOR                   INT           NOT NULL DEFAULT -1,
    FEMALE                  TINYINT(1)    NOT NULL DEFAULT 0,
    MAILED                  TINYINT(1)    NOT NULL DEFAULT 0,
    MAILTIMES               TINYINT       NOT NULL DEFAULT 0,
    TRANSFERRED             TINYINT(1)    NOT NULL DEFAULT 0,
    CREATOR                 VARCHAR(40)   NOT NULL DEFAULT "",
    HIDDEN                  TINYINT(1)    NOT NULL DEFAULT 0,
    RARITY                  TINYINT       NOT NULL DEFAULT 0,
    ONBRIDGE                BIGINT        NOT NULL DEFAULT -10,
    SETTINGS                INT           NOT NULL DEFAULT 0
);
CREATE TABLE FROZENITEMS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY DEFAULT 0,
    TEMPLATEID              INT           ,
    NAME                    VARCHAR(40)   ,
    DESCRIPTION             VARCHAR(256)  ,
    PLACE                   SMALLINT      ,
    QUALITYLEVEL            FLOAT         ,
    ORIGINALQUALITYLEVEL    FLOAT         ,
    CAPACITY                FLOAT         ,
    PARENTID                BIGINT        ,
    LASTMAINTAINED          BIGINT        ,
    CREATIONDATE            BIGINT        NOT NULL DEFAULT 0,
    CREATIONSTATE           TINYINT       NOT NULL DEFAULT 0,
    OWNERID                 BIGINT        ,
    LASTOWNERID             BIGINT        ,
    TEMPERATURE             SMALLINT      ,
    POSX                    FLOAT         ,
    POSY                    FLOAT         ,
    POSZ                    FLOAT         ,
    ROTATION                FLOAT         ,
    ZONEID                  INT           ,
    DAMAGE                  FLOAT         ,
    SIZEX                   INT           ,
    SIZEY                   INT           ,
    SIZEZ                   INT           ,
    WEIGHT                  INT           ,
    MATERIAL                TINYINT       ,
    LOCKID                  BIGINT        ,
    PRICE                   INT           NOT NULL DEFAULT 0,
    BLESS                   TINYINT       NOT NULL DEFAULT 0,
    ENCHANT                 TINYINT       NOT NULL DEFAULT 0,
    BANKED                  TINYINT(1)    NOT NULL DEFAULT 0,
    AUXDATA                 TINYINT       NOT NULL DEFAULT 0,
    WORNARMOUR              TINYINT(1)    NOT NULL DEFAULT 0,
    REALTEMPLATE            INT           NOT NULL DEFAULT -10,
    COLOR                   INT           NOT NULL DEFAULT -1,
    FEMALE                  TINYINT(1)    NOT NULL DEFAULT 0,
    MAILED                  TINYINT(1)    NOT NULL DEFAULT 0,
    MAILTIMES               TINYINT       NOT NULL DEFAULT 0,
    TRANSFERRED             TINYINT(1)    NOT NULL DEFAULT 0,
    CREATOR                 VARCHAR(40)   NOT NULL DEFAULT "",
    HIDDEN                  TINYINT(1)    NOT NULL DEFAULT 0,
    RARITY                  TINYINT(4)    NOT NULL DEFAULT 0,
    ONBRIDGE                BIGINT        NOT NULL DEFAULT -10,
    SETTINGS                INT           NOT NULL DEFAULT 0
);
CREATE TABLE INSCRIPTIONS 
(
    WURMID                  BIGINT(20)    NOT NULL,
    INSCRIPTION             TEXT                   DEFAULT NULL,
    INSCRIBER               VARCHAR(40)   NOT NULL,
    PENCOLOR                INT           NOT NULL DEFAULT 0,
    PRIMARY KEY (WURMID)
);
CREATE TABLE MAIL
(
    ITEMID                  BIGINT        NOT NULL PRIMARY KEY,
    TYPE                    TINYINT       NOT NULL DEFAULT 0,
    SENDER                  BIGINT        NOT NULL DEFAULT -10,
    RECEIVER                BIGINT        NOT NULL DEFAULT -10,
    PRICE                   BIGINT        NOT NULL DEFAULT 0,
    SENT                    BIGINT        NOT NULL DEFAULT 0,
    EXPIRATION              BIGINT        NOT NULL DEFAULT 0,
    SOURCESERVER            INT           NOT NULL DEFAULT 0,
    RETURNED                TINYINT(1)    NOT NULL DEFAULT 0
);
CREATE TABLE ITEMREQUIREMENTS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    WURMID                  BIGINT        NOT NULL DEFAULT 0,
    TEMPLATEID              INT           NOT NULL DEFAULT 0,
    ITEMSDONE               INT           NOT NULL DEFAULT 0
);
CREATE TABLE VEHICLESETTINGS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    SETTINGS                INT           NOT NULL DEFAULT 0
);
CREATE TABLE BODYPARTS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY DEFAULT 0,
    TEMPLATEID              INT           ,
    NAME                    VARCHAR(40)   ,
    DESCRIPTION             VARCHAR(256)  ,
    PLACE                   SMALLINT      ,
    QUALITYLEVEL            FLOAT         ,
    ORIGINALQUALITYLEVEL    FLOAT         ,
    CAPACITY                FLOAT         ,
    PARENTID                BIGINT        ,
    LASTMAINTAINED          BIGINT        ,
    CREATIONDATE            BIGINT        NOT NULL DEFAULT 0,
    CREATIONSTATE           TINYINT       NOT NULL DEFAULT 0,
    OWNERID                 BIGINT        ,
    LASTOWNERID             BIGINT        ,
    TEMPERATURE             SMALLINT      ,
    POSX                    FLOAT         ,
    POSY                    FLOAT         ,
    POSZ                    FLOAT         ,
    ROTATION                FLOAT         ,
    ZONEID                  INT           ,
    DAMAGE                  FLOAT         ,
    SIZEX                   INT           ,
    SIZEY                   INT           ,
    SIZEZ                   INT           ,
    WEIGHT                  INT           ,
    MATERIAL                TINYINT       ,
    LOCKID                  BIGINT        ,
    PRICE                   INT           NOT NULL DEFAULT 0,
    BLESS                   TINYINT       NOT NULL DEFAULT 0,
    ENCHANT                 TINYINT       NOT NULL DEFAULT 0,
    BANKED                  TINYINT(1)    NOT NULL DEFAULT 0,
    AUXDATA                 TINYINT       NOT NULL DEFAULT 0,
    WORNARMOUR              TINYINT(1)    NOT NULL DEFAULT 0,
    REALTEMPLATE            INT           NOT NULL DEFAULT -10,
    COLOR                   INT           NOT NULL DEFAULT -1,
    FEMALE                  TINYINT(1)    NOT NULL DEFAULT 0,
    MAILED                  TINYINT(1)    NOT NULL DEFAULT 0,
    MAILTIMES               TINYINT       NOT NULL DEFAULT 0,
    TRANSFERRED             TINYINT(1)    NOT NULL DEFAULT 0,
    CREATOR                 VARCHAR(40)   NOT NULL DEFAULT "",
    HIDDEN                  TINYINT(1)    NOT NULL DEFAULT 0,
    RARITY                  TINYINT(4)    NOT NULL DEFAULT 0,
    ONBRIDGE                BIGINT        NOT NULL DEFAULT -10,
    SETTINGS                INT           NOT NULL DEFAULT 0
);
CREATE TABLE COINS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY DEFAULT 0,
    TEMPLATEID              INT           ,
    NAME                    VARCHAR(40)   ,
    DESCRIPTION             VARCHAR(256)  ,
    PLACE                   SMALLINT      ,
    QUALITYLEVEL            FLOAT         ,
    ORIGINALQUALITYLEVEL    FLOAT         ,
    CAPACITY                FLOAT         ,
    PARENTID                BIGINT        ,
    LASTMAINTAINED          BIGINT        ,
    CREATIONDATE            BIGINT        NOT NULL DEFAULT 0,
    CREATIONSTATE           TINYINT       NOT NULL DEFAULT 0,
    OWNERID                 BIGINT        ,
    LASTOWNERID             BIGINT        ,
    TEMPERATURE             SMALLINT      ,
    POSX                    FLOAT         ,
    POSY                    FLOAT         ,
    POSZ                    FLOAT         ,
    ROTATION                FLOAT         ,
    ZONEID                  INT           ,
    DAMAGE                  FLOAT         ,
    SIZEX                   INT           ,          
    SIZEY                   INT           ,
    SIZEZ                   INT           ,
    WEIGHT                  INT           ,
    MATERIAL                TINYINT       ,
    LOCKID                  BIGINT        ,
    PRICE                   INT           NOT NULL DEFAULT 0,
    BLESS                   TINYINT       NOT NULL DEFAULT 0,
    ENCHANT                 TINYINT       NOT NULL DEFAULT 0,
    BANKED                  TINYINT(1)    NOT NULL DEFAULT 0,
    AUXDATA                 TINYINT       NOT NULL DEFAULT 0,
    WORNARMOUR              TINYINT(1)    NOT NULL DEFAULT 0,
    REALTEMPLATE            INT           NOT NULL DEFAULT -10,
    COLOR                   INT           NOT NULL DEFAULT -1,
    FEMALE                  TINYINT(1)    NOT NULL DEFAULT 0,
    MAILED                  TINYINT(1)    NOT NULL DEFAULT 0,
    MAILTIMES               TINYINT       NOT NULL DEFAULT 0,
    TRANSFERRED             TINYINT(1)    NOT NULL DEFAULT 0,
    CREATOR                 VARCHAR(40)   NOT NULL DEFAULT "",
    HIDDEN                  TINYINT(1)    NOT NULL DEFAULT 0,
    RARITY                  TINYINT(4)    NOT NULL DEFAULT 0,
    ONBRIDGE                BIGINT        NOT NULL DEFAULT -10,
    SETTINGS                INT           NOT NULL DEFAULT 0
);
CREATE TABLE SPELLEFFECTS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    ITEMID                  BIGINT        ,
    TYPE                    SMALLINT      ,
    POWER                   FLOAT         ,
    TIMELEFT                INT
);
CREATE TABLE LOCKS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    KEYIDS                  BLOB          ,
    LOCKED                  TINYINT(1)    NOT NULL DEFAULT 0
);
CREATE TABLE ITEMKEYS
(
    KEYID                   BIGINT        NOT NULL,
    LOCKID                  BIGINT        NOT NULL
);
CREATE TABLE ITEMDATA
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    DATA1                   INT           NOT NULL,
    DATA2                   INT           NOT NULL
);
CREATE TABLE EFFECTS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    OWNER                   BIGINT        ,
    TYPE                    SMALLINT      ,
    POSX                    FLOAT         ,
    POSY                    FLOAT         ,
    POSZ                    FLOAT         ,
    STARTTIME               BIGINT
);
CREATE TABLE ITEMSETTINGS 
(
    WURMID                  BIGINT        NOT NULL,
    PLAYERID                BIGINT        NOT NULL,
    SETTINGS                INT           NOT NULL,
  PRIMARY KEY (WURMID, PLAYERID)
);
