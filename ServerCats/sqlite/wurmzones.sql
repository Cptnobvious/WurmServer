
CREATE TABLE VILLAGERECRUITMENT
(
  VILLAGE                   INT(11)       NOT NULL,
  DESCRIPTION               VARCHAR(200)  DEFAULT NULL,
  CONTACT                   BIGINT(20)    DEFAULT NULL,
  CREATED                   DATE          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KINGDOM                   INT(11)       NOT NULL,
  PRIMARY KEY (`VILLAGE`)
);

CREATE TABLE ZONES
(
    ZONEID                  INT           primary key,
    STARTX                  INT           ,
    ENDX                    INT           ,
    STARTY                  INT           ,
    ENDY                    INT           ,
    LASTPOLLED              BIGINT        ,
    CREATURES               BLOB          ,
    ITEMS                   BLOB          ,
    STRUCTURES              BLOB
);

CREATE TABLE HOTA_ITEMS
(
    ITEMID                  BIGINT        primary key DEFAULT 0,
    ITEMTYPE                TINYINT       NOT NULL DEFAULT 0
);

CREATE TABLE HOTA_HELPERS
(
    WURMID                  BIGINT        primary key DEFAULT 0,
    CONQUERS                INT           NOT NULL DEFAULT 0
);

CREATE TABLE FOCUSZONES
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    STARTX                  INT           NOT NULL DEFAULT 0,
    ENDX                    INT           NOT NULL DEFAULT 0,
    STARTY                  INT           NOT NULL DEFAULT 0,
    ENDY                    INT           NOT NULL DEFAULT 0,
    TYPE                    TINYINT       NOT NULL DEFAULT 0,
    NAME                    VARCHAR(30)   NOT NULL DEFAULT "",
    DESCRIPTION             VARCHAR(1000) NOT NULL DEFAULT ""
);

CREATE TABLE MINING
(
    TILEX                   INT           ,
    TILEY                   INT           ,
    STATE                   TINYINT       ,
    PRIMARY KEY (TILEX, TILEY)
);

CREATE TABLE DENS
(
    TEMPLATEID              INT           primary key,
    TILEX                   INT           ,
    TILEY                   INT           ,
    SURFACED                TINYINT(1)
);

CREATE TABLE STRUCTURES
(
    WURMID                  BIGINT        primary key,
    CENTERX                 INT           ,
    CENTERY                 INT           ,
    ROOF                    TINYINT       ,
    FINISHED                TINYINT(1)    NOT NULL DEFAULT 0,
    FINFINISHED             TINYINT(1)    NOT NULL DEFAULT 0,
    SURFACED                TINYINT(1)    ,
    NAME                    VARCHAR(255)  ,
    WRITID                  BIGINT        ,
    ALLOWSALLIES            TINYINT(1)    NOT NULL DEFAULT 0,
    ALLOWSVILLAGERS         TINYINT(1)    NOT NULL DEFAULT 0,
    ALLOWSKINGDOM           TINYINT(1)    NOT NULL DEFAULT 0,
    STRUCTURETYPE           TINYINT       NOT NULL DEFAULT 0,
    PLANNER                 VARCHAR(40)   NOT NULL DEFAULT "",
    OWNERID                 BIGINT        NOT NULL DEFAULT -10,
    SETTINGS                INT           NOT NULL DEFAULT 0,
    VILLAGE                 INT           NOT NULL DEFAULT -1
);

CREATE TABLE BUILDTILES
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    STRUCTUREID             BIGINT        NOT NULL DEFAULT -10,
    TILEX                   INT           NOT NULL DEFAULT 0,
    TILEY                   INT           NOT NULL DEFAULT 0,
    LAYER                   INT           NOT NULL DEFAULT 0
);

CREATE TABLE STRUCTUREGUESTS
(
    STRUCTUREID             BIGINT        NOT NULL,
    GUESTID                 BIGINT        NOT NULL,
    SETTINGS                INT           NOT NULL DEFAULT 0,
    PRIMARY KEY (STRUCTUREID, GUESTID)
);

CREATE TABLE DOORS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    STRUCTURE               BIGINT        ,
    INNERWALL               BIGINT        ,
    OUTERWALL               BIGINT        ,
    LOCKID                  BIGINT        NOT NULL DEFAULT -10,
    NAME                    VARCHAR(40)   NOT NULL DEFAULT "",
    SETTINGS                INT           NOT NULL DEFAULT 0
);
CREATE TABLE FLOORS
(
    ID                      INTEGER                NOT NULL PRIMARY KEY,
    STRUCTURE               BIGINT(20)             DEFAULT NULL,
    TYPE                    TINYINT(4)             DEFAULT NULL,
    LASTMAINTAINED          BIGINT(20)             DEFAULT NULL,
    ORIGINALQL              FLOAT                  DEFAULT NULL,
    CURRENTQL               FLOAT                  DEFAULT NULL,
    DAMAGE                  FLOAT                  DEFAULT NULL,
    TILEX                   INT(11)                DEFAULT NULL,
    TILEY                   INT(11)                DEFAULT NULL,
    STATE                   TINYINT(4)             DEFAULT NULL,
    COLOR                   INT(11)       NOT NULL DEFAULT '-1',
    MATERIAL                TINYINT(4)    NOT NULL DEFAULT '0',
    HEIGHTOFFSET            INT(11)       NOT NULL DEFAULT '0',
    LAYER                   INT           NOT NULL DEFAULT 0,
    DIR                     TINYINT       NOT NULL DEFAULT 0,
    SLOPE                   TINYINT       NOT NULL DEFAULT 0,
    STAGECOUNT              INT           NOT NULL DEFAULT 0,
    SETTINGS                INT           NOT NULL DEFAULT 0
);

CREATE TABLE BRIDGEPARTS
(
    ID                      INTEGER       NOT NULL,
    STRUCTURE               BIGINT        NOT NULL,
    TYPE                    TINYINT       NOT NULL,
    LASTMAINTAINED          BIGINT                ,
    ORIGINALQL              FLOAT                 ,
    CURRENTQL               FLOAT                 ,
    DAMAGE                  FLOAT                 ,
    TILEX                   INT           NOT NULL,
    TILEY                   INT           NOT NULL,
    STATE                   TINYINT                DEFAULT -1,
    MATERIAL                TINYINT       NOT NULL DEFAULT 0,
    HEIGHTOFFSET            INT           NOT NULL DEFAULT 0,
    DIR                     TINYINT       NOT NULL DEFAULT 0,
    SLOPE                   TINYINT       NOT NULL DEFAULT 0,
    STAGECOUNT              INT           NOT NULL DEFAULT 0,
    NORTHEXIT               INT           NOT NULL DEFAULT -1,
    EASTEXIT                INT           NOT NULL DEFAULT -1,
    SOUTHEXIT               INT           NOT NULL DEFAULT -1,
    WESTEXIT                INT           NOT NULL DEFAULT -1,
    SETTINGS                INT           NOT NULL DEFAULT 0,
    PRIMARY KEY (ID)
);

CREATE TABLE WALLS
(
    ID                      INTEGER       PRIMARY KEY NOT NULL,
    STRUCTURE               BIGINT        ,
    TYPE                    TINYINT       ,
    LASTMAINTAINED          BIGINT        ,
    ORIGINALQL              FLOAT         ,
    CURRENTQL               FLOAT         ,
    DAMAGE                  FLOAT         ,
    TILEX                   INT           ,
    TILEY                   INT           ,
    STARTX                  INT           ,
    STARTY                  INT           ,
    ENDX                    INT           ,
    ENDY                    INT           ,
    OUTERWALL               TINYINT(1)    ,
    STATE                   TINYINT       ,
    COLOR                   INT           NOT NULL DEFAULT -1,
    MATERIAL                TINYINT       NOT NULL DEFAULT 0,
    ISINDOOR                TINYINT(1)    NOT NULL DEFAULT 0,
    HEIGHTOFFSET            INT           NOT NULL DEFAULT 0,
    LAYER                   INT           NOT NULL DEFAULT 0,
    WALLORIENTATION         TINYINT(1)    NOT NULL DEFAULT 0,
    SETTINGS                INT           NOT NULL DEFAULT 0
);

CREATE TABLE FENCES
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    TYPE                    TINYINT       ,
    LASTMAINTAINED          BIGINT        ,
    ORIGINALQL              FLOAT         ,
    CURRENTQL               FLOAT         ,
    DAMAGE                  FLOAT         ,
    TILEX                   INT           ,
    TILEY                   INT           ,
    ZONEID                  INT           ,
    DIR                     TINYINT       ,
    STATE                   TINYINT       ,
    COLOR                   INT           NOT NULL DEFAULT -1,
    HEIGHTOFFSET            INT           NOT NULL DEFAULT 0,
    LAYER                   INT           NOT NULL DEFAULT 0,
    SETTINGS                INT           NOT NULL DEFAULT 0
);

CREATE TABLE VILLAGES
(
    ID                      INTEGER 	  NOT NULL PRIMARY KEY,
    NAME                    VARCHAR(255)  NOT NULL,
    DEVISE                  VARCHAR(255)  NOT NULL,
    FOUNDER                 VARCHAR(255)  NOT NULL,
    MAYOR                   VARCHAR(255)  NOT NULL,
    CREATIONDATE            BIGINT        ,
    STARTX                  INT           NOT NULL,
    ENDX                    INT           NOT NULL,
    STARTY                  INT           NOT NULL,
    ENDY                    INT           NOT NULL,
    DEEDID                  BIGINT        NOT NULL,
    SURFACED                TINYINT(1)    NOT NULL DEFAULT 0,
    DEMOCRACY               TINYINT(1)    NOT NULL DEFAULT 0,
    HOMESTEAD               TINYINT(1)    NOT NULL DEFAULT 0,
    MAYPICKUP               TINYINT(1)    NOT NULL DEFAULT 0,
    TOKEN                   BIGINT        NOT NULL DEFAULT -10,
    DISBAND                 BIGINT        NOT NULL DEFAULT 0,
    DISBANDER               BIGINT        NOT NULL DEFAULT -10,
    LASTLOGIN               BIGINT        NOT NULL DEFAULT 0,
    KINGDOM                 TINYINT       NOT NULL DEFAULT 0,
    UPKEEP                  BIGINT        NOT NULL DEFAULT 0,
    ACCEPTSHOMESTEADS       TINYINT(1)    NOT NULL DEFAULT 0,
    MAXCITIZENS             INT           NOT NULL DEFAULT 0,
    PERIMETER               INT           NOT NULL DEFAULT 0,
    DISBANDED               TINYINT(1)    NOT NULL DEFAULT 0,
    PERMANENT               TINYINT(1)    NOT NULL DEFAULT 0,
    SPAWNKINGDOM            TINYINT(1)    NOT NULL DEFAULT 0,
    MERCHANTS               TINYINT(1)    NOT NULL DEFAULT 0,
    AGGROS                  TINYINT(1)    NOT NULL DEFAULT 0,
    TWITKEY                 VARCHAR(70)   NOT NULL DEFAULT "",
    TWITSECRET              VARCHAR(70)   NOT NULL DEFAULT "",
    TWITAPP                 VARCHAR(70)   NOT NULL DEFAULT "",
    TWITAPPSECRET           VARCHAR(70)   NOT NULL DEFAULT "",
    TWITCHAT                TINYINT(1)    NOT NULL DEFAULT 0,
    TWITENABLE              TINYINT(1)    NOT NULL DEFAULT 1,
    SPAWNSITUATION          TINYINT       NOT NULL DEFAULT 0,
    FAITHWAR                FLOAT         NOT NULL DEFAULT 0,
    FAITHHEAL               FLOAT         NOT NULL DEFAULT 0,
    FAITHCREATE             FLOAT         NOT NULL DEFAULT 0,
    ALLIANCENUMBER          INT           NOT NULL DEFAULT 0,
    HOTAWINS                SMALLINT      NOT NULL DEFAULT 0,
    NAMECHANGED             BIGINT        NOT NULL DEFAULT 0,
    MOTD                    VARCHAR(200)  NOT NULL DEFAULT "",
    VILLAGEREP              INT           NOT NULL DEFAULT 0
);

CREATE TABLE VILLAGEPERIMETERS
(
    ID                      INT           PRIMARY KEY,
    SETTINGS                BIGINT        NOT NULL DEFAULT 0
);

/* TODO no primary key */
CREATE TABLE PERIMETERFRIENDS
(
    ID                      INT           NOT NULL DEFAULT 0,
    NAME                    VARCHAR(255)  NOT NULL
);

CREATE TABLE HISTORY
(
    ID                      INTEGER       PRIMARY KEY NOT NULL,
    EVENTDATE               BIGINT        NOT NULL,
    VILLAGEID               INT           NOT NULL,
    PERFORMER               VARCHAR(255)  NOT NULL,
    EVENT                   VARCHAR(255)  NOT NULL
);

CREATE TABLE CITIZENS
(
    WURMID                  BIGINT        primary key,
    VILLAGEID               INT           NOT NULL,
    ROLEID                  INT           NOT NULL,
    VOTED                   TINYINT(1)    NOT NULL DEFAULT 0,
    VOTES                   SMALLINT      NOT NULL DEFAULT 0,
    VOTEDATE                BIGINT        NOT NULL DEFAULT 0,
    VOTEDFOR                BIGINT        NOT NULL DEFAULT -10
);

CREATE TABLE VILLAGEROLE
(
    ID                      INTEGER       PRIMARY KEY NOT NULL,
    VILLAGEID               INT           NOT NULL DEFAULT 0,
    NAME                    VARCHAR(255)  NOT NULL DEFAULT "",
    MAYTERRAFORM            TINYINT(1)    NOT NULL DEFAULT 0,
    MAYCUTTREE              TINYINT(1)    NOT NULL DEFAULT 0,
    MAYMINE                 TINYINT(1)    NOT NULL DEFAULT 0,
    MAYFARM                 TINYINT(1)    NOT NULL DEFAULT 0,
    MAYBUILD                TINYINT(1)    NOT NULL DEFAULT 0,
    MAYINVITE               TINYINT(1)    NOT NULL DEFAULT 0,
    MAYDESTROY              TINYINT(1)    NOT NULL DEFAULT 0,
    MAYMANAGEROLES          TINYINT(1)    NOT NULL DEFAULT 0,
    MAYHIRE                 TINYINT(1)    NOT NULL DEFAULT 0,
    MAYEXPAND               TINYINT(1)    NOT NULL DEFAULT 0,
    MAYPASSFENCES           TINYINT(1)    NOT NULL DEFAULT 0,
    MAYLOCKFENCES           TINYINT(1)    NOT NULL DEFAULT 0,
    DIPLOMAT                TINYINT(1)    NOT NULL DEFAULT 0,
    MAYATTACKCITIZ          TINYINT(1)    NOT NULL DEFAULT 0,
    MAYATTACKNONCITIZ       TINYINT(1)    NOT NULL DEFAULT 0,
    MAYFISH                 TINYINT(1)    NOT NULL DEFAULT 0,
    MAYCUTOLD               TINYINT(1)    NOT NULL DEFAULT 0,
    STATUS                  TINYINT       NOT NULL DEFAULT 0,
    MAYPUSHPULLTURN         TINYINT(1)    NOT NULL DEFAULT 1,
    VILLAGEAPPLIEDTO        INT           NOT NULL DEFAULT 0,
    MAYUPDATEMAP            TINYINT(1)    NOT NULL DEFAULT 0,
    MAYLEAD                 TINYINT(1)    NOT NULL DEFAULT 0,
    MAYPICKUP               TINYINT(1)    NOT NULL DEFAULT 0,
    MAYTAME                 TINYINT(1)    NOT NULL DEFAULT 0,
    MAYLOAD                 TINYINT(1)    NOT NULL DEFAULT 0,
    MAYBUTCHER              TINYINT(1)    NOT NULL DEFAULT 0,
    MAYATTACHLOCK           TINYINT(1)    NOT NULL DEFAULT 0,
    MAYPICKLOCKS            TINYINT(1)    NOT NULL DEFAULT 0,
    SETTINGS                INT           NOT NULL DEFAULT 0,
    MORESETTINGS            INT           NOT NULL DEFAULT 0,
    EXTRASETTINGS           INT           NOT NULL DEFAULT 0,
    PLAYERAPPLIEDTO         BIGINT        NOT NULL DEFAULT -10
);

CREATE TABLE GATES
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    NAME                    VARCHAR(40)   NOT NULL,
    OPENTIME                TINYINT       NOT NULL DEFAULT 0,
    CLOSETIME               TINYINT       NOT NULL DEFAULT 0,
    LOCKID                  BIGINT        NOT NULL DEFAULT -10,
    SETTINGS                INT           NOT NULL DEFAULT 0,
    VILLAGE                 INT           NOT NULL DEFAULT -1
);

CREATE TABLE GUARDS
(
    WURMID                  BIGINT        primary key,
    VILLAGEID               INT           NOT NULL,
    EXPIREDATE              BIGINT
);

CREATE TABLE GUARDPLAN
(
    VILLAGEID               INT           primary key,
    TYPE                    INT           NOT NULL,
    LASTPAYED               BIGINT        NOT NULL,
    MONEYLEFT               BIGINT        NOT NULL,
    DRAINMOD                FLOAT         NOT NULL DEFAULT 0,
    GUARDS                  INT           NOT NULL DEFAULT 0,
    LASTDRAINED             BIGINT        NOT NULL DEFAULT 0
);

CREATE TABLE GUARDPLANPAYMENTS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    VILLAGEID               INT           NOT NULL DEFAULT 0,
    PAYED                   BIGINT        NOT NULL DEFAULT 0,
    MONEY                   BIGINT        NOT NULL DEFAULT 0,
    CREATUREID              BIGINT        NOT NULL DEFAULT -10
);

CREATE TABLE RETURNEDGUARDS
(
    CREATUREID              BIGINT        primary key,
    VILLAGEID               INT           NOT NULL
);

CREATE TABLE TRAPS
(
    ID                      INTEGER       PRIMARY KEY NOT NULL,
    VILLAGE                 INT           NOT NULL DEFAULT 0,
    QL                      TINYINT       NOT NULL DEFAULT 0,
    KINGDOM                 TINYINT       NOT NULL DEFAULT 0,
    TYPE                    TINYINT       NOT NULL DEFAULT 0,
    FDAMQL                  TINYINT       NOT NULL DEFAULT 0,
    ROTDAMQL                TINYINT       NOT NULL DEFAULT 0,
    SPEEDBON                TINYINT       NOT NULL DEFAULT 0
);

CREATE TABLE TOWERGUARDS
(
    CREATUREID              BIGINT        primary key,
    TOWERID                 BIGINT        NOT NULL,
    RETURNED                TINYINT(1)    NOT NULL DEFAULT 0
);

CREATE TABLE PVPALLIANCE
(
    ALLIANCENUMBER          INT           primary key DEFAULT 0,
    NAME                    VARCHAR(20)   NOT NULL DEFAULT "",
    DEITYONE                TINYINT       NOT NULL DEFAULT 0,
    DEITYTWO                TINYINT       NOT NULL DEFAULT 0,
    WINS                    INT           NOT NULL DEFAULT 0,
    MOTD                    VARCHAR(200)  NOT NULL DEFAULT ""
);

CREATE TABLE ALLIANCEWARS
(
    ID                      INTEGER       PRIMARY KEY NOT NULL,
    ALLIANCEONE             INT           NOT NULL DEFAULT 0,
    ALLIANCETWO             INT           NOT NULL DEFAULT 0,
    TIMEDECLARED            BIGINT        NOT NULL DEFAULT 0,
    TIMESTARTED             BIGINT        NOT NULL DEFAULT 0,
    TIMEPEACE               BIGINT        NOT NULL DEFAULT 0
);

CREATE TABLE VILLAGEWARS
(
    ID                      INTEGER       PRIMARY KEY NOT NULL,
    VILLONE                 INT           NOT NULL,
    VILLTWO                 INT           NOT NULL
);

CREATE TABLE VILLAGEWARDECLARATIONS
(
    ID                      INTEGER       PRIMARY KEY NOT NULL,
    VILLONE                 INT           NOT NULL,
    VILLTWO                 INT           NOT NULL,
    DECLARETIME             BIGINT        NOT NULL
);

CREATE TABLE REPUTATION
(
    WURMID                  BIGINT        NOT NULL,
    VILLAGEID               INT           NOT NULL,
    PERMANENT               TINYINT(1)    NOT NULL DEFAULT 0,
    REPUTATION              TINYINT       NOT NULL DEFAULT 0,
    PRIMARY KEY (WURMID, VILLAGEID)
);

CREATE TABLE MISSIONHELPERS
(
    MISSIONID               BIGINT        NOT NULL DEFAULT 0,
    PLAYERID                BIGINT        NOT NULL DEFAULT 0,
    NUMS                    INTEGER       NOT NULL DEFAULT 0,
    PRIMARY KEY (MISSIONID, PLAYERID)
);

/* TODO no primary key */
CREATE TABLE KING_ERA
(
    ERA                     INT           NOT NULL DEFAULT 0,
    KINGSNAME               VARCHAR(40)   NOT NULL DEFAULT "",
    KINGDOMNAME             VARCHAR(30)   NOT NULL DEFAULT "",
    KINGDOM                 TINYINT       NOT NULL DEFAULT 0,
    KINGID                  BIGINT        NOT NULL DEFAULT 0,
    GENDER                  TINYINT       NOT NULL DEFAULT 0,
    STARTTIME               BIGINT        NOT NULL DEFAULT 0,
    STARTWURMTIME           BIGINT        NOT NULL DEFAULT 0,
    STARTLANDPERCENT        FLOAT         NOT NULL DEFAULT 0,
    CURRENTLANDPERCENT      FLOAT         NOT NULL DEFAULT 0,
    CURRENT                 TINYINT(1)    NOT NULL DEFAULT 0,
    ENDTIME                 BIGINT        NOT NULL DEFAULT 0,
    ENDWURMTIME             BIGINT        NOT NULL DEFAULT 0,
    CAPITAL                 VARCHAR(255)  NOT NULL DEFAULT "",
    LEVELSKILLED            INT           NOT NULL DEFAULT 0,
    LEVELSLOST              INT           NOT NULL DEFAULT 0,
    APPOINTMENTS            INT           NOT NULL DEFAULT 0,
    NEXTCHALLENGE           BIGINT        NOT NULL DEFAULT 0,
    DECLINEDCHALLENGES      INT           NOT NULL DEFAULT 0,
    ACCEPTDATE              BIGINT        NOT NULL DEFAULT 0,
    CHALLENGEDATE           BIGINT        NOT NULL DEFAULT 0
);

CREATE TABLE KINGDOMS
(
    KINGDOM                 TINYINT       PRIMARY KEY,
    KINGDOMNAME             VARCHAR(30)   NOT NULL DEFAULT "",
    PASSWORD                VARCHAR(10)   NOT NULL DEFAULT "",
    TEMPLATE                TINYINT       NOT NULL DEFAULT 0,
    SUFFIX                  VARCHAR(5)    NOT NULL DEFAULT "",
    CHATNAME                VARCHAR(12)   NOT NULL DEFAULT "",
    FIRSTMOTTO              VARCHAR(10)   NOT NULL DEFAULT "",
    SECONDMOTTO             VARCHAR(10)   NOT NULL DEFAULT "",
    ACCEPTSTRANSFERS        TINYINT(1)    NOT NULL DEFAULT 1,
    WINPOINTS				INT			  NOT NULL DEFAULT 0
);

CREATE TABLE KALLIANCES
(
    KINGDOMONE              TINYINT       NOT NULL DEFAULT 0,
    KINGDOMTWO              TINYINT       NOT NULL DEFAULT 0,
    ALLIANCETYPE            TINYINT       NOT NULL DEFAULT 0,
    PRIMARY KEY (KINGDOMONE, KINGDOMTWO)
);

/* TODO no primary key */
CREATE TABLE APPOINTMENTS
(
    ERA                     INT           NOT NULL DEFAULT 0,
    KINGDOM                 TINYINT       NOT NULL DEFAULT 0,
    LASTCHECKED             BIGINT        NOT NULL DEFAULT 0,
    TITLE1                  INT           NOT NULL DEFAULT 0,
    TITLE2                  INT           NOT NULL DEFAULT 0,
    TITLE3                  INT           NOT NULL DEFAULT 0,
    TITLE4                  INT           NOT NULL DEFAULT 0,
    TITLE5                  INT           NOT NULL DEFAULT 0,
    TITLE6                  INT           NOT NULL DEFAULT 0,
    TITLE7                  INT           NOT NULL DEFAULT 0,
    TITLE8                  INT           NOT NULL DEFAULT 0,
    TITLE9                  INT           NOT NULL DEFAULT 0,

    ORDER1                  INT           NOT NULL DEFAULT 0,
    ORDER2                  INT           NOT NULL DEFAULT 0,
    ORDER3                  INT           NOT NULL DEFAULT 0,
    ORDER4                  INT           NOT NULL DEFAULT 0,
    ORDER5                  INT           NOT NULL DEFAULT 0,
    ORDER6                  INT           NOT NULL DEFAULT 0,

    OFFICIAL1               BIGINT        NOT NULL DEFAULT 0,
    OFFICIAL2               BIGINT        NOT NULL DEFAULT 0,
    OFFICIAL3               BIGINT        NOT NULL DEFAULT 0,
    OFFICIAL4               BIGINT        NOT NULL DEFAULT 0,
    OFFICIAL5               BIGINT        NOT NULL DEFAULT 0,
    OFFICIAL6               BIGINT        NOT NULL DEFAULT 0,
    OFFICIAL7               BIGINT        NOT NULL DEFAULT 0,
    OFFICIAL8               BIGINT        NOT NULL DEFAULT 0,
    OFFICIAL9               BIGINT        NOT NULL DEFAULT 0,
    OFFICIAL10              BIGINT        NOT NULL DEFAULT 0,
    OFFICIAL11              BIGINT        NOT NULL DEFAULT 0
);

/* TODO no primary key */
CREATE TABLE OFFICES
(
    ERA                     INT           NOT NULL DEFAULT 0,

    OFFICIAL1               TINYINT(1)    NOT NULL DEFAULT 0,
    OFFICIAL2               TINYINT(1)    NOT NULL DEFAULT 0,
    OFFICIAL3               TINYINT(1)    NOT NULL DEFAULT 0,
    OFFICIAL4               TINYINT(1)    NOT NULL DEFAULT 0,
    OFFICIAL5               TINYINT(1)    NOT NULL DEFAULT 0,
    OFFICIAL6               TINYINT(1)    NOT NULL DEFAULT 0,
    OFFICIAL7               TINYINT(1)    NOT NULL DEFAULT 0,
    OFFICIAL8               TINYINT(1)    NOT NULL DEFAULT 0,
    OFFICIAL9               TINYINT(1)    NOT NULL DEFAULT 0,
    OFFICIAL10              TINYINT(1)    NOT NULL DEFAULT 0,
    OFFICIAL11              TINYINT(1)    NOT NULL DEFAULT 0
);

CREATE TABLE MINEDOOR
(
    ID                      INT           NOT NULL DEFAULT -1 PRIMARY KEY,
    CREATOR                 BIGINT        NOT NULL DEFAULT 0,
    VILLAGE                 INT           NOT NULL DEFAULT -1,
    ALLOWALL                TINYINT(1)    NOT NULL DEFAULT 0,
    ALLOWALLIES             TINYINT(1)    NOT NULL DEFAULT 0,
    NAME                    VARCHAR(40)   NOT NULL DEFAULT "",
    SETTINGS                INT           NOT NULL DEFAULT 0
);

-- ID is Mine Door WurmID
-- PERMITTED is WurmID of Creature that is allowed to open the Mine Door
CREATE TABLE MDPERMS
(
    ID                      INT           NOT NULL DEFAULT -1,
    PERMITTED               BIGINT        NOT NULL DEFAULT 0,
    SETTINGS                INT           NOT NULL DEFAULT 0,
    PRIMARY KEY (ID, PERMITTED)
);

CREATE TABLE DOORSETTINGS 
(
    WURMID                  BIGINT        NOT NULL,
    PLAYERID                BIGINT        NOT NULL,
    SETTINGS                INT           NOT NULL,
  PRIMARY KEY (WURMID, PLAYERID)
);

CREATE TABLE EPICTARGETITEMS
(
    KINGDOM                 TINYINT       primary key,
    PILLARONE               BIGINT        NOT NULL DEFAULT 0,
    PILLARTWO               BIGINT        NOT NULL DEFAULT 0,
    PILLARTHREE             BIGINT        NOT NULL DEFAULT 0,

    OBELISQUEONE            BIGINT        NOT NULL DEFAULT 0,
    OBELISQUETWO            BIGINT        NOT NULL DEFAULT 0,
    OBELISQUETHREE          BIGINT        NOT NULL DEFAULT 0,

    PYLONONE                BIGINT        NOT NULL DEFAULT 0,
    PYLONTWO                BIGINT        NOT NULL DEFAULT 0,
    PYLONTHREE              BIGINT        NOT NULL DEFAULT 0,
    
    TEMPLEONE               BIGINT        NOT NULL DEFAULT 0,
    TEMPLETWO               BIGINT        NOT NULL DEFAULT 0,
    TEMPLETHREE             BIGINT        NOT NULL DEFAULT 0,

    SHRINEONE               BIGINT        NOT NULL DEFAULT 0,
    SHRINETWO               BIGINT        NOT NULL DEFAULT 0,
    SHRINETHREE             BIGINT        NOT NULL DEFAULT 0,
    
    SPIRITGATEONE           BIGINT        NOT NULL DEFAULT 0,
    SPIRITGATETWO           BIGINT        NOT NULL DEFAULT 0,
    SPIRITGATETHREE         BIGINT        NOT NULL DEFAULT 0
);


CREATE TABLE VILLAGERECRUITEES(
  VILLAGEID int(11) NOT NULL DEFAULT 0,
  RECRUITEEID bigint(20) NOT NULL DEFAULT 0,
  RECRUITEENAME varchar(40) NOT NULL DEFAULT ""
);