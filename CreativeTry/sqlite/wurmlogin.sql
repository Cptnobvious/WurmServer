CREATE TABLE IDS
( 
    SERVER                  INT           NOT NULL PRIMARY KEY,
    PLAYERIDS               BIGINT        NOT NULL DEFAULT 0,
    CREATUREIDS             BIGINT        NOT NULL DEFAULT 0,
    ITEMIDS                 BIGINT        NOT NULL DEFAULT 0,
    STRUCTUREIDS            BIGINT        NOT NULL DEFAULT 0,
    WOUNDIDS                BIGINT        NOT NULL DEFAULT 0,
    KILLIDS                 BIGINT        NOT NULL DEFAULT 0,
    CREATURESKILLIDS        BIGINT        NOT NULL DEFAULT 0,
    PLAYERSKILLIDS          BIGINT        NOT NULL DEFAULT 0,
    BANKIDS                 BIGINT        NOT NULL DEFAULT 0,
    SPELLIDS                BIGINT        NOT NULL DEFAULT 0,
    PLANIDS                 BIGINT        NOT NULL DEFAULT 0,
    BODYIDS                 BIGINT        NOT NULL DEFAULT 0,
    COINIDS                 BIGINT        NOT NULL DEFAULT 0,
    WCCOMMANDS              BIGINT        NOT NULL DEFAULT 0,
    POIIDS                  BIGINT        NOT NULL DEFAULT 0,
    REDEEMIDS               BIGINT        NOT NULL DEFAULT 0
);

CREATE TABLE CHALLENGE
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    WURMID                  BIGINT        NOT NULL DEFAULT 0,
    ROUND                   INT           NOT NULL DEFAULT 0,
    TYPE                    INT           NOT NULL DEFAULT 0,
    POINTS                  FLOAT         NOT NULL DEFAULT 0,
    LASTUPDATED             BIGINT        NOT NULL DEFAULT 0,
    LASTPOINTS              FLOAT         NOT NULL DEFAULT 0
);

CREATE TABLE OVERRIDDENFEATURES
(
    FEATUREID               INT(11)       NOT NULL,
    ENABLED                 BIT(1)        NOT NULL,
  PRIMARY KEY (FEATUREID)
);

CREATE TABLE HISTORY
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    EVENTDATE               BIGINT        NOT NULL,
    SERVER                  INT           NOT NULL,
    PERFORMER               VARCHAR(255)  NOT NULL,
    EVENT                   VARCHAR(255)  NOT NULL
);

CREATE TABLE SERVERS 
( 
    SERVER                  INT           NOT NULL PRIMARY KEY,
    NAME                    VARCHAR(50)   NOT NULL,
    SPAWNPOINTJENNX         INT           NOT NULL DEFAULT 0,
    SPAWNPOINTJENNY         INT           NOT NULL DEFAULT 0,
    SPAWNPOINTMOLX          INT           NOT NULL DEFAULT 0,
    SPAWNPOINTMOLY          INT           NOT NULL DEFAULT 0,
    SPAWNPOINTLIBX          INT           NOT NULL DEFAULT 0,
    SPAWNPOINTLIBY          INT           NOT NULL DEFAULT 0,
    HOMESERVER              TINYINT(1)    NOT NULL DEFAULT 0,
    INTRASERVERADDRESS      VARCHAR(50)   NOT NULL,
    INTRASERVERPORT         VARCHAR(50)   NOT NULL,
    INTRASERVERPASSWORD     VARCHAR(50)   NOT NULL,
    EXTERNALIP              VARCHAR(50)   NOT NULL,
    EXTERNALPORT            VARCHAR(50)   NOT NULL,
    LOGINSERVER             TINYINT(1)    NOT NULL DEFAULT 0,
    KINGDOM                 TINYINT       NOT NULL DEFAULT 0,
    ENTRYSERVER             TINYINT(1)    NOT NULL DEFAULT 0,
    ISPAYMENT               TINYINT(1)    NOT NULL DEFAULT 0,
    PVP                     TINYINT(1)    NOT NULL DEFAULT 0,
    TWITKEY                 VARCHAR(70)   NOT NULL DEFAULT "",
    TWITSECRET              VARCHAR(70)   NOT NULL DEFAULT "",
    TWITAPP                 VARCHAR(70)   NOT NULL DEFAULT "",
    TWITAPPSECRET           VARCHAR(70)   NOT NULL DEFAULT "",
    CHAMPTWITKEY            VARCHAR(70)   NOT NULL DEFAULT "",
    CHAMPTWITSECRET         VARCHAR(70)   NOT NULL DEFAULT "",
    CHAMPTWITAPP            VARCHAR(70)   NOT NULL DEFAULT "",
    CHAMPTWITAPPSECRET      VARCHAR(70)   NOT NULL DEFAULT "",
    LOCAL                   TINYINT(1)    NOT NULL DEFAULT 0,
    ISTEST                  TINYINT(1)    NOT NULL DEFAULT 0,
    LASTRESETCHAMPS         BIGINT        NOT NULL DEFAULT 0,
    RMIPORT                 VARCHAR(5)    NOT NULL DEFAULT "7220",
    REGISTRATIONPORT        VARCHAR(5)    NOT NULL DEFAULT "7221",
    MOVEDARTIS              BIGINT        NOT NULL DEFAULT 0,
    SKILLDAYSWITCH          BIGINT        NOT NULL DEFAULT 0,
    SKILLWEEKSWITCH         BIGINT        NOT NULL DEFAULT 0,
    NEXTEPICPOLL            BIGINT        NOT NULL DEFAULT 0,
    FATIGUESWITCH           BIGINT        NOT NULL DEFAULT 0,
    NEXTHOTA                BIGINT        NOT NULL DEFAULT 0,
    WORLDTIME               BIGINT        NOT NULL DEFAULT 1,
    TILEREST                INT           NOT NULL DEFAULT 0,
    POLLTILE                INT           NOT NULL DEFAULT 0,
    POLLMOD                 INT           NOT NULL DEFAULT 0,
    POLLROUND               INT           NOT NULL DEFAULT 0,
    SPAWNEDUNIQUE           BIGINT        NOT NULL DEFAULT 0,
    CAHELPGROUP             TINYINT       NOT NULL DEFAULT -1,
    CHALLENGE               TINYINT(1)    NOT NULL DEFAULT 0,
    CHALLENGEEND            BIGINT        NOT NULL DEFAULT 0,
    CHALLENGESTARTED        BIGINT        NOT NULL DEFAULT 0,
    MAXPLAYERS              INT           NOT NULL DEFAULT 1000,
    MAXCREATURES            INT           NOT NULL DEFAULT 1000,
    PERCENT_AGG_CREATURES   FLOAT         NOT NULL DEFAULT 30,
    TREEGROWTH              INT           NOT NULL DEFAULT 20,
    SKILLGAINRATE           FLOAT         NOT NULL DEFAULT 1,
    ACTIONTIMER             FLOAT         NOT NULL DEFAULT 1,
    HOTADELAY               INT           NOT NULL DEFAULT 2160,
    RANDOMSPAWNS            TINYINT(1)    NOT NULL DEFAULT 0,
    SKILLBASICSTART         FLOAT         NOT NULL DEFAULT 20,
    SKILLBODYCONTROLSTART   FLOAT         NOT NULL DEFAULT 1,
    SKILLMINDLOGICSTART     FLOAT         NOT NULL DEFAULT 30,
    SKILLFIGHTINGSTART      FLOAT         NOT NULL DEFAULT 1,
    SKILLOVERALLSTART       FLOAT         NOT NULL DEFAULT 1,
    EPIC                    TINYINT(1)    NOT NULL DEFAULT 0,
    CRMOD                   FLOAT         NOT NULL DEFAULT 1,
    STEAMPW                 VARCHAR(50)   NOT NULL DEFAULT "",
    UPKEEP                  TINYINT(1)    NOT NULL DEFAULT 0,
    MAXDEED                 INT           NOT NULL DEFAULT 0,
    FREEDEEDS               TINYINT(1)    NOT NULL DEFAULT 0,
    TRADERMAX               INT           NOT NULL DEFAULT 500000,
    TRADERINIT              INT           NOT NULL DEFAULT 10000,
    TUNNELING               INT           NOT NULL DEFAULT 51,
    BREEDING                BIGINT        NOT NULL DEFAULT 0,
    FIELDGROWTH             BIGINT        NOT NULL DEFAULT 0,
    KINGSMONEY              INT           NOT NULL DEFAULT 0,
    MOTD                    VARCHAR(50)   NOT NULL DEFAULT "",
    MAPNAME                 VARCHAR(50)   NOT NULL DEFAULT ""
);

CREATE TABLE SERVERNEIGHBOURS
(
    SERVER                  INT           NOT NULL,
    NEIGHBOUR               INT           NOT NULL,
    DIRECTION               VARCHAR(10)   NOT NULL,
    PRIMARY KEY (SERVER, NEIGHBOUR)
);

CREATE TABLE PENDINGACCOUNTS
(
    NAME                    VARCHAR(40)   NOT NULL PRIMARY KEY UNIQUE,
    EMAIL                   VARCHAR(127)  NOT NULL,
    EXPIRATIONDATE          BIGINT        NOT NULL,
    HASH                    VARCHAR(40)   NOT NULL
);

/* TODO do all these fields need to be in primary key */
CREATE TABLE PASSWORDTRANSFERS
(
    NAME                    VARCHAR(40)   NOT NULL,
    TIMESTAMP               BIGINT        NOT NULL,
    WURMID                  BIGINT        NOT NULL,
    PASSWORD                VARCHAR(30)   NOT NULL,
    PRIMARY KEY (NAME, TIMESTAMP, WURMID, PASSWORD)
);

CREATE TABLE EIGC 
( 
    USERNAME                VARCHAR(40)   NOT NULL PRIMARY KEY,
    PASSWORD                VARCHAR(30)   NOT NULL DEFAULT "",
    SERVICEBUNDLE           VARCHAR(50)   NOT NULL DEFAULT "",
    EXPIRATION              BIGINT        NOT NULL DEFAULT 0,
    EMAIL                   VARCHAR(127)  NOT NULL DEFAULT ""
);

CREATE TABLE TICKETS
(
    TICKETID                INT           NOT NULL,
    TICKETDATE              BIGINT        NOT NULL,
    PLAYERWURMID            BIGINT        NOT NULL,
    PLAYERNAME              VARCHAR(40)   NOT NULL,
    CATEGORYCODE            TINYINT       NOT NULL,
    SERVERID                INT           NOT NULL,
    ISGLOBAL                BIT           NOT NULL,
    CLOSEDDATE              BIGINT        NOT NULL,
    STATECODE               TINYINT       NOT NULL,
    LEVELCODE               TINYINT       NOT NULL,
    RESPONDERNAME           VARCHAR(40)   NOT NULL,
    DESCRIPTION             VARCHAR(400)  NOT NULL,
    ISDIRTY                 BIT           NOT NULL,
    REFFEEDBACK             SMALLINT      NOT NULL,
    /* trello links */
    TRELLOCARDID            VARCHAR(32)   NOT NULL,
    TRELLOLISTCODE          TINYINT       NOT NULL DEFAULT 0,
    HASDESCRIPTIONCHANGED   BIT           NOT NULL DEFAULT 0,
    HASSUMMARYCHANGED       BIT           NOT NULL DEFAULT 0,
    HASTRELLOLISTCHANGED    BIT           NOT NULL DEFAULT 0,
    ARCHIVESTATECODE        TINYINT       NOT NULL DEFAULT 0,
    TRELLOFEEDBACKCARDID    VARCHAR(32)   NOT NULL DEFAULT "",
    ACKNOWLEDGED            TINYINT(1)    NOT NULL DEFAULT 1,
  PRIMARY KEY (TICKETID)
);

CREATE TABLE TICKETACTIONS
(
    TICKETID                INT           NOT NULL,
    ACTIONNO                SMALLINT      NOT NULL,
    ACTIONDATE              BIGINT        NOT NULL,
    ACTIONTYPE              TINYINT       NOT NULL,
    BYWHOM                  VARCHAR(40)   NOT NULL,
    NOTE                    VARCHAR(200)  NOT NULL,
    VISIBILITYLEVEL         TINYINT       NOT NULL,
    ISDIRTY                 BIT           NOT NULL,
    /* following fields only used when action is feedback */
    QUALITYOFSERVICECODE    TINYINT       NOT NULL,
    COURTEOUSCODE           TINYINT       NOT NULL,
    KNOWLEDGEABLECODE       TINYINT       NOT NULL,
    GENERALFLAGS            TINYINT       NOT NULL,
    QUALITIESFLAGS          TINYINT       NOT NULL,
    IRKEDFLAGS              TINYINT       NOT NULL,
    /* trello links */
    TRELLOCOMMENTID         VARCHAR(32)   NOT NULL,
    /* do i need checklists ones for survey?? */
  PRIMARY KEY (TICKETID, ACTIONNO)
);

CREATE TABLE TICKETNOS
(
    PK                      INT           NOT NULL,
    NEXTTICKETID            INT           NOT NULL,
    LASTTICKETID            INT           NOT NULL,
    NEXTBATCH               INT           NOT NULL,
  PRIMARY KEY (PK)
);

DROP TABLE IF EXISTS VOTINGQUESTIONS;
CREATE TABLE VOTINGQUESTIONS(
    QUESTIONID              INTEGER       NOT NULL PRIMARY KEY,
    QUESTIONTITLE           VARCHAR(20)   NOT NULL,
    QUESTIONTEXT            VARCHAR(200)  NOT NULL,
    OPTION1_TEXT            VARCHAR(50)   NOT NULL,
    OPTION2_TEXT            VARCHAR(50)   NOT NULL,
    OPTION3_TEXT            VARCHAR(50)   NOT NULL DEFAULT "",
    OPTION4_TEXT            VARCHAR(50)   NOT NULL DEFAULT "",
    ALLOW_MULTIPLE          TINYINT(1)    NOT NULL DEFAULT 0,
    PREMIUM_ONLY            TINYINT(1)    NOT NULL DEFAULT 0,
    JK                      TINYINT(1)    NOT NULL DEFAULT 1,
    MR                      TINYINT(1)    NOT NULL DEFAULT 1,
    HOTS                    TINYINT(1)    NOT NULL DEFAULT 1,
    FREEDOM                 TINYINT(1)    NOT NULL DEFAULT 1,
    VOTE_START              BIGINT        NOT NULL,
    VOTE_END                BIGINT        NOT NULL,
    SENT                    TINYINT       NOT NULL DEFAULT 0,
    VOTES_TOTAL             INT           NOT NULL DEFAULT 0,
    HAS_SUMMARY             TINYINT(1)    NOT NULL DEFAULT 0,
    OPTION1_COUNT           INT           NOT NULL DEFAULT 0,
    OPTION2_COUNT           INT           NOT NULL DEFAULT 0,
    OPTION3_COUNT           INT           NOT NULL DEFAULT 0,
    OPTION4_COUNT           INT           NOT NULL DEFAULT 0,
    TRELLOCARDID            VARCHAR(32)   NOT NULL DEFAULT "",
    ARCHIVESTATECODE        TINYINT       NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS VOTINGSERVERS;
CREATE TABLE VOTINGSERVERS(
    QUESTIONID              INT           NOT NULL,
    SERVERID                INT           NOT NULL,
    VOTES_TOTAL             INT           NOT NULL DEFAULT 0,
    OPTION1_COUNT           INT           NOT NULL DEFAULT 0,
    OPTION2_COUNT           INT           NOT NULL DEFAULT 0,
    OPTION3_COUNT           INT           NOT NULL DEFAULT 0,
    OPTION4_COUNT           INT           NOT NULL DEFAULT 0,
  PRIMARY KEY(QUESTIONID,SERVERID)
);

