CREATE TABLE ITEMSSOLD 
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    ITEMNAME                VARCHAR(30)   NOT NULL DEFAULT "",
    ITEMVALUE               BIGINT        NOT NULL,
    TRADERNAME              VARCHAR(30)   NOT NULL DEFAULT "",
    PLAYERNAME              VARCHAR(30)   NOT NULL DEFAULT "",
    TEMPLATEID              INT           NOT NULL,
    TIME                    TIMESTAMP
);
CREATE TABLE ECONOMY
(
    ID                      INT           NOT NULL PRIMARY KEY,
    GOLDCOINS               BIGINT        NOT NULL,
    SILVERCOINS             BIGINT        NOT NULL,
    COPPERCOINS             BIGINT        NOT NULL,
    IRONCOINS               BIGINT        NOT NULL,
    LASTPOLLED              BIGINT        NOT NULL DEFAULT 0
);
CREATE TABLE SUPPLYDEMAND
(
    ID                      INT           NOT NULL PRIMARY KEY,
    ITEMSSOLD               INT           NOT NULL,
    ITEMSBOUGHT             INT           NOT NULL,
    LASTPOLLED              BIGINT        NOT NULL
);
CREATE TABLE LOCALSUPPLYDEMAND
(
    ITEMID                  INT           NOT NULL,
    TRADERID                BIGINT        NOT NULL,
    DEMAND                  FLOAT         NOT NULL,
    PRIMARY KEY (ITEMID, TRADERID)
);
CREATE TABLE TRANSACTS
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    ITEMID                  BIGINT        ,
    OLDOWNERID              BIGINT        ,
    NEWOWNERID              BIGINT        ,
    REASON                  VARCHAR(20)   ,
    VALUE                   BIGINT        NOT NULL DEFAULT 0,
    DATE                    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE TRADER
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    OWNER                   BIGINT        NOT NULL,
    MONEY                   BIGINT        NOT NULL,
    PRICEMODIFIER           FLOAT         NOT NULL,
    FOLLOWGLOBALPRICE       TINYINT(1)    NOT NULL,
    USELOCALPRICE           TINYINT(1)    NOT NULL,
    LASTPOLLED              BIGINT        NOT NULL,
    SPENT                   BIGINT        NOT NULL DEFAULT 0,
    SPENTLIFE               BIGINT        NOT NULL DEFAULT 0,
    EARNED                  BIGINT        NOT NULL DEFAULT 0,
    EARNEDLIFE              BIGINT        NOT NULL DEFAULT 0,
    SPENTLASTMONTH          BIGINT        NOT NULL DEFAULT 0,
    TAXPAID                 BIGINT        NOT NULL DEFAULT 0,
    TAX                     FLOAT         NOT NULL DEFAULT 0,
    NUMBEROFITEMS           INT           NOT NULL DEFAULT 0,
    WHENEMPTY               BIGINT        NOT NULL DEFAULT 0
);
CREATE TABLE BANKS
(
    WURMID                  BIGINT        NOT NULL PRIMARY KEY,
    OWNER                   BIGINT        NOT NULL,
    LASTPOLLED              BIGINT        NOT NULL DEFAULT 0,
    STARTEDMOVE             BIGINT        NOT NULL DEFAULT 0,
    CURRENTVILLAGE          INT           NOT NULL DEFAULT 0,
    TARGETVILLAGE           INT           NOT NULL DEFAULT 0,
    SIZE                    INT           NOT NULL DEFAULT 0
);
CREATE TABLE BANKS_ITEMS
(
    ITEMID                  BIGINT        NOT NULL PRIMARY KEY,
    BANKID                  BIGINT        NOT NULL,
    INSERTED                BIGINT        NOT NULL,
    STASIS                  TINYINT(1)    NOT NULL DEFAULT 0
);
