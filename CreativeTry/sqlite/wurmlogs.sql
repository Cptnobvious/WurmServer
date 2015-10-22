CREATE TABLE ITEM_TRANSFER_LOG 
(
    ID                      INTEGER       NOT NULL,
    ITEMID                  BIGINT(20)    NOT NULL ,
    ITEMNAME                VARCHAR(40)   NOT NULL ,
    OLDOWNERID              BIGINT(20)    NOT NULL ,
    OLDOWNERNAME            VARCHAR(40)   NOT NULL ,
    NEWOWNERID              BIGINT(20)    NOT NULL ,
    NEWOWNERNAME            VARCHAR(40)   NOT NULL ,
    TRANSFERTIME            TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (ID) 
);
CREATE TABLE TILE_LOG 
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    TILEX                   INT           NOT NULL DEFAULT 0,
    TILEY                   INT           NOT NULL DEFAULT 0,
    LAYER                   INT           NOT NULL DEFAULT 0,
    PERFORMER               BIGINT        NOT NULL DEFAULT 0,
    ACTION                  INT           NOT NULL DEFAULT 0,
    DATE                    BIGINT(20)    NOT NULL DEFAULT 0
);
CREATE TABLE SERVER_STATS_TYPE
(
    STATISTIC_ID            VARCHAR(30)   NOT NULL PRIMARY KEY,
    NAME                    VARCHAR(45)   NOT NULL,
    DESCRIPTION             VARCHAR(45)   NOT NULL,
    SOURCE                  'game-server' NOT NULL
);
CREATE TABLE SERVER_STATS_LOG 
(
    ID                      INTEGER       NOT NULL PRIMARY KEY,
    EVENT_TIME              TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    SERVER_ID               UNSIGNED INT(11)       NOT NULL,
    SERVER_NAME             VARCHAR(50)   NOT NULL,
    STATISTIC_ID            VARCHAR(30)   NOT NULL,
    VALUE_INT               INT(11)       NOT NULL DEFAULT '0'
);
CREATE TABLE PLAYER_LOGIN_EVENT_LOG (
    EVENT_ID                INTEGER       NOT NULL PRIMARY KEY,
    NAME                    VARCHAR(40)   NOT NULL,
    WURMID                  BIGINT        NOT NULL,
    IP_ADDRESS              VARCHAR(16)   NOT NULL,
    EMAIL_ADDRESS           VARCHAR(127)  NOT NULL,
    SERVER_ID               INT           NOT NULL,
    LOGIN_TIME              TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP
);
