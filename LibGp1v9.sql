/*==============================================================*/
/* Nom de SGBD :  Microsoft SQL Server 2005                     */
/* Date de création :  25/11/2019 15:55:43                      */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BANQUE') and o.name = 'FK_BANQUE_CONFIRMER_PRESTA_D')
alter table BANQUE
   drop constraint FK_BANQUE_CONFIRMER_PRESTA_D
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CARACTERISER') and o.name = 'FK_CARACTER_CARACTERI_LIVRE')
alter table CARACTERISER
   drop constraint FK_CARACTER_CARACTERI_LIVRE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CARACTERISER') and o.name = 'FK_CARACTER_CARACTERI_MOT_CLE')
alter table CARACTERISER
   drop constraint FK_CARACTER_CARACTERI_MOT_CLE
go


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLIENT') and o.name = 'FK_CLIENT_DESIGNERF_ADRESSE')
alter table CLIENT
   drop constraint FK_CLIENT_DESIGNERF_ADRESSE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLIENT') and o.name = 'FK_CLIENT_DESIGNERL_ADRESSE')
alter table CLIENT
   drop constraint FK_CLIENT_DESIGNERL_ADRESSE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMMANDE') and o.name = 'FK_COMMANDE_FACTURER_ADRESSE')
alter table COMMANDE
   drop constraint FK_COMMANDE_FACTURER_ADRESSE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMMANDE') and o.name = 'FK_COMMANDE_PASSER_CLIENT')
alter table COMMANDE
   drop constraint FK_COMMANDE_PASSER_CLIENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ECRIRE') and o.name = 'FK_ECRIRE_ECRIRE_LIVRE')
alter table ECRIRE
   drop constraint FK_ECRIRE_ECRIRE_LIVRE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ECRIRE') and o.name = 'FK_ECRIRE_ECRIRE2_AUTEUR')
alter table ECRIRE
   drop constraint FK_ECRIRE_ECRIRE2_AUTEUR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EDITER') and o.name = 'FK_EDITER_EDITER_LIVRE')
alter table EDITER
   drop constraint FK_EDITER_EDITER_LIVRE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EDITER') and o.name = 'FK_EDITER_EDITER2_EDITEUR')
alter table EDITER
   drop constraint FK_EDITER_EDITER2_EDITEUR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLOYE') and o.name = 'FK_EMPLOYE_EXERCER_ROLE')
alter table EMPLOYE
   drop constraint FK_EMPLOYE_EXERCER_ROLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EVALUATION') and o.name = 'FK_EVALUATI_CONCERNER_LIVRE')
alter table EVALUATION
   drop constraint FK_EVALUATI_CONCERNER_LIVRE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EVALUATION') and o.name = 'FK_EVALUATI_EFFECTUER_CLIENT')
alter table EVALUATION
   drop constraint FK_EVALUATI_EFFECTUER_CLIENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EVALUATION') and o.name = 'FK_EVALUATI_IMPACTER_ACTION')
alter table EVALUATION
   drop constraint FK_EVALUATI_IMPACTER_ACTION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EVALUATION') and o.name = 'FK_EVALUATI_MODERER_EMPLOYE')
alter table EVALUATION
   drop constraint FK_EVALUATI_MODERER_EMPLOYE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FRACTIONNER') and o.name = 'FK_FRACTION_FRACTIONN_THEME')
alter table FRACTIONNER
   drop constraint FK_FRACTION_FRACTIONN_THEME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FRACTIONNER') and o.name = 'FK_FRACTION_FRACTIONN_SOUS_THE')
alter table FRACTIONNER
   drop constraint FK_FRACTION_FRACTIONN_SOUS_THE
go


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LIGNE_COMMANDE') and o.name = 'FK_LIGNE_CO_DESIGNER_LIVRE')
alter table LIGNE_COMMANDE
   drop constraint FK_LIGNE_CO_DESIGNER_LIVRE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LIGNE_COMMANDE') and o.name = 'FK_LIGNE_CO_POSSEDER_COMMANDE')
alter table LIGNE_COMMANDE
   drop constraint FK_LIGNE_CO_POSSEDER_COMMANDE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LIVRE') and o.name = 'FK_LIVRE_AFFECTER_ACTION')
alter table LIVRE
   drop constraint FK_LIVRE_AFFECTER_ACTION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LIVRE') and o.name = 'FK_LIVRE_APPLIQUER_EVENEMEN')
alter table LIVRE
   drop constraint FK_LIVRE_APPLIQUER_EVENEMEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LIVRE') and o.name = 'FK_LIVRE_REPERTORI_EMPLOYE')
alter table LIVRE
   drop constraint FK_LIVRE_REPERTORI_EMPLOYE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LIVRE') and o.name = 'FK_LIVRE_TAXER_TVA')
alter table LIVRE
   drop constraint FK_LIVRE_TAXER_TVA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SUBDIVISER') and o.name = 'FK_SUBDIVIS_SUBDIVISE_SOUS_THE')
alter table SUBDIVISER
   drop constraint FK_SUBDIVIS_SUBDIVISE_SOUS_THE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VISER') and o.name = 'FK_VISER_VISER2_LIGNE_CO')
alter table VISER
   drop constraint FK_VISER_VISER2_LIGNE_CO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ACTION')
            and   type = 'U')
   drop table ACTION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ADRESSE')
            and   type = 'U')
   drop table ADRESSE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AUTEUR')
            and   type = 'U')
   drop table AUTEUR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BANQUE')
            and   name  = 'CONFIRMER_FK'
            and   indid > 0
            and   indid < 255)
   drop index BANQUE.CONFIRMER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BANQUE')
            and   type = 'U')
   drop table BANQUE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CARACTERISER')
            and   name  = 'CARACTERISER_FK'
            and   indid > 0
            and   indid < 255)
   drop index CARACTERISER.CARACTERISER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CARACTERISER')
            and   name  = 'CARACTERISER2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CARACTERISER.CARACTERISER2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CARACTERISER')
            and   type = 'U')
   drop table CARACTERISER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATEGORIE')
            and   type = 'U')
   drop table CATEGORIE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('CLIENT')
            and   name  = 'DESIGNERFACTU_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENT.DESIGNERFACTU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLIENT')
            and   name  = 'DESIGNERLIVRAISON_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENT.DESIGNERLIVRAISON_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENT')
            and   type = 'U')
   drop table CLIENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COMMANDE')
            and   name  = 'FACTURER_FK'
            and   indid > 0
            and   indid < 255)
   drop index COMMANDE.FACTURER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COMMANDE')
            and   name  = 'PASSER_FK'
            and   indid > 0
            and   indid < 255)
   drop index COMMANDE.PASSER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COMMANDE')
            and   type = 'U')
   drop table COMMANDE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ECRIRE')
            and   name  = 'ECRIRE_FK'
            and   indid > 0
            and   indid < 255)
   drop index ECRIRE.ECRIRE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ECRIRE')
            and   name  = 'ECRIRE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ECRIRE.ECRIRE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ECRIRE')
            and   type = 'U')
   drop table ECRIRE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EDITER')
            and   name  = 'EDITER_FK'
            and   indid > 0
            and   indid < 255)
   drop index EDITER.EDITER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EDITER')
            and   name  = 'EDITER2_FK'
            and   indid > 0
            and   indid < 255)
   drop index EDITER.EDITER2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EDITER')
            and   type = 'U')
   drop table EDITER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EDITEUR')
            and   type = 'U')
   drop table EDITEUR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLOYE')
            and   name  = 'EXERCER_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLOYE.EXERCER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLOYE')
            and   type = 'U')
   drop table EMPLOYE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EVALUATION')
            and   name  = 'EFFECTUER_FK'
            and   indid > 0
            and   indid < 255)
   drop index EVALUATION.EFFECTUER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EVALUATION')
            and   name  = 'IMPACTER_FK'
            and   indid > 0
            and   indid < 255)
   drop index EVALUATION.IMPACTER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EVALUATION')
            and   name  = 'MODERER_FK'
            and   indid > 0
            and   indid < 255)
   drop index EVALUATION.MODERER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EVALUATION')
            and   name  = 'CONCERNER_FK'
            and   indid > 0
            and   indid < 255)
   drop index EVALUATION.CONCERNER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EVALUATION')
            and   type = 'U')
   drop table EVALUATION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EVENEMENT')
            and   type = 'U')
   drop table EVENEMENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FRACTIONNER')
            and   name  = 'FRACTIONNER2_FK'
            and   indid > 0
            and   indid < 255)
   drop index FRACTIONNER.FRACTIONNER2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FRACTIONNER')
            and   name  = 'FRACTIONNER_FK'
            and   indid > 0
            and   indid < 255)
   drop index FRACTIONNER.FRACTIONNER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FRACTIONNER')
            and   type = 'U')
   drop table FRACTIONNER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LIGNE_COMMANDE')
            and   name  = 'POSSEDER_FK'
            and   indid > 0
            and   indid < 255)
   drop index LIGNE_COMMANDE.POSSEDER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LIGNE_COMMANDE')
            and   name  = 'DESIGNER_FK'
            and   indid > 0
            and   indid < 255)
   drop index LIGNE_COMMANDE.DESIGNER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LIGNE_COMMANDE')
            and   type = 'U')
   drop table LIGNE_COMMANDE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LIVRE')
            and   name  = 'REPERTORIER_FK'
            and   indid > 0
            and   indid < 255)
   drop index LIVRE.REPERTORIER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LIVRE')
            and   name  = 'AFFECTER_FK'
            and   indid > 0
            and   indid < 255)
   drop index LIVRE.AFFECTER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LIVRE')
            and   name  = 'APPLIQUER_FK'
            and   indid > 0
            and   indid < 255)
   drop index LIVRE.APPLIQUER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LIVRE')
            and   name  = 'TAXER_FK'
            and   indid > 0
            and   indid < 255)
   drop index LIVRE.TAXER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LIVRE')
            and   name  = 'CAT_FK'
            and   indid > 0
            and   indid < 255)
   drop index LIVRE.CAT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LIVRE')
            and   type = 'U')
   drop table LIVRE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MOT_CLE')
            and   type = 'U')
   drop table MOT_CLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PARAMETRE')
            and   type = 'U')
   drop table PARAMETRE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRESTA_DEDIE')
            and   type = 'U')
   drop table PRESTA_DEDIE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ROLE')
            and   type = 'U')
   drop table ROLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SOUS_THEME')
            and   type = 'U')
   drop table SOUS_THEME
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THEME')
            and   type = 'U')
   drop table THEME
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUBDIVISER')
            and   name  = 'SUBDIVISER_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUBDIVISER.SUBDIVISER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SUBDIVISER')
            and   type = 'U')
   drop table SUBDIVISER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRANSPORTEUR')
            and   type = 'U')
   drop table TRANSPORTEUR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TVA')
            and   type = 'U')
   drop table TVA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VISER')
            and   name  = 'VISER2_FK'
            and   indid > 0
            and   indid < 255)
   drop index VISER.VISER2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VISER')
            and   type = 'U')
   drop table VISER
go

/*==============================================================*/
/* Table : ACTION                                               */
/*==============================================================*/
create table ACTION (
   ACTIONID             integer              identity,
   ACTIONNOM            varchar(100)         not null,
   constraint PK_ACTION primary key (ACTIONID)
)
go


/*==============================================================*/
/* Table : AFFECTER                                             */
/*==============================================================*/
create table AFFECTER (
   ACTLIVCODE			integer				identity,
   ACTIONID             integer             not null,
   LIVREISBN            varchar(13)         not null,
   constraint PK_ACTLIV primary key (ACTLIVCODE)
)
go

/*==============================================================*/
/* Index : ACT_LIV1_FK                                         */
/*==============================================================*/
create index ACT_LIV1_FK on AFFECTER (
	ACTIONID ASC
)
go

/*==============================================================*/
/* Index : ACT_LIV2_FK                                         */
/*==============================================================*/
create index ACT_LIV2_FK on AFFECTER (
	LIVREISBN ASC
)
go

/*==============================================================*/
/* Table : IMPACTER                                             */
/*==============================================================*/
create table IMPACTER(
   ACTEVALCODE			integer				identity,
   ACTIONID             integer             not null,
   EVALID               integer         not null,
   constraint PK_ACTEVAL primary key (ACTEVALCODE)
)
go


/*==============================================================*/
/* Index : ACT_EVAL1_FK                                         */
/*==============================================================*/
create index ACT_EVAL1_FK on IMPACTER (
	ACTIONID ASC
)
go

/*==============================================================*/
/* Index : ACT_EVAL2_FK                                         */
/*==============================================================*/
create index ACT_EVAL2_FK on IMPACTER (
	EVALID ASC
)
go


/*==============================================================*/
/* Table : ADRESSE                                              */
/*==============================================================*/
create table ADRESSE (
   ADRID                integer              identity,
   ADRRUE               varchar(100)         not null,
   ADRCOMPL             varchar(30)          null,
   ADRVILLE             varchar(100)         not null,
   ADRCP                varchar(15)          not null,
   ADRPAYS              varchar(100)         not null,
   ADRNOM               varchar(100)         not null,
   ADRPRENOM            varchar(100)         not null,
   ADRTEL               varchar(30)          null,
   constraint PK_ADRESSE primary key (ADRID)
)
go

/*==============================================================*/
/* Table : AUTEUR                                               */
/*==============================================================*/
create table AUTEUR (
   AUTEURCODE           integer              identity,
   AUTEURNOM            varchar(100)         not null,
   AUTEURPRENOM         varchar(100)         not null,
   constraint PK_AUTEUR primary key (AUTEURCODE)
)
go

/*==============================================================*/
/* Table : BANQUE                                               */
/*==============================================================*/
create table BANQUE (
   BANQUEID             integer              identity,
   PRESTAID             int                  not null,
   BANQUENOM            varchar(100)         not null,
   NUMIBAN              varchar(50)          not null,
   constraint PK_BANQUE primary key (BANQUEID)
)
go

/*==============================================================*/
/* Index : CONFIRMER_FK                                         */
/*==============================================================*/
create index CONFIRMER_FK on BANQUE (
PRESTAID ASC
)
go

/*==============================================================*/
/* Table : CARACTERISER                                         */
/*==============================================================*/
create table CARACTERISER (
   CARACTCODE			int					 identity,
   MOTCLEID             int                  not null,
   LIVREISBN            varchar(13)          not null,
   constraint PK_CARACTERISER primary key (MOTCLEID, LIVREISBN)
)
go

/*==============================================================*/
/* Index : CARACTERISER2_FK                                     */
/*==============================================================*/
create index CARACTERISER2_FK on CARACTERISER (
MOTCLEID ASC
)
go

/*==============================================================*/
/* Index : CARACTERISER_FK                                      */
/*==============================================================*/
create index CARACTERISER_FK on CARACTERISER (
LIVREISBN ASC
)
go


/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT (
   CLIENTCODE           integer              identity,
   ADRIDLIVR			int                  not null,
   ADRIDFACT			int                  not null,
   CLIENTNOM            varchar(100)         not null,
   CLIENTPRENOM         varchar(100)         not null,
   CLIENTLOGIN          varchar(50)          not null,
   CLIENTMDP            varchar(15)          not null,
   CLIENTMAIL           varchar(100)         not null,
   CLIENTSTATUT		    smallint		     not null,
   constraint PK_CLIENT primary key (CLIENTCODE)
)
go

/*==============================================================*/
/* Index : DESIGNERLIVRAISON_FK                                 */
/*==============================================================*/
create index DESIGNERLIVRAISON_FK on CLIENT (
ADRIDLIVR ASC
)
go

/*==============================================================*/
/* Index : DESIGNERFACTU_FK                                     */
/*==============================================================*/
create index DESIGNERFACTU_FK on CLIENT (
ADRIDFACT ASC
)
go

/*==============================================================*/
/* Table : COMMANDE                                             */
/*==============================================================*/
create table COMMANDE (
   COMMNUM              integer              identity,
   CLIENTCODE           int                  not null,
   ADRIDLIVR            int                  not null,
   ADRIDFACT			int					 not null,
   COMMDATE             datetime             not null,
   COMMIP               varchar(15)          not null,
   PAIEMENTDATE         datetime             null,
   TYPPAIECODE			integer				 not null,
   NUMTRANSAC           integer              null,
   COMMFACTNUM          int                  null,
   COLISNUM				int					 null,
   TRANSPID             int                  null,
   RECUPDATE            datetime             null,
   ETAPEDATE            datetime             null,
   ETAPEDEP             varchar(100)         null,
   ETAPEARR             varchar(100)         null,
   COLISSTATUT         varchar(100)         null,
   constraint PK_COMMANDE primary key (COMMNUM)
)
go

/*==============================================================*/
/* Index : PASSER_FK                                            */
/*==============================================================*/
create index PASSER_FK on COMMANDE (
CLIENTCODE ASC
)
go

/*==============================================================*/
/* Index : TRANSP_FK                                            */
/*==============================================================*/
create index TRANSP_FK on COMMANDE (
TRANSPID ASC
)
go

/*==============================================================*/
/* Index : TYPE_PAIEMENT_FK                                            */
/*==============================================================*/
create index TYPE_PAIEMENT_FK on COMMANDE (
TYPPAIECODE ASC
)
go

/*==============================================================*/
/* Index : FACTURER_FK                                          */
/*==============================================================*/
create index FACTURER_FK on COMMANDE (
ADRIDFACT ASC
)
go

/*==============================================================*/
/* Index : LIVRER_FK                                          */
/*==============================================================*/
create index LIVRER_FK on COMMANDE (
ADRIDLIVR ASC
)
go

/*==============================================================*/
/* Table : ECRIRE                                               */
/*==============================================================*/
create table ECRIRE (
   ECRITCODE			int					 identity,
   AUTEURCODE           int                  not null,
   LIVREISBN            varchar(13)          not null,
   constraint PK_ECRIRE primary key (AUTEURCODE, LIVREISBN)
)
go

/*==============================================================*/
/* Index : ECRIRE2_FK                                           */
/*==============================================================*/
create index ECRIRE2_FK on ECRIRE (
AUTEURCODE ASC
)
go

/*==============================================================*/
/* Index : ECRIRE_FK                                            */
/*==============================================================*/
create index ECRIRE_FK on ECRIRE (
LIVREISBN ASC
)
go


/*==============================================================*/
/* Table : EDITEUR                                              */
/*==============================================================*/
create table EDITEUR (
   EDITEURCODE          integer              identity,
   EDITEURNOM           varchar(100)         not null,
   constraint PK_EDITEUR primary key (EDITEURCODE)
)
go

/*==============================================================*/
/* Table : EMPLOYE                                              */
/*==============================================================*/
create table EMPLOYE (
   EMPLOYEID            integer              identity,
   ROLEID               int                  not null,
   EMPLOYENOM           varchar(100)         not null,
   EMPLOYEPRENOM        varchar(100)         not null,
   EMPLOYEGRADE         smallint             not null,
   EMPLOYELOGIN         varchar(50)          not null,
   EMPLOYEMDP           varchar(15)          not null,
   EMPLOYEEMAIL         varchar(100)         not null,
   PRISEPOSTE           datetime             not null,
   DEPARTPOSTE          datetime             null,
   constraint PK_EMPLOYE primary key (EMPLOYEID)
)
go

/*==============================================================*/
/* Index : EXERCER_FK                                           */
/*==============================================================*/
create index EXERCER_FK on EMPLOYE (
ROLEID ASC
)
go

/*==============================================================*/
/* Table : EVALUATION                                           */
/*==============================================================*/
create table EVALUATION (
   EVALID               integer              identity,
   LIVREISBN            varchar(13)          not null,
   EMPLOYEID            int                  null,
   CLIENTCODE           int                  not null,
   EVALCOMM             varchar(2000)        null,
   EVALNOTE             smallint             not null,
   COMMENTIP            varchar(15)          null,
   EVALDATE             datetime             null,
   MODERDATE            datetime             null,
   constraint PK_EVALUATION primary key (EVALID)
)
go

/*==============================================================*/
/* Index : CONCERNER_FK                                         */
/*==============================================================*/
create index CONCERNER_FK on EVALUATION (
LIVREISBN ASC
)
go

/*==============================================================*/
/* Index : MODERER_FK                                           */
/*==============================================================*/
create index MODERER_FK on EVALUATION (
EMPLOYEID ASC
)
go

/*==============================================================*/
/* Index : IMPACTER_FK                                          */
/*==============================================================*/
create index IMPACTER_FK on IMPACTER (
ACTIONID ASC
)
go

/*==============================================================*/
/* Index : EFFECTUER_FK                                         */
/*==============================================================*/
create index EFFECTUER_FK on EVALUATION (
CLIENTCODE ASC
)
go

/*==============================================================*/
/* Table : EVENEMENT                                            */
/*==============================================================*/
create table EVENEMENT (
   EVENCODE             integer              identity,
   EVENNOM              varchar(100)         not null,
   EVENDEBUT            datetime             not null,
   EVENFIN              datetime             not null,
   EVENIMAGE            varchar(300)         not null,
   REMISETAUX           decimal(4,2)         null,
   constraint PK_EVENEMENT primary key (EVENCODE)
)
go

/*==============================================================*/
/* Table : FRACTIONNER                                          */
/*==============================================================*/
create table FRACTIONNER (
   FRACTCODE			  int				   identity,
   THEMECODE              int                  not null,
   SSTHEMECODE            int                  not null,
   constraint PK_FRACTIONNER primary key (THEMECODE, SSTHEMECODE)
)
go

/*==============================================================*/
/* Index : FRACTIONNER_FK                                       */
/*==============================================================*/
create index FRACTIONNER_FK on FRACTIONNER (
THEMECODE ASC
)
go

/*==============================================================*/
/* Index : FRACTIONNER2_FK                                      */
/*==============================================================*/
create index FRACTIONNER2_FK on FRACTIONNER (
SSTHEMECODE ASC
)
go


/*==============================================================*/
/* Table : LIGNE_COMMANDE                                       */
/*==============================================================*/
create table LIGNE_COMMANDE (
   LIGNECOMMNUM         integer              identity,
   LIVREISBN            varchar(13)          not null,
   COMMNUM              int                  not null,
   LIGNECOMMPHT         decimal(7,2)         not null,
   LIGNECOMMQTE         smallint             not null,
   constraint PK_LIGNE_COMMANDE primary key (LIGNECOMMNUM)
)
go

/*==============================================================*/
/* Index : DESIGNER_FK                                          */
/*==============================================================*/
create index DESIGNER_FK on LIGNE_COMMANDE (
LIVREISBN ASC
)
go

/*==============================================================*/
/* Index : POSSEDER_FK                                          */
/*==============================================================*/
create index POSSEDER_FK on LIGNE_COMMANDE (
COMMNUM ASC
)
go


/*==============================================================*/
/* Table : LIVRE                                                */
/*==============================================================*/
create table LIVRE (
   LIVREISBN            varchar(13)          not null,
   TVACODE              int                  not null,
   EVENCODE             int                  null,
   EMPLOYEID            int                  not null,
   REPDATE              datetime             not null,
   LIVRETITRE           varchar(100)         not null,
   LIVRESSTITRE         varchar(150)         null,
   LIVREPRIXHT          decimal(6,2)         not null,
   LIVRERESUME          varchar(500)         not null,
   LIVRECOUV            varchar(250)         not null,
   LIVRESTATUT          varchar(30)          not null,
   CATCODE				int					 not null,
   EDITCODE				int				     not null,
   constraint PK_LIVRE primary key (LIVREISBN)
)
go


/*==============================================================*/
/* Index : TAXER_FK                                             */
/*==============================================================*/
create index TAXER_FK on LIVRE (
TVACODE ASC
)
go

/*==============================================================*/
/* Index : CAT_FK                                             */
/*==============================================================*/
create index CAT_FK on LIVRE (
CATCODE ASC
)
go


/*==============================================================*/
/* Index : APPLIQUER_FK                                         */
/*==============================================================*/
create index APPLIQUER_FK on LIVRE (
EDITCODE ASC
)
go

/*==============================================================*/
/* Index : AFFECTER_FK                                          */
/*==============================================================*/
create index AFFECTER_FK on AFFECTER (
ACTIONID ASC
)
go

/*==============================================================*/
/* Index : REPERTORIER_FK                                       */
/*==============================================================*/
create index REPERTORIER_FK on LIVRE (
EMPLOYEID ASC
)
go


/*==============================================================*/
/* Index : EDITER_FK                                         */
/*==============================================================*/
create index EDITER_FK on LIVRE (
EDITCODE ASC
)
go


/*==============================================================*/
/* Table : MOT_CLE                                              */
/*==============================================================*/
create table MOT_CLE (
   MOTCLEID             integer              identity,
   MOTCLEDESIGN         varchar(100)         not null,
   constraint PK_MOT_CLE primary key (MOTCLEID)
)
go

/*==============================================================*/
/* Table : PARAMETRE                                            */
/*==============================================================*/
create table PARAMETRE (
   PARAMNOM             varchar(100)         not null,
   PARAMVALEUR          varchar(100)         not null,
   constraint PK_PARAMETRE primary key (PARAMNOM)
)
go

/*==============================================================*/
/* Table : PRESTA_DEDIE                                         */
/*==============================================================*/
create table PRESTA_DEDIE (
   PRESTAID             integer              identity,
   PRESTADESIGN         varchar(80)          not null,
   PAIEVERIF            smallint             null,
   CONFIRMDATE          datetime             null,
   constraint PK_PRESTA_DEDIE primary key (PRESTAID)
)
go

/*==============================================================*/
/* Table : ROLE                                                 */
/*==============================================================*/
create table ROLE (
   ROLEID               integer              identity,
   ROLENOM              varchar(100)         not null,
   constraint PK_ROLE primary key (ROLEID)
)
go

/*==============================================================*/
/* Table : CATEGORIE                                           */
/*==============================================================*/
create table CATEGORIE (
   CATCODE			  int                  identity,
   CATLIBELLE       varchar(100)         not null,
   constraint PK_CATCODE primary key (CATCODE)
)
go

/*==============================================================*/
/* Table : THEME                                                */
/*==============================================================*/
create table THEME (
   THEMECODE          int                  identity,
   THEMELIBELLE       varchar(100)         not null,
   constraint PK_THEME primary key (THEMECODE)
)
go

/*==============================================================*/
/* Table : SOUS_THEME                                            */
/*==============================================================*/
create table SOUS_THEME (
   SSTHEMECODE            int             identity,
   SSTHEMELIBELLE    varchar(100)         not null,
   constraint PK_SSS_THEME primary key (SSTHEMECODE)
)
go

/*==============================================================*/
/* Table : SUBDIVISER                                           */
/*==============================================================*/
create table SUBDIVISER (
   CODESUBDIV		  int					   identity,
   LIVREISBN          varchar(13)          not null,
   THEMECODE          int                  not null,
   constraint PK_SUBDIVISER primary key (LIVREISBN, THEMECODE)
)
go

/*==============================================================*/
/* Index : SUBDIVISER_FK                                        */
/*==============================================================*/
create index SUBDIVISER_FK on SUBDIVISER (
THEMECODE ASC
)
go

/*==============================================================*/
/* Index : SUBDIVISER2_FK                                        */
/*==============================================================*/
create index SUBDIVISER2_FK on SUBDIVISER (
LIVREISBN ASC
)
go


/*==============================================================*/
/* Table : TRANSPORTEUR                                         */
/*==============================================================*/
create table TRANSPORTEUR (
   TRANSPID             integer              identity,
   TRANSPNOM            varchar(100)         not null,
   constraint PK_TRANSPORTEUR primary key (TRANSPID)
)
go

/*==============================================================*/
/* Table : TVA                                                  */
/*==============================================================*/
create table TVA (
   TVACODE              integer              identity,
   TVATAUX              decimal(4,2)         not null,
   constraint PK_TVA primary key (TVACODE)
)
go

/*==============================================================*/
/* Table : TYPE_PAIEMENT                                        */
/*==============================================================*/
create table TYPE_PAIEMENT (
   TYPEPID              integer              identity,
   TYPEPLIBELLE         varchar(50)          not null,
   PRESTACODE			int                  not null,
   constraint PK_TYPE_PAIEMENT primary key (TYPEPID)
)
go


/*==============================================================*/
/* Table : VISER                                                */
/*==============================================================*/
create table VISER (
   LIGNECOMMNUM         integer              not null,
   EVALLIGNEDATE        datetime             not null
)
go

/*==============================================================*/
/* Index : VISER2_FK                                            */
/*==============================================================*/
create index VISER2_FK on VISER (
LIGNECOMMNUM ASC
)
go

/*==============================================================*/
/* Table : LIER                                                 */
/*==============================================================*/
create table LIER (
   LIERCODE			  int				   identity,
   LIVREISBN          varchar(13)          not null,
   SSTHEMECODE        int                  not null,
   constraint PK_LIER primary key (LIVREISBN, SSTHEMECODE)
)
go

/*==============================================================*/
/* Index : LIER_FK                                          */
/*==============================================================*/
create index LIER_FK on LIER (
LIVREISBN  ASC
)
go

/*==============================================================*/
/* Index : LIER2_FK                                          */
/*==============================================================*/
create index LIER2_FK on LIER (
SSTHEMECODE  ASC
)
go

alter table AFFECTER
   add constraint FK_ACT_LIV1_AFFECTER foreign key (ACTIONID)
      references ACTION (ACTIONID)
go

alter table AFFECTER
   add constraint FK_ACT_LIV2_AFFECTER foreign key (LIVREISBN)
      references LIVRE (LIVREISBN)
go

alter table IMPACTER 
	add constraint FK_ACT_EVAL1_EVALUER foreign key (ACTIONID)
	references ACTION (ACTIONID)
go

alter table IMPACTER 
	add constraint FK_ACT_EVAL2_EVALUER foreign key (EVALID)
	references EVALUATION (EVALID)
go

alter table BANQUE
   add constraint FK_BANQUE_CONFIRMER_PRESTA_D foreign key (PRESTAID)
      references PRESTA_DEDIE (PRESTAID)
go

alter table CARACTERISER
   add constraint FK_CARACTER_CARACTERI_LIVRE foreign key (LIVREISBN)
      references LIVRE (LIVREISBN)
go

alter table CARACTERISER
   add constraint FK_CARACTER_CARACTERI_MOT_CLE foreign key (MOTCLEID)
      references MOT_CLE (MOTCLEID)
go

alter table CLIENT
   add constraint FK_CLIENT_DESIGNERF_ADRESSE foreign key (ADRIDFACT)
      references ADRESSE (ADRID)
go

alter table CLIENT
   add constraint FK_CLIENT_DESIGNERL_ADRESSE foreign key (ADRIDLIVR)
      references ADRESSE (ADRID)
go

alter table COMMANDE
   add constraint FK_COMMANDE_FACTURER_ADRESSE foreign key (ADRIDFACT)
      references ADRESSE (ADRID)
go

alter table COMMANDE
   add constraint FK_COMMANDE_LIVRER_ADRESSE foreign key (ADRIDLIVR)
      references ADRESSE (ADRID)
go

alter table COMMANDE
   add constraint FK_TRANSP_COMM foreign key (TRANSPID)
      references TRANSPORTEUR (TRANSPID)
go

alter table COMMANDE
   add constraint FK_COMMANDE_TYPE_PAIE foreign key (TYPPAIECODE)
      references TYPE_PAIEMENT (TYPEPID)
go

alter table COMMANDE
   add constraint FK_COMMANDE_PASSER_CLIENT foreign key (CLIENTCODE)
      references CLIENT (CLIENTCODE)
go

alter table ECRIRE
   add constraint FK_ECRIRE_ECRIRE_LIVRE foreign key (LIVREISBN)
      references LIVRE (LIVREISBN)
go

alter table ECRIRE
   add constraint FK_ECRIRE_ECRIRE2_AUTEUR foreign key (AUTEURCODE)
      references AUTEUR (AUTEURCODE)
go


alter table EMPLOYE
   add constraint FK_EMPLOYE_EXERCER_ROLE foreign key (ROLEID)
      references ROLE (ROLEID)
go

alter table EVALUATION
   add constraint FK_EVALUATI_CONCERNER_LIVRE foreign key (LIVREISBN)
      references LIVRE (LIVREISBN)
go

alter table EVALUATION
   add constraint FK_EVALUATI_EFFECTUER_CLIENT foreign key (CLIENTCODE)
      references CLIENT (CLIENTCODE)
go


alter table EVALUATION
   add constraint FK_EVALUATI_MODERER_EMPLOYE foreign key (EMPLOYEID)
      references EMPLOYE (EMPLOYEID)
go

alter table FRACTIONNER
   add constraint FK_FRACTION_FRACTIONN_SS_THEM foreign key (SSTHEMECODE)
      references SOUS_THEME (SSTHEMECODE)
go

alter table FRACTIONNER
   add constraint FK_FRACTION_FRACTIONN_THEME foreign key (THEMECODE)
      references THEME (THEMECODE)
go


alter table LIGNE_COMMANDE
   add constraint FK_LIGNE_CO_DESIGNER_LIVRE foreign key (LIVREISBN)
      references LIVRE (LIVREISBN)
go

alter table LIGNE_COMMANDE
   add constraint FK_LIGNE_CO_POSSEDER_COMMANDE foreign key (COMMNUM)
      references COMMANDE (COMMNUM)
go

alter table LIVRE
   add constraint FK_LIVRE_CATEGORIE_LIVRE foreign key (CATCODE)
      references CATEGORIE (CATCODE)
go

alter table LIVRE
   add constraint FK_LIVRE_APPLIQUER_EVENEMEN foreign key (EVENCODE)
      references EVENEMENT (EVENCODE)
go

alter table LIVRE
   add constraint FK_LIVRE_REPERTORI_EMPLOYE foreign key (EMPLOYEID)
      references EMPLOYE (EMPLOYEID)
go

alter table LIVRE
   add constraint FK_LIVRE_TAXER_TVA foreign key (TVACODE)
      references TVA (TVACODE)
go

alter table LIVRE
   add constraint FK_LIVRE_EDIT_LIVRE foreign key (EDITCODE)
      references EDITEUR (EDITEURCODE)
go


alter table SUBDIVISER
   add constraint FK_SUBDIVIS_SUBDIVISE_THEME foreign key (THEMECODE)
      references THEME (THEMECODE)
go

alter table SUBDIVISER
   add constraint FK_SUBDIVIS_SUBDIVISE_LIVRE foreign key (LIVREISBN)
      references LIVRE (LIVREISBN)
go

alter table TYPE_PAIEMENT 
	add constraint FK_PRESTA_TYPEP_GERER foreign key (PRESTACODE)
		references PRESTA_DEDIE (PRESTAID) 
go

alter table VISER
   add constraint FK_VISER_VISER2_LIGNE_CO foreign key (LIGNECOMMNUM)
      references LIGNE_COMMANDE (LIGNECOMMNUM)
go

alter table LIER
   add constraint FK_LIV_SSTH_LIER foreign key (LIVREISBN)
      references LIVRE (LIVREISBN)
go

alter table LIER
   add constraint FK_LIV_SSTH2_LIER foreign key (SSTHEMECODE)
      references SOUS_THEME (SSTHEMECODE)
go

