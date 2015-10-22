
CREATE TABLE MAP_ANNOTATIONS
(
  ID                        BIGINT(20)    NOT NULL,
  NAME                      VARCHAR(255)  DEFAULT NULL,
  POSITION                  BIGINT(20)    DEFAULT NULL,
  POITYPE                   TINYINT(4)    DEFAULT NULL,
  OWNERID                   BIGINT(20)    DEFAULT NULL,
  SERVER                    VARCHAR(50)   DEFAULT NULL,
  ICON                      TINYINT(4)    DEFAULT NULL,
  PRIMARY KEY (`ID`)
);

CREATE TABLE CHAMPIONS(
    ID                      INTEGER       PRIMARY KEY,
    WURMID                  BIGINT        NOT NULL DEFAULT 0,
    NAME                    VARCHAR(40)   NOT NULL DEFAULT "",
    POINTS                  INTEGER       NOT NULL DEFAULT 0,
    CURRENT                 TINYINT(1)    NOT NULL DEFAULT 1
);

CREATE TABLE PLAYERS(
    NAME                    VARCHAR(40)   NOT NULL UNIQUE,
    PASSWORD                VARCHAR(80)   ,
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    FACE                    BIGINT        NOT NULL DEFAULT 0,
    CREATIONDATE            BIGINT        NOT NULL DEFAULT 0,
    LASTLOGOUT              BIGINT        ,
    PLAYINGTIME             BIGINT        ,
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
    IPADDRESS               VARCHAR(16)   ,
    REIMBURSED              TINYINT(1)    NOT NULL DEFAULT 0,
    PLANTEDSIGN             BIGINT        ,
    BANNED                  TINYINT(1)    NOT NULL DEFAULT 0,
    PAYMENTEXPIRE           BIGINT        NOT NULL DEFAULT 0,
    POWER                   TINYINT       NOT NULL DEFAULT 0,
    RANK                    INT           NOT NULL DEFAULT 1000,
    MAXRANK                 INT           NOT NULL DEFAULT 1000,
    LASTMODIFIEDRANK        BIGINT        NOT NULL DEFAULT 0,
    DEVTALK                 TINYINT(1)    NOT NULL DEFAULT 0,
    WARNINGS                SMALLINT      NOT NULL DEFAULT 0,
    LASTWARNED              BIGINT        NOT NULL DEFAULT 0,
    FAITH                   FLOAT         NOT NULL DEFAULT 0,
    DEITY                   TINYINT       NOT NULL DEFAULT 0,
    ALIGNMENT               FLOAT         NOT NULL DEFAULT 0,
    GOD                     TINYINT       NOT NULL DEFAULT 0,
    FAVOR                   FLOAT         NOT NULL DEFAULT 0,
    LASTCHANGEDDEITY        BIGINT        NOT NULL DEFAULT 0,
    REALDEATH               TINYINT       NOT NULL DEFAULT 0,
    CHEATED                 BIGINT        NOT NULL DEFAULT 0,
    LASTFATIGUE             BIGINT        NOT NULL DEFAULT 0,
    FATIGUE                 INT           NOT NULL DEFAULT 0,
    DEAD                    TINYINT(1)    NOT NULL DEFAULT 0,
    STEALTH                 TINYINT(1)    NOT NULL DEFAULT 0,
    KINGDOM                 TINYINT       NOT NULL DEFAULT 0,
    SESSIONKEY              VARCHAR(50)   ,
    SESSIONEXPIRE           BIGINT        NOT NULL DEFAULT 0,
    MUTED                   TINYINT(1)    NOT NULL DEFAULT 0,
    MUTETIMES               SMALLINT      NOT NULL DEFAULT 0,
    VERSION                 BIGINT        NOT NULL DEFAULT 0,
    LASTFAITH               BIGINT        NOT NULL DEFAULT 0,
    NUMFAITH                TINYINT       NOT NULL DEFAULT 0,
    NUMSCHANGEDKINGDOM      TINYINT       NOT NULL DEFAULT 0,
    LASTCHANGEDKINGDOM      BIGINT        NOT NULL DEFAULT 0,
    LASTLOSTCHAMPION        BIGINT        NOT NULL DEFAULT 0,
    CHAMPIONPOINTS          SMALLINT      NOT NULL DEFAULT 0,
    CHAMPCHANNELING         FLOAT         NOT NULL DEFAULT 0,
    MONEY                   BIGINT        NOT NULL DEFAULT 0,
    CLIMBING                TINYINT(1)    NOT NULL DEFAULT 0,
    AGE                     SMALLINT      NOT NULL DEFAULT 0,
    LASTPOLLEDAGE           BIGINT        NOT NULL DEFAULT 0,
    FAT                     TINYINT       NOT NULL DEFAULT 0,
    TRAITS                  BIGINT        NOT NULL DEFAULT 0,
    BANREASON               VARCHAR(255)  NOT NULL DEFAULT "",
    CHEATREASON             VARCHAR(60)   NOT NULL DEFAULT "",
    BANEXPIRY               BIGINT        NOT NULL DEFAULT 0,
    REPUTATION              SMALLINT      NOT NULL DEFAULT 0,
    LASTPOLLEDREP           BIGINT        NOT NULL DEFAULT 0,
    TITLE                   INT           NOT NULL DEFAULT 0,
    PET                     BIGINT        NOT NULL DEFAULT -10,
    NICOTINE                FLOAT         NOT NULL DEFAULT 0,
    ALCOHOL                 FLOAT         NOT NULL DEFAULT 0,
    NICOTINETIME            BIGINT        NOT NULL DEFAULT 0,
    ALCOHOLTIME             BIGINT        NOT NULL DEFAULT 0,
    MAYMUTE                 TINYINT(1)    NOT NULL DEFAULT 0,
    MUTEEXPIRY              BIGINT        NOT NULL DEFAULT 0,
    MUTEREASON              VARCHAR(255)  NOT NULL DEFAULT "",
    DOMINATOR               BIGINT        NOT NULL DEFAULT -10,
    MOTHER                  BIGINT        NOT NULL DEFAULT -10,
    FATHER                  BIGINT        NOT NULL DEFAULT -10,
    REBORN                  TINYINT(1)    NOT NULL DEFAULT 0,
    LOYALTY                 FLOAT         NOT NULL DEFAULT 0,
    LOGGING                 TINYINT       NOT NULL DEFAULT 0,
    LASTPOLLEDLOYALTY       BIGINT        NOT NULL DEFAULT 0,
    CURRENTSERVER           INT           NOT NULL DEFAULT 0,
    LASTSERVER              INT           NOT NULL DEFAULT 0,
    REFERRER                BIGINT        NOT NULL DEFAULT 0,
    EMAIL                   VARCHAR(127)  NOT NULL DEFAULT "",
    PWANSWER                VARCHAR(20)   NOT NULL DEFAULT "",
    PWQUESTION              VARCHAR(127)  NOT NULL DEFAULT "",
    PRIEST                  TINYINT(1)    NOT NULL DEFAULT 0,
    BED                     BIGINT        NOT NULL DEFAULT 0,
    SLEEP                   INT           NOT NULL DEFAULT 0,
    MAYUSESHOP              TINYINT(1)    NOT NULL DEFAULT 0,
    THEFTWARNED             TINYINT(1)    NOT NULL DEFAULT 0,
    NOREIMB                 TINYINT(1)    NOT NULL DEFAULT 0,
    DEATHPROT               TINYINT(1)    NOT NULL DEFAULT 0,
    CHANGEDVILLAGE          BIGINT        NOT NULL DEFAULT 0,
    FATIGUETODAY            INT           NOT NULL DEFAULT 0,
    FATIGUEYDAY             INT           NOT NULL DEFAULT 0,
    FIGHTMODE               TINYINT                DEFAULT 2,
    NEXTAFFINITY            BIGINT        NOT NULL DEFAULT 0,
    DETECTIONSECS           SMALLINT      NOT NULL DEFAULT 0,
    TYPE                    TINYINT                DEFAULT 0,
    TUTORIALLEVEL           INT           NOT NULL DEFAULT 0,
    LASTTRIGGER             INT           NOT NULL DEFAULT 0,
    SKIPPEDTUTORIAL         TINYINT(1)    NOT NULL DEFAULT 0,
    AUTOFIGHT               TINYINT(1)    NOT NULL DEFAULT 0,
    APPOINTMENTS            BIGINT        NOT NULL DEFAULT 0,
    VEHICLE                 BIGINT        NOT NULL DEFAULT -10,
    DISEASE                 TINYINT       NOT NULL DEFAULT 0,
    PA                      TINYINT(1)    NOT NULL DEFAULT 0,
    APPOINTPA               TINYINT(1)    NOT NULL DEFAULT 0,
    PAWINDOW                TINYINT(1)    NOT NULL DEFAULT 0,
    ENEMYTERR               TINYINT       NOT NULL DEFAULT 0,
    LASTMOVEDTERR           BIGINT(20)    NOT NULL DEFAULT 0,
    PRIESTTYPE              TINYINT       NOT NULL DEFAULT 0,
    LASTCHANGEDPRIEST       BIGINT        NOT NULL DEFAULT 0,
    MOVEDINV                TINYINT(1)    NOT NULL DEFAULT 0,
    FREETRANSFER            TINYINT(1)    NOT NULL DEFAULT 0,
    HASSKILLGAIN            TINYINT(1)    NOT NULL DEFAULT 1,
    VOTEDKING               TINYINT(1)    NOT NULL DEFAULT 0,
    EPICSERVER              INT           NOT NULL DEFAULT 0,
    EPICKINGDOM             TINYINT       NOT NULL DEFAULT 0,
    CHAOSKINGDOM            TINYINT       NOT NULL DEFAULT 0,
    HOTA_WINS               SMALLINT      NOT NULL DEFAULT 0,
    SPAMMODE                TINYINT(1)    NOT NULL DEFAULT 1,
    KARMA                   INTEGER       NOT NULL DEFAULT 0,
    MAXKARMA                INTEGER       NOT NULL DEFAULT 0,
    TOTALKARMA              INTEGER       NOT NULL DEFAULT 0,
    SCENARIOKARMA           INTEGER       NOT NULL DEFAULT 0,
    BLOOD                   TINYINT       NOT NULL DEFAULT 0,
    ABILITIES               BIGINT        NOT NULL DEFAULT 0,
    ABILITYTITLE            INT           NOT NULL DEFAULT -1,
    FLAGS                   BIGINT        NOT NULL DEFAULT 0,
    UNDEADTYPE              TINYINT       NOT NULL DEFAULT 0,
    UNDEADKILLS             INT           NOT NULL DEFAULT 0,
    UNDEADPKILLS            INT           NOT NULL DEFAULT 0,
    UNDEADPSECS             INT           NOT NULL DEFAULT 0,
    MODELNAME               VARCHAR(127)  NOT NULL DEFAULT "",
    MONEYSALES              BIGINT        NOT NULL DEFAULT 0
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

CREATE TABLE AWARDS
(
   WURMID                   BIGINT        NOT NULL PRIMARY KEY,
   DAYSPREM                 INT           NOT NULL DEFAULT 0,
   MONTHSPREM               INT           NOT NULL DEFAULT 0,
   MONTHSEVER               INT           NOT NULL DEFAULT 0,
   CONSECMONTHS             INT           NOT NULL DEFAULT 0,
   SILVERSPURCHASED         INT           NOT NULL DEFAULT 0,
   LASTTICKEDPREM           BIGINT        NOT NULL DEFAULT 0
);

CREATE TABLE ARTISTS
( 
    WURMID                  BIGINT        NOT NULL PRIMARY KEY DEFAULT 0,
    SOUND                   TINYINT(1)    NOT NULL DEFAULT 0,
    GRAPHICS                TINYINT(1)    NOT NULL DEFAULT 0
);

CREATE TABLE WISHES
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    PLAYER                  BIGINT        NOT NULL DEFAULT 0,
    WISH                    VARCHAR(41)   NOT NULL DEFAULT "",
    COIN                    VARCHAR(20)   NOT NULL DEFAULT "",
    TOFULFILL               TINYINT(1)    NOT NULL DEFAULT 0,
    DONE                    TINYINT(1)    NOT NULL DEFAULT 0
);

CREATE TABLE ACHIEVEMENTS
( 
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    PLAYER                  BIGINT        NOT NULL DEFAULT 0,
    ACHIEVEMENT             INT           NOT NULL DEFAULT 0,
    COUNTER                 INT           NOT NULL DEFAULT 0,
    ADATE                   TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ACHIEVEMENTTEMPLATES
( 
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    NUMBER                  INT           NOT NULL DEFAULT 0,
    NAME                    VARCHAR(40)   NOT NULL DEFAULT "",
    TRIGGERON               INT           NOT NULL DEFAULT 0,
    DESCRIPTION             VARCHAR(200)  NOT NULL DEFAULT "",
    CREATORNAME             VARCHAR(40)   NOT NULL DEFAULT "",
    ATYPE                   TINYINT       NOT NULL DEFAULT 0,
    PLAYUPDATE              TINYINT(1)    NOT NULL DEFAULT 0
);

CREATE TABLE COOLDOWNS
( 
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    OWNERID                 BIGINT        NOT NULL DEFAULT 0,
    SPELLID                 INT           NOT NULL DEFAULT 0,
    AVAILABLE               BIGINT        NOT NULL DEFAULT 0
);

CREATE TABLE CULT
( 
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    LASTMEDITATED           BIGINT        NOT NULL DEFAULT 0,
    LASTRECEIVEDLEVEL       BIGINT        NOT NULL DEFAULT 0,
    LASTAPPOINTEDLEVEL      BIGINT        NOT NULL DEFAULT 0,
    LEVEL                   TINYINT       NOT NULL DEFAULT 0,
    PATH                    TINYINT       NOT NULL DEFAULT 0,
    COOLDOWN1               BIGINT        NOT NULL DEFAULT 0,
    COOLDOWN2               BIGINT        NOT NULL DEFAULT 0,
    COOLDOWN3               BIGINT        NOT NULL DEFAULT 0,
    COOLDOWN4               BIGINT        NOT NULL DEFAULT 0,
    COOLDOWN5               BIGINT        NOT NULL DEFAULT 0,
    COOLDOWN6               BIGINT        NOT NULL DEFAULT 0,
    COOLDOWN7               BIGINT        NOT NULL DEFAULT 0
);

CREATE TABLE REFERERS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    WURMID                  BIGINT        NOT NULL DEFAULT 0,
    REFERER                 BIGINT        NOT NULL DEFAULT 0,
    HANDLED                 TINYINT(1)    NOT NULL DEFAULT 0,
    MONEY                   TINYINT(1)    NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS MISSIONTRIGGERS;
CREATE TABLE MISSIONTRIGGERS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    NAME                    VARCHAR(40)   NOT NULL DEFAULT "",
    DESCRIPTION             VARCHAR(100)  NOT NULL DEFAULT "",
    ONITEMCREATED           INT           NOT NULL DEFAULT 0,
    ONACTIONPERFORMED       INT           NOT NULL DEFAULT 0,
    ONTARGET                BIGINT        NOT NULL DEFAULT 0,
    MISSION_REQ             INT           NOT NULL DEFAULT 0,
    MISSION_STATE_REQ       FLOAT         NOT NULL DEFAULT 0,
    SECONDS                 INT           NOT NULL DEFAULT 0,
    INACTIVE                TINYINT(1)    NOT NULL DEFAULT 0,
    CREATOR                 VARCHAR(40)   NOT NULL DEFAULT "",
    CREATEDDATE             VARCHAR(20)   ,
    LASTMODIFIER            VARCHAR(40)   NOT NULL DEFAULT "",
    CREATORID               BIGINT        NOT NULL DEFAULT 0,
    CREATORTYPE             TINYINT       NOT NULL DEFAULT 0,
    SPAWNPOINT              TINYINT(1)    NOT NULL DEFAULT 0,
    LASTMODIFIEDDATE        TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS TRIGGEREFFECTS;
CREATE TABLE TRIGGEREFFECTS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    NAME                    VARCHAR(40)   NOT NULL DEFAULT "",
    DESCRIPTION             VARCHAR(1000) NOT NULL DEFAULT "",
    TOP                     VARCHAR(1000) NOT NULL DEFAULT "",
    REWARDITEM              INT           NOT NULL DEFAULT 0,
    REWARDITEMNUMBERS       INT           NOT NULL DEFAULT 0,
    REWARDQUALITY           INT           NOT NULL DEFAULT 0,
    REWARDBYTE              TINYINT       NOT NULL DEFAULT 0,
    EXISTINGREWARDITEMID    BIGINT        NOT NULL DEFAULT 0,
    REWARDTARGETCONTAINERID BIGINT        NOT NULL DEFAULT 0,
    REWARDSKILLNUM          INT           NOT NULL DEFAULT 0,
    REWARDSKILLVAL          FLOAT         NOT NULL DEFAULT 0,
    SPECIALEFFECTID         INT           NOT NULL DEFAULT 0,
    ACHIEVEMENTID           INT           NOT NULL DEFAULT 0,
    TRIGGERID               INT           NOT NULL DEFAULT 0,
    SOUND                   VARCHAR(50)   NOT NULL DEFAULT "",
    TEXT                    VARCHAR(1000) NOT NULL DEFAULT "",
    MISSION                 INT           NOT NULL DEFAULT 0,
    MISSIONSTATECHANGE      FLOAT         NOT NULL DEFAULT 0,
    DESTROYTARGET           TINYINT(1)    NOT NULL DEFAULT 0,
    INACTIVE                TINYINT(1)    NOT NULL DEFAULT 0,
    CREATOR                 VARCHAR(40)   NOT NULL DEFAULT "",
    CREATEDDATE             VARCHAR(20)   ,
    LASTMODIFIER            VARCHAR(40)   NOT NULL DEFAULT "",
    CREATORID               BIGINT        NOT NULL DEFAULT 0,
    CREATORTYPE             TINYINT       NOT NULL DEFAULT 0,
    ITEMMATERIAL            TINYINT       NOT NULL DEFAULT 0,
    NEWBIE                  TINYINT(1)    NOT NULL DEFAULT 0,
    MODIFYTILEX             INT           NOT NULL DEFAULT 0,
    MODIFYTILEY             INT           NOT NULL DEFAULT 0,
    NEWTILETYPE             INT           NOT NULL DEFAULT 0,
    NEWTILEDATA             TINYINT       NOT NULL DEFAULT 0,
    SPAWNTILEX              INT           NOT NULL DEFAULT 0,
    SPAWNTILEY              INT           NOT NULL DEFAULT 0,
    CREATURESPAWN           INT           NOT NULL DEFAULT 0,
    CREATUREAGE             INT           NOT NULL DEFAULT 0,
    TELEPORTX               INT           NOT NULL DEFAULT 0,
    TELEPORTY               INT           NOT NULL DEFAULT 0,
    TELEPORTLAYER           INT           NOT NULL DEFAULT 0,
    MISSIONACTIVATED        INT           NOT NULL DEFAULT 0,
    MISSIONDEACTIVATED      INT           NOT NULL DEFAULT 0,
    WSZX                    INT           NOT NULL DEFAULT 0,
    WSZY                    INT           NOT NULL DEFAULT 0,
    STARTSKILLGAIN          TINYINT(1)    NOT NULL DEFAULT 0,
    STOPSKILLGAIN           TINYINT(1)    NOT NULL DEFAULT 0,
    DESTROYITEMS            TINYINT(1)    NOT NULL DEFAULT 0,
    LASTMODIFIEDDATE        TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS MISSIONS;
CREATE TABLE MISSIONS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    NAME                    VARCHAR(100)  NOT NULL DEFAULT "",
    INSTRUCTION             VARCHAR(400)  NOT NULL DEFAULT "",
    INACTIVE                TINYINT(1)    NOT NULL DEFAULT 0,
    CREATOR                 VARCHAR(40)   NOT NULL DEFAULT "",
    CREATEDDATE             VARCHAR(20)   ,
    LASTMODIFIER            VARCHAR(40)   NOT NULL DEFAULT "",
    MAXTIMESECS             INT           NOT NULL DEFAULT 0,
    MAYBERESTARTED          TINYINT(1)    NOT NULL DEFAULT 0,
    SECONDCHANCE            TINYINT(1)    NOT NULL DEFAULT 0,
    CREATORID               BIGINT        NOT NULL DEFAULT 0,
    CREATORTYPE             TINYINT       NOT NULL DEFAULT 0,
    FAILONDEATH             TINYINT(1)    NOT NULL DEFAULT 0,
    LASTMODIFIEDDATE        TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS MISSIONSPERFORMED;
CREATE TABLE MISSIONSPERFORMED
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    PERFORMER               BIGINT        NOT NULL DEFAULT 0,
    INACTIVE                TINYINT(1)    NOT NULL DEFAULT 0,
    MISSION                 INT           NOT NULL DEFAULT 0,
    STATE                   FLOAT         NOT NULL DEFAULT 0,
    STARTTIME               BIGINT        NOT NULL DEFAULT 0,
    LASTEVENT               TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FINISHEDDATE            VARCHAR(20)   ,
    ENDTIME                 BIGINT        NOT NULL DEFAULT 0
);

CREATE TABLE REIMB 
(
    NAME                    VARCHAR(40)   NOT NULL PRIMARY KEY,
    PASSWORD                VARCHAR(30)   ,
    EMAIL                   VARCHAR(127)  ,
    PAYPALEMAIL             VARCHAR(127)  ,
    PWANSWER                VARCHAR(20)   ,
    PWQUESTION              VARCHAR(127)  ,
    MONTHS                  INTEGER       NOT NULL DEFAULT 0,
    SILVER                  INTEGER       NOT NULL DEFAULT 0 ,
    TITLEBOK                TINYINT(1)    NOT NULL DEFAULT 0,
    REIMBURSED              TINYINT(1)    NOT NULL DEFAULT 0,
    DAYSLEFT                INTEGER       NOT NULL DEFAULT 0,
    WILD                    TINYINT(1)    NOT NULL DEFAULT 0,
    KINGDOM                 TINYINT       NOT NULL DEFAULT 1,
    POWER                   TINYINT       NOT NULL DEFAULT 0,
    GENDER                  TINYINT       NOT NULL DEFAULT 1,
    CREATED                 TINYINT(1)    NOT NULL DEFAULT 0,
    GARB                    INT           NOT NULL DEFAULT 0
);

CREATE TABLE KILLS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    WURMID                  BIGINT        NOT NULL,
    VICTIM                  BIGINT        NOT NULL,
    VICTIMNAME              VARCHAR(255)  NOT NULL,
    KILLTIME                BIGINT        NOT NULL
);

CREATE TABLE AFFINITIES
(
    WURMID                  BIGINT        NOT NULL,
    SKILL                   INT           NOT NULL,
    NUMBER                  TINYINT       NOT NULL,
    PRIMARY KEY  (WURMID, SKILL)
);

CREATE TABLE FRIENDS
(
    WURMID                  BIGINT        NOT NULL,
    FRIEND                  BIGINT        NOT NULL,
    CATEGORY                TINYINT(4)    NOT NULL DEFAULT 0,
    PRIMARY KEY (WURMID, FRIEND)
);

CREATE TABLE ENEMIES
(
    WURMID                  BIGINT        NOT NULL,
    ENEMY                   BIGINT        NOT NULL,
    PRIMARY KEY (WURMID, ENEMY)
);

CREATE TABLE IGNORED
(
    WURMID                  BIGINT        NOT NULL,
    IGNOREE                 BIGINT        NOT NULL,
    PRIMARY KEY (WURMID, IGNOREE)
);

CREATE TABLE BANNEDIPS
(
    IPADDRESS               VARCHAR(16)   NOT NULL PRIMARY KEY UNIQUE,
    BANREASON               VARCHAR(255)  NOT NULL DEFAULT "",
    BANEXPIRY               BIGINT        NOT NULL
);

CREATE TABLE GMMESSAGES
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    TIME                    BIGINT        NOT NULL,
    SENDER                  VARCHAR(200)  NOT NULL,
    MESSAGE                 VARCHAR(200)  NOT NULL
);

CREATE TABLE MGMTMESSAGES
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    TIME                    BIGINT        NOT NULL,
    SENDER                  VARCHAR(200)  NOT NULL,
    MESSAGE                 VARCHAR(200)  NOT NULL
);

CREATE TABLE SKILLS
(
    ID                      BIGINT        NOT NULL PRIMARY KEY,
    OWNER                   BIGINT        ,
    NUMBER                  INT           ,
    VALUE                   DOUBLE        ,
    MINVALUE                DOUBLE        ,
    LASTUSED                BIGINT        ,
    DAY1                    FLOAT         NOT NULL DEFAULT 0,
    DAY2                    FLOAT         NOT NULL DEFAULT 0,
    DAY3                    FLOAT         NOT NULL DEFAULT 0,
    DAY4                    FLOAT         NOT NULL DEFAULT 0,
    DAY5                    FLOAT         NOT NULL DEFAULT 0,
    DAY6                    FLOAT         NOT NULL DEFAULT 0,
    DAY7                    FLOAT         NOT NULL DEFAULT 0,
    WEEK2                   FLOAT         NOT NULL DEFAULT 0
);


CREATE TABLE WOUNDS
(
    ID                      BIGINT        NOT NULL PRIMARY KEY,
    OWNER                   BIGINT        ,
    TYPE                    TINYINT       ,
    LOCATION                TINYINT       ,
    SEVERITY                FLOAT         ,
    POISONSEVERITY          FLOAT         ,
    INFECTIONSEVERITY       FLOAT         ,
    BANDAGED                TINYINT(1)    ,
    LASTPOLLED              BIGINT        ,
    HEALEFF                 TINYINT       NOT NULL DEFAULT 0
);

CREATE TABLE TITLES
(
    WURMID                  BIGINT        NOT NULL,
    TITLEID                 INT           NOT NULL,
    TITLENAME               VARCHAR(50)   ,
    PRIMARY KEY (WURMID, TITLEID)
);

CREATE TABLE SPELLEFFECTS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    OWNER                   BIGINT        ,
    TYPE                    SMALLINT      ,
    POWER                   FLOAT         ,
    EFFTYPE                 TINYINT       NOT NULL DEFAULT 0,
    INFLUENCE               TINYINT       NOT NULL DEFAULT 0,
    TIMELEFT                INT
);

DROP TABLE IF EXISTS VOTES;
CREATE TABLE VOTES(
    PLAYERID                BIGINT        NOT NULL,
    QUESTIONID              INT           NOT NULL,
    OPTION1                 TINYINT(1)    NOT NULL DEFAULT 0,
    OPTION2                 TINYINT(1)    NOT NULL DEFAULT 0,
    OPTION3                 TINYINT(1)    NOT NULL DEFAULT 0,
    OPTION4                 TINYINT(1)    NOT NULL DEFAULT 0,
  PRIMARY KEY(PLAYERID,QUESTIONID)
);

CREATE TABLE PLAYERHISTORYIPS
(
    PLAYERID                BIGINT        NOT NULL,
    IPADDRESS               VARCHAR(16)   NOT NULL,
    FIRSTUSED               BIGINT        NOT NULL,
    LASTUSED                BIGINT        NOT NULL,
  PRIMARY KEY (PLAYERID, IPADDRESS)
);

CREATE TABLE PLAYEREHISTORYEMAIL
(
    PLAYERID                BIGINT        NOT NULL,
    EMAIL_ADDRESS           VARCHAR(127)  NOT NULL,
    DATED                   BIGINT        NOT NULL,
  PRIMARY KEY (PLAYERID, EMAIL_ADDRESS)
);
CREATE TABLE PERMISSIONSHISTORY
(
    PK                      INTEGER           NOT NULL PRIMARY KEY,
    OBJECTID                BIGINT        NOT NULL,
    EVENTDATE               BIGINT        NOT NULL,
    PLAYERID                BIGINT        NOT NULL,
    PERFORMER               VARCHAR(40)   NOT NULL,
    EVENT                   VARCHAR(255)  NOT NULL
);
