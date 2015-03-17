/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     08/03/2015 06:40:50 p.m.                     */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BUTACAS') and o.name = 'FK_BUTACAS_REL_SALAS_SALAS')
alter table BUTACAS
   drop constraint FK_BUTACAS_REL_SALAS_SALAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CATALOGOS') and o.name = 'FK_CATALOGO_REL_MODUL_MODULOS')
alter table CATALOGOS
   drop constraint FK_CATALOGO_REL_MODUL_MODULOS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CATSDETA') and o.name = 'FK_CATSDETA_REL_CATAL_CATALOGO')
alter table CATSDETA
   drop constraint FK_CATSDETA_REL_CATAL_CATALOGO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONES') and o.name = 'FK_FUNCIONE_REL_PELIC_PELICULA')
alter table FUNCIONES
   drop constraint FK_FUNCIONE_REL_PELIC_PELICULA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONES') and o.name = 'FK_FUNCIONE_REL_TBLES_TBLESPPR')
alter table FUNCIONES
   drop constraint FK_FUNCIONE_REL_TBLES_TBLESPPR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONESCATDETASIM') and o.name = 'FK_FUNCIONE_FUNCIONES_CATSDETA')
alter table FUNCIONESCATDETASIM
   drop constraint FK_FUNCIONE_FUNCIONES_CATSDETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONESCATDETASIM') and o.name = 'FK_FUNCIONE_REL_FUNCI_FUNCIONE')
alter table FUNCIONESCATDETASIM
   drop constraint FK_FUNCIONE_REL_FUNCI_FUNCIONE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PELICULAS') and o.name = 'FK_PELICULA_REL_PAISE_PAISES')
alter table PELICULAS
   drop constraint FK_PELICULA_REL_PAISE_PAISES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PELICULAS') and o.name = 'FK_PELICULA_REL_PRODU_PRODUCTO')
alter table PELICULAS
   drop constraint FK_PELICULA_REL_PRODU_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PELICULASCATDETASIM') and o.name = 'FK_PELICULA_PELICULAS_CATSDETA')
alter table PELICULASCATDETASIM
   drop constraint FK_PELICULA_PELICULAS_CATSDETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PELICULASCATDETASIM') and o.name = 'FK_PELICULA_REL_PELIC_PELICULA')
alter table PELICULASCATDETASIM
   drop constraint FK_PELICULA_REL_PELIC_PELICULA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCTORAS') and o.name = 'FK_PRODUCTO_REL_PRODU_PAISES')
alter table PRODUCTORAS
   drop constraint FK_PRODUCTO_REL_PRODU_PAISES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REL_FUNCIONES_SALAS') and o.name = 'FK_REL_FUNC_REL_FUNCI_FUNCIONE')
alter table REL_FUNCIONES_SALAS
   drop constraint FK_REL_FUNC_REL_FUNCI_FUNCIONE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REL_FUNCIONES_SALAS') and o.name = 'FK_REL_FUNC_REL_SALAS_SALAS')
alter table REL_FUNCIONES_SALAS
   drop constraint FK_REL_FUNC_REL_SALAS_SALAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESERVACIONES') and o.name = 'FK_RESERVAC_REL_RESER_TICKETS')
alter table RESERVACIONES
   drop constraint FK_RESERVAC_REL_RESER_TICKETS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SALAS') and o.name = 'FK_SALAS_TIENE2_SUCURSAL')
alter table SALAS
   drop constraint FK_SALAS_TIENE2_SUCURSAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SALASCATDETASIM') and o.name = 'FK_SALASCAT_REL_SALAS_SALAS')
alter table SALASCATDETASIM
   drop constraint FK_SALASCAT_REL_SALAS_SALAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SALASCATDETASIM') and o.name = 'FK_SALASCAT_SALASCATD_CATSDETA')
alter table SALASCATDETASIM
   drop constraint FK_SALASCAT_SALASCATD_CATSDETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SUCURSALES') and o.name = 'FK_SUCURSAL_REL_PAISE_PAISES')
alter table SUCURSALES
   drop constraint FK_SUCURSAL_REL_PAISE_PAISES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TICKETS') and o.name = 'FK_TICKETS_REL_SUCUR_SUCURSAL')
alter table TICKETS
   drop constraint FK_TICKETS_REL_SUCUR_SUCURSAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TICKET_DETALLES') and o.name = 'FK_TICKET_D_REL_FUNCI_FUNCIONE')
alter table TICKET_DETALLES
   drop constraint FK_TICKET_D_REL_FUNCI_FUNCIONE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TICKET_DETALLES') and o.name = 'FK_TICKET_D_REL_TICKE_BUTACAS')
alter table TICKET_DETALLES
   drop constraint FK_TICKET_D_REL_TICKE_BUTACAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TICKET_DETALLES') and o.name = 'FK_TICKET_D_REL_TICKE_TICKETS')
alter table TICKET_DETALLES
   drop constraint FK_TICKET_D_REL_TICKE_TICKETS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BUTACAS')
            and   name  = 'REL_SALAS_BUTACAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index BUTACAS.REL_SALAS_BUTACAS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BUTACAS')
            and   type = 'U')
   drop table BUTACAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CATALOGOS')
            and   name  = 'REL_MODULOS_CATALOGOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index CATALOGOS.REL_MODULOS_CATALOGOS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATALOGOS')
            and   type = 'U')
   drop table CATALOGOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CATSDETA')
            and   name  = 'REL_CATALOGOS_CATSDETA_FK'
            and   indid > 0
            and   indid < 255)
   drop index CATSDETA.REL_CATALOGOS_CATSDETA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATSDETA')
            and   type = 'U')
   drop table CATSDETA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FUNCIONES')
            and   name  = 'REL_TBLESPPRECIOS_FUNCIONES_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCIONES.REL_TBLESPPRECIOS_FUNCIONES_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FUNCIONES')
            and   name  = 'REL_PELICULAS_FUNCIONES_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCIONES.REL_PELICULAS_FUNCIONES_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FUNCIONES')
            and   type = 'U')
   drop table FUNCIONES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FUNCIONESCATDETASIM')
            and   name  = 'REL_FUNCIONES_FUNCCATSIM_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCIONESCATDETASIM.REL_FUNCIONES_FUNCCATSIM_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FUNCIONESCATDETASIM')
            and   name  = 'FUNCIONESCATDETASIM2_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCIONESCATDETASIM.FUNCIONESCATDETASIM2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FUNCIONESCATDETASIM')
            and   type = 'U')
   drop table FUNCIONESCATDETASIM
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MODULOS')
            and   type = 'U')
   drop table MODULOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PAISES')
            and   type = 'U')
   drop table PAISES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PELICULAS')
            and   name  = 'REL_PRODUCTORAS_PELICULAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index PELICULAS.REL_PRODUCTORAS_PELICULAS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PELICULAS')
            and   name  = 'REL_PAISES_PELICULAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index PELICULAS.REL_PAISES_PELICULAS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PELICULAS')
            and   type = 'U')
   drop table PELICULAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PELICULASCATDETASIM')
            and   name  = 'REL_PELICULAS_PELICATSIM_FK'
            and   indid > 0
            and   indid < 255)
   drop index PELICULASCATDETASIM.REL_PELICULAS_PELICATSIM_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PELICULASCATDETASIM')
            and   name  = 'PELICULASCATDETASIM2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PELICULASCATDETASIM.PELICULASCATDETASIM2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PELICULASCATDETASIM')
            and   type = 'U')
   drop table PELICULASCATDETASIM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCTORAS')
            and   name  = 'REL_PRODUCTORAS_PAISES_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTORAS.REL_PRODUCTORAS_PAISES_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCTORAS')
            and   type = 'U')
   drop table PRODUCTORAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REL_FUNCIONES_SALAS')
            and   name  = 'REL_SALAS_FUNCSALACATSIM_FK'
            and   indid > 0
            and   indid < 255)
   drop index REL_FUNCIONES_SALAS.REL_SALAS_FUNCSALACATSIM_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REL_FUNCIONES_SALAS')
            and   name  = 'REL_FUNCIONES_SALAS2_FK'
            and   indid > 0
            and   indid < 255)
   drop index REL_FUNCIONES_SALAS.REL_FUNCIONES_SALAS2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REL_FUNCIONES_SALAS')
            and   type = 'U')
   drop table REL_FUNCIONES_SALAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESERVACIONES')
            and   name  = 'REL_RESERVACION_TICKET_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESERVACIONES.REL_RESERVACION_TICKET_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESERVACIONES')
            and   type = 'U')
   drop table RESERVACIONES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SALAS')
            and   type = 'U')
   drop table SALAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SALASCATDETASIM')
            and   name  = 'REL_SALAS_SALACATSIM_FK'
            and   indid > 0
            and   indid < 255)
   drop index SALASCATDETASIM.REL_SALAS_SALACATSIM_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SALASCATDETASIM')
            and   name  = 'SALASCATDETASIM2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SALASCATDETASIM.SALASCATDETASIM2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SALASCATDETASIM')
            and   type = 'U')
   drop table SALASCATDETASIM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SUCURSALES')
            and   name  = 'REL_PAISES_SUCURSALES_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSALES.REL_PAISES_SUCURSALES_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SUCURSALES')
            and   type = 'U')
   drop table SUCURSALES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLESPPRECIOS')
            and   type = 'U')
   drop table TBLESPPRECIOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TICKETS')
            and   name  = 'REL_SUCURSALES_TICKETS_FK'
            and   indid > 0
            and   indid < 255)
   drop index TICKETS.REL_SUCURSALES_TICKETS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TICKETS')
            and   type = 'U')
   drop table TICKETS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TICKET_DETALLES')
            and   name  = 'REL_TICKETDETALLES_BUTACAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index TICKET_DETALLES.REL_TICKETDETALLES_BUTACAS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TICKET_DETALLES')
            and   name  = 'REL_FUNCIONES_TICKETDETALLES_FK'
            and   indid > 0
            and   indid < 255)
   drop index TICKET_DETALLES.REL_FUNCIONES_TICKETDETALLES_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TICKET_DETALLES')
            and   name  = 'REL_TICKET_DETALLES_FK'
            and   indid > 0
            and   indid < 255)
   drop index TICKET_DETALLES.REL_TICKET_DETALLES_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TICKET_DETALLES')
            and   type = 'U')
   drop table TICKET_DETALLES
go

/*==============================================================*/
/* Table: BUTACAS                                               */
/*==============================================================*/
create table BUTACAS (
   CODBUTACA            numeric              not null,
   CODSAL               numeric              not null,
   CODPAIS              numeric              not null,
   CODSUC               numeric              not null,
   ESTADO               int                  not null,
   BUTACAID             varchar(8)           not null,
   constraint PK_BUTACAS primary key nonclustered (CODBUTACA, CODSAL)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('BUTACAS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'BUTACAS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Contiene la lista de asientos dentro de todas las salas de la compañia.', 
   'user', @CurrentUser, 'table', 'BUTACAS'
go

/*==============================================================*/
/* Index: REL_SALAS_BUTACAS_FK                                  */
/*==============================================================*/
create index REL_SALAS_BUTACAS_FK on BUTACAS (
CODPAIS ASC,
CODSUC ASC,
CODSAL ASC
)
go

/*==============================================================*/
/* Table: CATALOGOS                                             */
/*==============================================================*/
create table CATALOGOS (
   CODMOD               numeric              not null,
   CODCAT               numeric              not null,
   DSCAT                varchar(128)         not null,
   constraint PK_CATALOGOS primary key nonclustered (CODMOD, CODCAT)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('CATALOGOS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'CATALOGOS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Contiene los catalogos de información clasificados por modulos.
   ', 
   'user', @CurrentUser, 'table', 'CATALOGOS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATALOGOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODMOD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'CODMOD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo correlativo que identifica cada modulo.',
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'CODMOD'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATALOGOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODCAT')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'CODCAT'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo que identifica cada catálogo dentro de un modulo.',
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'CODCAT'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATALOGOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DSCAT')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'DSCAT'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Descripción general del catálogo.',
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'DSCAT'
go

/*==============================================================*/
/* Index: REL_MODULOS_CATALOGOS_FK                              */
/*==============================================================*/
create index REL_MODULOS_CATALOGOS_FK on CATALOGOS (
CODMOD ASC
)
go

/*==============================================================*/
/* Table: CATSDETA                                              */
/*==============================================================*/
create table CATSDETA (
   CODMOD               numeric              not null,
   CODCAT               numeric              not null,
   CODCOR               numeric              not null,
   DSCCOR               varchar(256)         not null,
   STATUS               int                  null,
   constraint PK_CATSDETA primary key nonclustered (CODMOD, CODCAT, CODCOR)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('CATSDETA') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'CATSDETA' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Contiene los detalles que conforman cada uno de los catálogos dentro del sistema.', 
   'user', @CurrentUser, 'table', 'CATSDETA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATSDETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODMOD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'CODMOD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo correlativo que identifica cada modulo.',
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'CODMOD'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATSDETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODCAT')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'CODCAT'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo que identifica cada catálogo dentro de un modulo.',
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'CODCAT'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATSDETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODCOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'CODCOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo correlativo del detalle dentro de un catálogo.',
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'CODCOR'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATSDETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DSCCOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'DSCCOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Descripción del correlativo dentro del catálogo.',
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'DSCCOR'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATSDETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'STATUS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'STATUS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Indica si el catálogo esta habilitado dentro del sistema o no.',
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'STATUS'
go

/*==============================================================*/
/* Index: REL_CATALOGOS_CATSDETA_FK                             */
/*==============================================================*/
create index REL_CATALOGOS_CATSDETA_FK on CATSDETA (
CODMOD ASC,
CODCAT ASC
)
go

/*==============================================================*/
/* Table: FUNCIONES                                             */
/*==============================================================*/
create table FUNCIONES (
   IDPREC               numeric              not null,
   CODPEL               numeric              not null,
   CODFUNC              numeric              not null,
   HRAINICIO            datetime             not null,
   HRAFIN               datetime             not null,
   FECHA_FUNC           datetime             not null,
   constraint PK_FUNCIONES primary key nonclustered (IDPREC, CODPEL, CODFUNC)
)
go

/*==============================================================*/
/* Index: REL_PELICULAS_FUNCIONES_FK                            */
/*==============================================================*/
create index REL_PELICULAS_FUNCIONES_FK on FUNCIONES (
CODPEL ASC
)
go

/*==============================================================*/
/* Index: REL_TBLESPPRECIOS_FUNCIONES_FK                        */
/*==============================================================*/
create index REL_TBLESPPRECIOS_FUNCIONES_FK on FUNCIONES (
IDPREC ASC
)
go

/*==============================================================*/
/* Table: FUNCIONESCATDETASIM                                   */
/*==============================================================*/
create table FUNCIONESCATDETASIM (
   IDPREC               numeric              not null,
   CODPEL               numeric              not null,
   CODFUNC              numeric              not null,
   CODMOD               numeric              not null,
   CODCAT               numeric              not null,
   CODCOR               numeric              not null,
   constraint PK_FUNCIONESCATDETASIM primary key nonclustered (IDPREC, CODPEL, CODFUNC, CODMOD, CODCAT, CODCOR)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONESCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODMOD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM', 'column', 'CODMOD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo correlativo que identifica cada modulo.',
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM', 'column', 'CODMOD'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONESCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODCAT')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM', 'column', 'CODCAT'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo que identifica cada catálogo dentro de un modulo.',
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM', 'column', 'CODCAT'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONESCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODCOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM', 'column', 'CODCOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo correlativo del detalle dentro de un catálogo.',
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM', 'column', 'CODCOR'
go

/*==============================================================*/
/* Index: FUNCIONESCATDETASIM2_FK                               */
/*==============================================================*/
create index FUNCIONESCATDETASIM2_FK on FUNCIONESCATDETASIM (
CODMOD ASC,
CODCAT ASC,
CODCOR ASC
)
go

/*==============================================================*/
/* Index: REL_FUNCIONES_FUNCCATSIM_FK                           */
/*==============================================================*/
create index REL_FUNCIONES_FUNCCATSIM_FK on FUNCIONESCATDETASIM (
IDPREC ASC,
CODPEL ASC,
CODFUNC ASC
)
go

/*==============================================================*/
/* Table: MODULOS                                               */
/*==============================================================*/
create table MODULOS (
   CODMOD               numeric              not null,
   DSCMOD               varchar(128)         not null,
   URLMOD               varchar(128)         not null,
   constraint PK_MODULOS primary key nonclustered (CODMOD)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('MODULOS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'MODULOS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Contiene todos y cada uno de los modulos que componen el sistema en general.', 
   'user', @CurrentUser, 'table', 'MODULOS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('MODULOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODMOD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'MODULOS', 'column', 'CODMOD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo correlativo que identifica cada modulo.',
   'user', @CurrentUser, 'table', 'MODULOS', 'column', 'CODMOD'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('MODULOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DSCMOD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'MODULOS', 'column', 'DSCMOD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Descripción del propósito y/o contenido del modulo.',
   'user', @CurrentUser, 'table', 'MODULOS', 'column', 'DSCMOD'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('MODULOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'URLMOD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'MODULOS', 'column', 'URLMOD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Url a la que apunta el modulo dentro del servidor de aplicaciones.',
   'user', @CurrentUser, 'table', 'MODULOS', 'column', 'URLMOD'
go

/*==============================================================*/
/* Table: PAISES                                                */
/*==============================================================*/
create table PAISES (
   CODPAIS              numeric              not null,
   NOMBPAIS             varchar(64)          not null,
   constraint PK_PAISES primary key nonclustered (CODPAIS)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PAISES') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PAISES' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Contiene la lista de paises en las que se encuentran distribuidas las sucursales.', 
   'user', @CurrentUser, 'table', 'PAISES'
go

/*==============================================================*/
/* Table: PELICULAS                                             */
/*==============================================================*/
create table PELICULAS (
   CODPEL               numeric              not null,
   CODPAIS              numeric              not null,
   CODPROD              numeric              not null,
   DURACION             datetime             not null,
   ANO                  datetime             null,
   TAGLINE              varchar(128)         null,
   RATING               real                 null,
   constraint PK_PELICULAS primary key nonclustered (CODPEL)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PELICULAS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PELICULAS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Contiene todas las peliculas que se añaden a la cartelera.', 
   'user', @CurrentUser, 'table', 'PELICULAS'
go

/*==============================================================*/
/* Index: REL_PAISES_PELICULAS_FK                               */
/*==============================================================*/
create index REL_PAISES_PELICULAS_FK on PELICULAS (
CODPAIS ASC
)
go

/*==============================================================*/
/* Index: REL_PRODUCTORAS_PELICULAS_FK                          */
/*==============================================================*/
create index REL_PRODUCTORAS_PELICULAS_FK on PELICULAS (
CODPROD ASC
)
go

/*==============================================================*/
/* Table: PELICULASCATDETASIM                                   */
/*==============================================================*/
create table PELICULASCATDETASIM (
   CODPEL               numeric              not null,
   CODMOD               numeric              not null,
   CODCAT               numeric              not null,
   CODCOR               numeric              not null,
   constraint PK_PELICULASCATDETASIM primary key nonclustered (CODPEL, CODMOD, CODCAT, CODCOR)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULASCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODMOD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULASCATDETASIM', 'column', 'CODMOD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo correlativo que identifica cada modulo.',
   'user', @CurrentUser, 'table', 'PELICULASCATDETASIM', 'column', 'CODMOD'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULASCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODCAT')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULASCATDETASIM', 'column', 'CODCAT'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo que identifica cada catálogo dentro de un modulo.',
   'user', @CurrentUser, 'table', 'PELICULASCATDETASIM', 'column', 'CODCAT'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULASCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODCOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULASCATDETASIM', 'column', 'CODCOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo correlativo del detalle dentro de un catálogo.',
   'user', @CurrentUser, 'table', 'PELICULASCATDETASIM', 'column', 'CODCOR'
go

/*==============================================================*/
/* Index: PELICULASCATDETASIM2_FK                               */
/*==============================================================*/
create index PELICULASCATDETASIM2_FK on PELICULASCATDETASIM (
CODMOD ASC,
CODCAT ASC,
CODCOR ASC
)
go

/*==============================================================*/
/* Index: REL_PELICULAS_PELICATSIM_FK                           */
/*==============================================================*/
create index REL_PELICULAS_PELICATSIM_FK on PELICULASCATDETASIM (
CODPEL ASC
)
go

/*==============================================================*/
/* Table: PRODUCTORAS                                           */
/*==============================================================*/
create table PRODUCTORAS (
   CODPROD              numeric              not null,
   CODPAIS              numeric              null,
   NMBPROD              varchar(64)          not null,
   constraint PK_PRODUCTORAS primary key nonclustered (CODPROD)
)
go

/*==============================================================*/
/* Index: REL_PRODUCTORAS_PAISES_FK                             */
/*==============================================================*/
create index REL_PRODUCTORAS_PAISES_FK on PRODUCTORAS (
CODPAIS ASC
)
go

/*==============================================================*/
/* Table: REL_FUNCIONES_SALAS                                   */
/*==============================================================*/
create table REL_FUNCIONES_SALAS (
   CODPAIS              numeric              not null,
   CODSUC               numeric              not null,
   CODSAL               numeric              not null,
   IDPREC               numeric              not null,
   CODPEL               numeric              not null,
   CODFUNC              numeric              not null,
   constraint PK_REL_FUNCIONES_SALAS primary key nonclustered (CODPAIS, CODSUC, CODSAL, IDPREC, CODPEL, CODFUNC)
)
go

/*==============================================================*/
/* Index: REL_FUNCIONES_SALAS2_FK                               */
/*==============================================================*/
create index REL_FUNCIONES_SALAS2_FK on REL_FUNCIONES_SALAS (
IDPREC ASC,
CODPEL ASC,
CODFUNC ASC
)
go

/*==============================================================*/
/* Index: REL_SALAS_FUNCSALACATSIM_FK                           */
/*==============================================================*/
create index REL_SALAS_FUNCSALACATSIM_FK on REL_FUNCIONES_SALAS (
CODPAIS ASC,
CODSUC ASC,
CODSAL ASC
)
go

/*==============================================================*/
/* Table: RESERVACIONES                                         */
/*==============================================================*/
create table RESERVACIONES (
   CODPAIS              numeric              not null,
   CODSUC               numeric              not null,
   CODTICKET            numeric              not null,
   CODRESERVA           numeric              not null,
   MONTO                double precision     not null,
   FECHARESERVA         datetime             not null,
   OBSRESERVA           varchar(256)         not null,
   NOMBRECLI            varchar(64)          not null,
   APELLIOCLI           varchar(64)          not null,
   DOCUMENTO            varchar(15)          not null,
   constraint PK_RESERVACIONES primary key nonclustered (CODPAIS, CODSUC, CODTICKET, CODRESERVA)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('RESERVACIONES') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'RESERVACIONES' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Almacena reservaciones que un cliente realiza con un máximo de 7 dias de anticipación.', 
   'user', @CurrentUser, 'table', 'RESERVACIONES'
go

/*==============================================================*/
/* Index: REL_RESERVACION_TICKET_FK                             */
/*==============================================================*/
create index REL_RESERVACION_TICKET_FK on RESERVACIONES (
CODPAIS ASC,
CODSUC ASC,
CODTICKET ASC
)
go

/*==============================================================*/
/* Table: SALAS                                                 */
/*==============================================================*/
create table SALAS (
   CODPAIS              numeric              not null,
   CODSUC               numeric              not null,
   CODSAL               numeric              not null,
   NMBSALA              varchar(8)           not null,
   CAPACIDAD            int                  not null,
   constraint PK_SALAS primary key nonclustered (CODPAIS, CODSUC, CODSAL)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SALAS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SALAS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Contiene las salas dentro de todas las sucursales.', 
   'user', @CurrentUser, 'table', 'SALAS'
go

/*==============================================================*/
/* Table: SALASCATDETASIM                                       */
/*==============================================================*/
create table SALASCATDETASIM (
   CODPAIS              numeric              not null,
   CODSUC               numeric              not null,
   CODSAL               numeric              not null,
   CODMOD               numeric              not null,
   CODCAT               numeric              not null,
   CODCOR               numeric              not null,
   constraint PK_SALASCATDETASIM primary key nonclustered (CODPAIS, CODSUC, CODSAL, CODMOD, CODCAT, CODCOR)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALASCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODMOD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODMOD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo correlativo que identifica cada modulo.',
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODMOD'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALASCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODCAT')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODCAT'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo que identifica cada catálogo dentro de un modulo.',
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODCAT'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALASCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODCOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODCOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo correlativo del detalle dentro de un catálogo.',
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODCOR'
go

/*==============================================================*/
/* Index: SALASCATDETASIM2_FK                                   */
/*==============================================================*/
create index SALASCATDETASIM2_FK on SALASCATDETASIM (
CODMOD ASC,
CODCAT ASC,
CODCOR ASC
)
go

/*==============================================================*/
/* Index: REL_SALAS_SALACATSIM_FK                               */
/*==============================================================*/
create index REL_SALAS_SALACATSIM_FK on SALASCATDETASIM (
CODPAIS ASC,
CODSUC ASC,
CODSAL ASC
)
go

/*==============================================================*/
/* Table: SUCURSALES                                            */
/*==============================================================*/
create table SUCURSALES (
   CODPAIS              numeric              not null,
   CODSUC               numeric              not null,
   DIRECCION            varchar(64)          not null,
   PBX                  varchar(64)          null,
   TEL                  varchar(64)          not null,
   constraint PK_SUCURSALES primary key nonclustered (CODPAIS, CODSUC)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SUCURSALES') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SUCURSALES' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Contiene la lista de sucursales de todos los paises.', 
   'user', @CurrentUser, 'table', 'SUCURSALES'
go

/*==============================================================*/
/* Index: REL_PAISES_SUCURSALES_FK                              */
/*==============================================================*/
create index REL_PAISES_SUCURSALES_FK on SUCURSALES (
CODPAIS ASC
)
go

/*==============================================================*/
/* Table: TBLESPPRECIOS                                         */
/*==============================================================*/
create table TBLESPPRECIOS (
   IDPREC               numeric              not null,
   REFMOD1              numeric              not null,
   REFCAT1              numeric              not null,
   REFCOR1              numeric              not null,
   REFMOD2              numeric              not null,
   REFCAT2              numeric              not null,
   REFCOR2              numeric              not null,
   VALOR                double precision     not null,
   ULTMODF              datetime             null,
   constraint PK_TBLESPPRECIOS primary key nonclustered (IDPREC)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TBLESPPRECIOS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Tabla especializada de precios dónde se almacena a que formato y a que categoría pertenece el precio, a través de sus detalles de catálogo.', 
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS'
go

/*==============================================================*/
/* Table: TICKETS                                               */
/*==============================================================*/
create table TICKETS (
   CODPAIS              numeric              not null,
   CODSUC               numeric              not null,
   CODTICKET            numeric              not null,
   FECHA                datetime             not null,
   TOTAL_A_PAGAR        double precision     not null,
   DESCUENTO            double precision     null,
   FORMA_PAGO           varchar(16)          not null,
   constraint PK_TICKETS primary key nonclustered (CODPAIS, CODSUC, CODTICKET)
)
go

/*==============================================================*/
/* Index: REL_SUCURSALES_TICKETS_FK                             */
/*==============================================================*/
create index REL_SUCURSALES_TICKETS_FK on TICKETS (
CODPAIS ASC,
CODSUC ASC
)
go

/*==============================================================*/
/* Table: TICKET_DETALLES                                       */
/*==============================================================*/
create table TICKET_DETALLES (
   CODBUTACA            numeric              not null,
   CODSAL               numeric              not null,
   IDPREC               numeric              not null,
   CODPEL               numeric              not null,
   CODFUNC              numeric              not null,
   CODPAIS              numeric              not null,
   CODSUC               numeric              not null,
   CODTICKET            numeric              not null,
   ID                   numeric              not null,
   CANTIDAD             int                  not null,
   DESCUENTO            double precision     not null,
   constraint PK_TICKET_DETALLES primary key nonclustered (CODBUTACA, CODSAL, IDPREC, CODPEL, CODFUNC, CODPAIS, CODSUC, CODTICKET, ID)
)
go

/*==============================================================*/
/* Index: REL_TICKET_DETALLES_FK                                */
/*==============================================================*/
create index REL_TICKET_DETALLES_FK on TICKET_DETALLES (
CODPAIS ASC,
CODSUC ASC,
CODTICKET ASC
)
go

/*==============================================================*/
/* Index: REL_FUNCIONES_TICKETDETALLES_FK                       */
/*==============================================================*/
create index REL_FUNCIONES_TICKETDETALLES_FK on TICKET_DETALLES (
IDPREC ASC,
CODPEL ASC,
CODFUNC ASC
)
go

/*==============================================================*/
/* Index: REL_TICKETDETALLES_BUTACAS_FK                         */
/*==============================================================*/
create index REL_TICKETDETALLES_BUTACAS_FK on TICKET_DETALLES (
CODBUTACA ASC,
CODSAL ASC
)
go

alter table BUTACAS
   add constraint FK_BUTACAS_REL_SALAS_SALAS foreign key (CODPAIS, CODSUC, CODSAL)
      references SALAS (CODPAIS, CODSUC, CODSAL)
go

alter table CATALOGOS
   add constraint FK_CATALOGO_REL_MODUL_MODULOS foreign key (CODMOD)
      references MODULOS (CODMOD)
go

alter table CATSDETA
   add constraint FK_CATSDETA_REL_CATAL_CATALOGO foreign key (CODMOD, CODCAT)
      references CATALOGOS (CODMOD, CODCAT)
go

alter table FUNCIONES
   add constraint FK_FUNCIONE_REL_PELIC_PELICULA foreign key (CODPEL)
      references PELICULAS (CODPEL)
go

alter table FUNCIONES
   add constraint FK_FUNCIONE_REL_TBLES_TBLESPPR foreign key (IDPREC)
      references TBLESPPRECIOS (IDPREC)
go

alter table FUNCIONESCATDETASIM
   add constraint FK_FUNCIONE_FUNCIONES_CATSDETA foreign key (CODMOD, CODCAT, CODCOR)
      references CATSDETA (CODMOD, CODCAT, CODCOR)
go

alter table FUNCIONESCATDETASIM
   add constraint FK_FUNCIONE_REL_FUNCI_FUNCIONE foreign key (IDPREC, CODPEL, CODFUNC)
      references FUNCIONES (IDPREC, CODPEL, CODFUNC)
go

alter table PELICULAS
   add constraint FK_PELICULA_REL_PAISE_PAISES foreign key (CODPAIS)
      references PAISES (CODPAIS)
go

alter table PELICULAS
   add constraint FK_PELICULA_REL_PRODU_PRODUCTO foreign key (CODPROD)
      references PRODUCTORAS (CODPROD)
go

alter table PELICULASCATDETASIM
   add constraint FK_PELICULA_PELICULAS_CATSDETA foreign key (CODMOD, CODCAT, CODCOR)
      references CATSDETA (CODMOD, CODCAT, CODCOR)
go

alter table PELICULASCATDETASIM
   add constraint FK_PELICULA_REL_PELIC_PELICULA foreign key (CODPEL)
      references PELICULAS (CODPEL)
go

alter table PRODUCTORAS
   add constraint FK_PRODUCTO_REL_PRODU_PAISES foreign key (CODPAIS)
      references PAISES (CODPAIS)
go

alter table REL_FUNCIONES_SALAS
   add constraint FK_REL_FUNC_REL_FUNCI_FUNCIONE foreign key (IDPREC, CODPEL, CODFUNC)
      references FUNCIONES (IDPREC, CODPEL, CODFUNC)
go

alter table REL_FUNCIONES_SALAS
   add constraint FK_REL_FUNC_REL_SALAS_SALAS foreign key (CODPAIS, CODSUC, CODSAL)
      references SALAS (CODPAIS, CODSUC, CODSAL)
go

alter table RESERVACIONES
   add constraint FK_RESERVAC_REL_RESER_TICKETS foreign key (CODPAIS, CODSUC, CODTICKET)
      references TICKETS (CODPAIS, CODSUC, CODTICKET)
go

alter table SALAS
   add constraint FK_SALAS_TIENE2_SUCURSAL foreign key (CODPAIS, CODSUC)
      references SUCURSALES (CODPAIS, CODSUC)
go

alter table SALASCATDETASIM
   add constraint FK_SALASCAT_REL_SALAS_SALAS foreign key (CODPAIS, CODSUC, CODSAL)
      references SALAS (CODPAIS, CODSUC, CODSAL)
go

alter table SALASCATDETASIM
   add constraint FK_SALASCAT_SALASCATD_CATSDETA foreign key (CODMOD, CODCAT, CODCOR)
      references CATSDETA (CODMOD, CODCAT, CODCOR)
go

alter table SUCURSALES
   add constraint FK_SUCURSAL_REL_PAISE_PAISES foreign key (CODPAIS)
      references PAISES (CODPAIS)
go

alter table TICKETS
   add constraint FK_TICKETS_REL_SUCUR_SUCURSAL foreign key (CODPAIS, CODSUC)
      references SUCURSALES (CODPAIS, CODSUC)
go

alter table TICKET_DETALLES
   add constraint FK_TICKET_D_REL_FUNCI_FUNCIONE foreign key (IDPREC, CODPEL, CODFUNC)
      references FUNCIONES (IDPREC, CODPEL, CODFUNC)
go

alter table TICKET_DETALLES
   add constraint FK_TICKET_D_REL_TICKE_BUTACAS foreign key (CODBUTACA, CODSAL)
      references BUTACAS (CODBUTACA, CODSAL)
go

alter table TICKET_DETALLES
   add constraint FK_TICKET_D_REL_TICKE_TICKETS foreign key (CODPAIS, CODSUC, CODTICKET)
      references TICKETS (CODPAIS, CODSUC, CODTICKET)
go

