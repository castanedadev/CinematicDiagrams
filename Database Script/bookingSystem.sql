/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     19/05/2015 01:10:11 a.m.                     */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BUTACAS') and o.name = 'FK_BUTACAS_RELSALASB_SALAS')
alter table BUTACAS
   drop constraint FK_BUTACAS_RELSALASB_SALAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CATALOGOS') and o.name = 'FK_CATALOGO_RELMODULO_MODULOS')
alter table CATALOGOS
   drop constraint FK_CATALOGO_RELMODULO_MODULOS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CATSDETA') and o.name = 'FK_CATSDETA_RELCATALO_CATALOGO')
alter table CATSDETA
   drop constraint FK_CATSDETA_RELCATALO_CATALOGO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONES') and o.name = 'FK_FUNCIONE_RELPELICU_PELICULA')
alter table FUNCIONES
   drop constraint FK_FUNCIONE_RELPELICU_PELICULA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONES') and o.name = 'FK_FUNCIONE_RELTBLESP_TBLESPPR')
alter table FUNCIONES
   drop constraint FK_FUNCIONE_RELTBLESP_TBLESPPR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONESCATDETASIM') and o.name = 'FK_FUNCIONE_FUNCIONES_CATSDETA')
alter table FUNCIONESCATDETASIM
   drop constraint FK_FUNCIONE_FUNCIONES_CATSDETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONESCATDETASIM') and o.name = 'FK_FUNCIONE_RELFUNCIO_FUNCIONE')
alter table FUNCIONESCATDETASIM
   drop constraint FK_FUNCIONE_RELFUNCIO_FUNCIONE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONSALADETA') and o.name = 'FK_FUNCIONS_FUNCIONSA_FUNCIONE')
alter table FUNCIONSALADETA
   drop constraint FK_FUNCIONS_FUNCIONSA_FUNCIONE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FUNCIONSALADETA') and o.name = 'FK_FUNCIONS_RELSALASF_SALAS')
alter table FUNCIONSALADETA
   drop constraint FK_FUNCIONS_RELSALASF_SALAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PELICULAS') and o.name = 'FK_PELICULA_RELPAISES_PAISES')
alter table PELICULAS
   drop constraint FK_PELICULA_RELPAISES_PAISES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PELICULAS') and o.name = 'FK_PELICULA_RELPRODUC_PRODUCTO')
alter table PELICULAS
   drop constraint FK_PELICULA_RELPRODUC_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PELICULASCATDETASIM') and o.name = 'FK_PELICULA_PELICULAS_CATSDETA')
alter table PELICULASCATDETASIM
   drop constraint FK_PELICULA_PELICULAS_CATSDETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PELICULASCATDETASIM') and o.name = 'FK_PELICULA_RELPELICU_PELICULA')
alter table PELICULASCATDETASIM
   drop constraint FK_PELICULA_RELPELICU_PELICULA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCTORAS') and o.name = 'FK_PRODUCTO_RELPRODUC_PAISES')
alter table PRODUCTORAS
   drop constraint FK_PRODUCTO_RELPRODUC_PAISES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESERVACIONES') and o.name = 'FK_RESERVAC_RELRESERV_TICKETS')
alter table RESERVACIONES
   drop constraint FK_RESERVAC_RELRESERV_TICKETS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SALAS') and o.name = 'FK_SALAS_RELSUCURS_SUCURSAL')
alter table SALAS
   drop constraint FK_SALAS_RELSUCURS_SUCURSAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SALASCATDETASIM') and o.name = 'FK_SALASCAT_SALASCATD_SALAS')
alter table SALASCATDETASIM
   drop constraint FK_SALASCAT_SALASCATD_SALAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SALASCATDETASIM') and o.name = 'FK_SALASCAT_SALASCATD_CATSDETA')
alter table SALASCATDETASIM
   drop constraint FK_SALASCAT_SALASCATD_CATSDETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SUCURSALES') and o.name = 'FK_SUCURSAL_RELPAISES_PAISES')
alter table SUCURSALES
   drop constraint FK_SUCURSAL_RELPAISES_PAISES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TICKETS') and o.name = 'FK_TICKETS_RELSUCURS_SUCURSAL')
alter table TICKETS
   drop constraint FK_TICKETS_RELSUCURS_SUCURSAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TICKET_DETALLES') and o.name = 'FK_TICKET_D_RELBUTACA_BUTACAS')
alter table TICKET_DETALLES
   drop constraint FK_TICKET_D_RELBUTACA_BUTACAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TICKET_DETALLES') and o.name = 'FK_TICKET_D_RELFUNCIO_FUNCIONE')
alter table TICKET_DETALLES
   drop constraint FK_TICKET_D_RELFUNCIO_FUNCIONE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TICKET_DETALLES') and o.name = 'FK_TICKET_D_RELTICKET_TICKETS')
alter table TICKET_DETALLES
   drop constraint FK_TICKET_D_RELTICKET_TICKETS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BUTACAS')
            and   name  = 'RELSALASBUTACAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index BUTACAS.RELSALASBUTACAS_FK
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
            and   name  = 'RELMODULOCATALOGO_FK'
            and   indid > 0
            and   indid < 255)
   drop index CATALOGOS.RELMODULOCATALOGO_FK
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
            and   name  = 'RELCATALOGOCATSDETA_FK'
            and   indid > 0
            and   indid < 255)
   drop index CATSDETA.RELCATALOGOCATSDETA_FK
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
            and   name  = 'RELTBLESPPRECIOSFUNCIONES_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCIONES.RELTBLESPPRECIOSFUNCIONES_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FUNCIONES')
            and   name  = 'RELPELICULASFUNCIONES_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCIONES.RELPELICULASFUNCIONES_FK
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
            and   name  = 'RELFUNCIONESCATSDETA_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCIONESCATDETASIM.RELFUNCIONESCATSDETA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FUNCIONESCATDETASIM')
            and   type = 'U')
   drop table FUNCIONESCATDETASIM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FUNCIONSALADETA')
            and   name  = 'RELSALASFUNCIONES_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCIONSALADETA.RELSALASFUNCIONES_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FUNCIONSALADETA')
            and   name  = 'FUNCIONSALADETA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index FUNCIONSALADETA.FUNCIONSALADETA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FUNCIONSALADETA')
            and   type = 'U')
   drop table FUNCIONSALADETA
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
            and   name  = 'RELPRODUCTORASPELICULAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index PELICULAS.RELPRODUCTORASPELICULAS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PELICULAS')
            and   name  = 'RELPAISESPELICULA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PELICULAS.RELPAISESPELICULA_FK
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
            and   name  = 'RELPELICULASCATSDETASIM_FK'
            and   indid > 0
            and   indid < 255)
   drop index PELICULASCATDETASIM.RELPELICULASCATSDETASIM_FK
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
            and   name  = 'RELPRODUCTORASPAISES_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTORAS.RELPRODUCTORASPAISES_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCTORAS')
            and   type = 'U')
   drop table PRODUCTORAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESERVACIONES')
            and   name  = 'RELRESERVACIONTICKET_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESERVACIONES.RELRESERVACIONTICKET_FK
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
            and   name  = 'SALASCATDETASIM_FK'
            and   indid > 0
            and   indid < 255)
   drop index SALASCATDETASIM.SALASCATDETASIM_FK
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
            and   name  = 'RELPAISESSUCURSALES_FK'
            and   indid > 0
            and   indid < 255)
   drop index SUCURSALES.RELPAISESSUCURSALES_FK
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
            and   name  = 'RELSUCURSALTICKETS_FK'
            and   indid > 0
            and   indid < 255)
   drop index TICKETS.RELSUCURSALTICKETS_FK
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
            and   name  = 'RELBUTACADETALLETICKETS_FK'
            and   indid > 0
            and   indid < 255)
   drop index TICKET_DETALLES.RELBUTACADETALLETICKETS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TICKET_DETALLES')
            and   name  = 'RELFUNCIONDETALLETICKETS_FK'
            and   indid > 0
            and   indid < 255)
   drop index TICKET_DETALLES.RELFUNCIONDETALLETICKETS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TICKET_DETALLES')
            and   name  = 'RELTICKETDETALLETICKET_FK'
            and   indid > 0
            and   indid < 255)
   drop index TICKET_DETALLES.RELTICKETDETALLETICKET_FK
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
   CODBUTACA            varchar(4)           not null,
   CODPAIS              varchar(4)           not null,
   CODSUC               numeric              not null,
   CODSAL               numeric              not null,
   ESTADO               int                  not null,
   constraint PK_BUTACAS primary key nonclustered (CODBUTACA, CODPAIS, CODSUC, CODSAL)
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

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BUTACAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODBUTACA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BUTACAS', 'column', 'CODBUTACA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código que identifica una butaca dentro de una sala..',
   'user', @CurrentUser, 'table', 'BUTACAS', 'column', 'CODBUTACA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BUTACAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BUTACAS', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'BUTACAS', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BUTACAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSUC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BUTACAS', 'column', 'CODSUC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Llave primaria que identifica sucursales.',
   'user', @CurrentUser, 'table', 'BUTACAS', 'column', 'CODSUC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BUTACAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSAL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BUTACAS', 'column', 'CODSAL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo de sala/auditorio.',
   'user', @CurrentUser, 'table', 'BUTACAS', 'column', 'CODSAL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BUTACAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ESTADO')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BUTACAS', 'column', 'ESTADO'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Atributo de un objeto butaca que indica si esta disponible(1), ocupado(0) o inhabilitado (-1)',
   'user', @CurrentUser, 'table', 'BUTACAS', 'column', 'ESTADO'
go

/*==============================================================*/
/* Index: RELSALASBUTACAS_FK                                    */
/*==============================================================*/
create index RELSALASBUTACAS_FK on BUTACAS (
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
   PARENTC1             numeric              null,
   PARENTC2             numeric              null,
   CHILDC1              numeric              null,
   CHILDC2              numeric              null,
   ESTADO               int                  null,
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
   'Descripción general del contenido/propósito catálogo.',
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'DSCAT'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATALOGOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTC1')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'PARENTC1'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Campo que almacena una referencia de un catálogo padre(Jerarquia 1), sirve para no crear una relación recursiva y manejar la recursión desde la aplicación.',
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'PARENTC1'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATALOGOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTC2')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'PARENTC2'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Campo que almacena una referencia de un catálogo padre(Jerarquia 2), sirve para no crear una relación recursiva y manejar la recursión desde la aplicación.',
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'PARENTC2'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATALOGOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CHILDC1')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'CHILDC1'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Campo que almacena una referencia de un catálogo derivado(Jerarquia 1), sirve para no crear una relación recursiva y manejar la recursión desde la aplicación.',
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'CHILDC1'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATALOGOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CHILDC2')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'CHILDC2'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Campo que almacena una referencia de un catálogo derivado(Jerarquia 2), sirve para no crear una relación recursiva y manejar la recursión desde la aplicación.',
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'CHILDC2'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATALOGOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ESTADO')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'ESTADO'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Atributo de un objeto butaca que indica si esta disponible(1), ocupado(0) o inhabilitado (-1)',
   'user', @CurrentUser, 'table', 'CATALOGOS', 'column', 'ESTADO'
go

/*==============================================================*/
/* Index: RELMODULOCATALOGO_FK                                  */
/*==============================================================*/
create index RELMODULOCATALOGO_FK on CATALOGOS (
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
   PARENTCD1            numeric              null,
   PARENTCD2            numeric              null,
   CHILDCD1             numeric              null,
   CHILDCD2             numeric              null,
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
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTCD1')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'PARENTCD1'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Campo que almacena una referencia de un detalle de catálogo padre(Jerarquia 1), sirve para no crear una relación recursiva y manejar la recursión desde la aplicación.',
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'PARENTCD1'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATSDETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTCD2')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'PARENTCD2'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Campo que almacena una referencia de un detalle de catálogo padre(Jerarquia 2), sirve para no crear una relación recursiva y manejar la recursión desde la aplicación.',
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'PARENTCD2'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATSDETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CHILDCD1')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'CHILDCD1'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Campo que almacena una referencia de un detalle de catálogo derivado(Jerarquia 1), sirve para no crear una relación recursiva y manejar la recursión desde la aplicación.',
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'CHILDCD1'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('CATSDETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CHILDCD2')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'CHILDCD2'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Campo que almacena una referencia de un detalle de catálogo derivado(Jerarquia 2), sirve para no crear una relación recursiva y manejar la recursión desde la aplicación.',
   'user', @CurrentUser, 'table', 'CATSDETA', 'column', 'CHILDCD2'
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
/* Index: RELCATALOGOCATSDETA_FK                                */
/*==============================================================*/
create index RELCATALOGOCATSDETA_FK on CATSDETA (
CODMOD ASC,
CODCAT ASC
)
go

/*==============================================================*/
/* Table: FUNCIONES                                             */
/*==============================================================*/
create table FUNCIONES (
   CODPEL               numeric              not null,
   CODFUNC              numeric              not null,
   IDPREC               numeric              not null,
   MODFOR               numeric              not null,
   CATFOR               numeric              not null,
   CORFOR               numeric              not null,
   MODCLA               numeric              not null,
   CATCLA               numeric              not null,
   CORCLA               numeric              not null,
   HRAINICIO            datetime             not null,
   HRAFIN               datetime             not null,
   FECHA_FUNC           datetime             not null,
   constraint PK_FUNCIONES primary key nonclustered (CODPEL, CODFUNC)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FUNCIONES') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'FUNCIONES' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Tabla que almacenara las funciones de peliculas y sus detalles definidos dentro de la compañia.', 
   'user', @CurrentUser, 'table', 'FUNCIONES'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPEL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CODPEL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de peliculas.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CODPEL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODFUNC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CODFUNC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de una función.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CODFUNC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDPREC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'IDPREC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo único que identifca el precio.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'IDPREC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MODFOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'MODFOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Modulo del formato asociado al precio.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'MODFOR'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CATFOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CATFOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Catalogo del formato asociado al precio.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CATFOR'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CORFOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CORFOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Correlativo del formato asociado al precio.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CORFOR'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MODCLA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'MODCLA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Modulo de la clasificación (de personas) asociada al precio.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'MODCLA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CATCLA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CATCLA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Catálogo de clasificación asociada al precio.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CATCLA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CORCLA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CORCLA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de la clasificación asociada al precio.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'CORCLA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HRAINICIO')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'HRAINICIO'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Hora de inicio prevista para la función,',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'HRAINICIO'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HRAFIN')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'HRAFIN'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Hora de fin de la función.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'HRAFIN'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FECHA_FUNC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'FECHA_FUNC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Fecha de la función.',
   'user', @CurrentUser, 'table', 'FUNCIONES', 'column', 'FECHA_FUNC'
go

/*==============================================================*/
/* Index: RELPELICULASFUNCIONES_FK                              */
/*==============================================================*/
create index RELPELICULASFUNCIONES_FK on FUNCIONES (
CODPEL ASC
)
go

/*==============================================================*/
/* Index: RELTBLESPPRECIOSFUNCIONES_FK                          */
/*==============================================================*/
create index RELTBLESPPRECIOSFUNCIONES_FK on FUNCIONES (
IDPREC ASC,
MODFOR ASC,
CATFOR ASC,
CORFOR ASC,
MODCLA ASC,
CATCLA ASC,
CORCLA ASC
)
go

/*==============================================================*/
/* Table: FUNCIONESCATDETASIM                                   */
/*==============================================================*/
create table FUNCIONESCATDETASIM (
   CODPEL               numeric              not null,
   CODFUNC              numeric              not null,
   CODMOD               numeric              not null,
   CODCAT               numeric              not null,
   CODCOR               numeric              not null,
   constraint PK_FUNCIONESCATDETASIM primary key nonclustered (CODPEL, CODFUNC, CODMOD, CODCAT, CODCOR)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FUNCIONESCATDETASIM') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Futura cross table que rompe la relación de muchos a muchos entre la tabla (Catsdeta) detalles de catalogo y la tabla funciones.', 
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONESCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPEL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM', 'column', 'CODPEL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de peliculas.',
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM', 'column', 'CODPEL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONESCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODFUNC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM', 'column', 'CODFUNC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de una función.',
   'user', @CurrentUser, 'table', 'FUNCIONESCATDETASIM', 'column', 'CODFUNC'
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
/* Index: RELFUNCIONESCATSDETA_FK                               */
/*==============================================================*/
create index RELFUNCIONESCATSDETA_FK on FUNCIONESCATDETASIM (
CODPEL ASC,
CODFUNC ASC
)
go

/*==============================================================*/
/* Table: FUNCIONSALADETA                                       */
/*==============================================================*/
create table FUNCIONSALADETA (
   CODPAIS              varchar(4)           not null,
   CODSUC               numeric              not null,
   CODSAL               numeric              not null,
   CODPEL               numeric              not null,
   CODFUNC              numeric              not null,
   constraint PK_FUNCIONSALADETA primary key nonclustered (CODPAIS, CODSUC, CODSAL, CODPEL, CODFUNC)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FUNCIONSALADETA') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Futura cross table que rompe la relación de muchos a muchos entre la tabla Funciones y la tabla Salas.', 
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONSALADETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONSALADETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSUC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA', 'column', 'CODSUC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Llave primaria que identifica sucursales.',
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA', 'column', 'CODSUC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONSALADETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSAL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA', 'column', 'CODSAL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo de sala/auditorio.',
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA', 'column', 'CODSAL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONSALADETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPEL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA', 'column', 'CODPEL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de peliculas.',
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA', 'column', 'CODPEL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FUNCIONSALADETA')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODFUNC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA', 'column', 'CODFUNC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de una función.',
   'user', @CurrentUser, 'table', 'FUNCIONSALADETA', 'column', 'CODFUNC'
go

/*==============================================================*/
/* Index: FUNCIONSALADETA2_FK                                   */
/*==============================================================*/
create index FUNCIONSALADETA2_FK on FUNCIONSALADETA (
CODPEL ASC,
CODFUNC ASC
)
go

/*==============================================================*/
/* Index: RELSALASFUNCIONES_FK                                  */
/*==============================================================*/
create index RELSALASFUNCIONES_FK on FUNCIONSALADETA (
CODPAIS ASC,
CODSUC ASC,
CODSAL ASC
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
   'Contiene todos y cada uno de los diversos modulos que componen el sistema en general.', 
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
   CODPAIS              varchar(4)           not null,
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
   'Contiene la lista de paises en las que se encuentran distribuidas las sucursales y los paises de origen de las productoras existentes...', 
   'user', @CurrentUser, 'table', 'PAISES'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PAISES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PAISES', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'PAISES', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PAISES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NOMBPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PAISES', 'column', 'NOMBPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Nombre del pais.',
   'user', @CurrentUser, 'table', 'PAISES', 'column', 'NOMBPAIS'
go

/*==============================================================*/
/* Table: PELICULAS                                             */
/*==============================================================*/
create table PELICULAS (
   CODPEL               numeric              not null,
   CODPAIS              varchar(4)           not null,
   CODPROD              numeric              not null,
   DURACION             real                 not null,
   ANO                  numeric              null,
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

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPEL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'CODPEL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de peliculas.',
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'CODPEL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPROD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'CODPROD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo de la compañia productora.',
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'CODPROD'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DURACION')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'DURACION'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Tiempo de duración de la pelicula.',
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'DURACION'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ANO')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'ANO'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Año en que fue lanzada la pelicula.',
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'ANO'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TAGLINE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'TAGLINE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Frase representativa de la pelicula (slogan).',
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'TAGLINE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RATING')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'RATING'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Rating otorgado por la IMDB a la pelicula.',
   'user', @CurrentUser, 'table', 'PELICULAS', 'column', 'RATING'
go

/*==============================================================*/
/* Index: RELPAISESPELICULA_FK                                  */
/*==============================================================*/
create index RELPAISESPELICULA_FK on PELICULAS (
CODPAIS ASC
)
go

/*==============================================================*/
/* Index: RELPRODUCTORASPELICULAS_FK                            */
/*==============================================================*/
create index RELPRODUCTORASPELICULAS_FK on PELICULAS (
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

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PELICULASCATDETASIM') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PELICULASCATDETASIM' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Futura cross table que rompe la relación de muchos a muchos entre la tabla de detalles de catálogo (catsdeta) y la tabla de peliculas.', 
   'user', @CurrentUser, 'table', 'PELICULASCATDETASIM'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PELICULASCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPEL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PELICULASCATDETASIM', 'column', 'CODPEL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de peliculas.',
   'user', @CurrentUser, 'table', 'PELICULASCATDETASIM', 'column', 'CODPEL'
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
/* Index: RELPELICULASCATSDETASIM_FK                            */
/*==============================================================*/
create index RELPELICULASCATSDETASIM_FK on PELICULASCATDETASIM (
CODPEL ASC
)
go

/*==============================================================*/
/* Table: PRODUCTORAS                                           */
/*==============================================================*/
create table PRODUCTORAS (
   CODPROD              numeric              not null,
   CODPAIS              varchar(4)           null,
   NMBPROD              varchar(64)          not null,
   constraint PK_PRODUCTORAS primary key nonclustered (CODPROD)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('PRODUCTORAS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'PRODUCTORAS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Tabla de las compañias productoras de peliculas que sirven como proveedor al cine.', 
   'user', @CurrentUser, 'table', 'PRODUCTORAS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PRODUCTORAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPROD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PRODUCTORAS', 'column', 'CODPROD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo de la compañia productora.',
   'user', @CurrentUser, 'table', 'PRODUCTORAS', 'column', 'CODPROD'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PRODUCTORAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PRODUCTORAS', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'PRODUCTORAS', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('PRODUCTORAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NMBPROD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'PRODUCTORAS', 'column', 'NMBPROD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Nombre de la compañia productora.',
   'user', @CurrentUser, 'table', 'PRODUCTORAS', 'column', 'NMBPROD'
go

/*==============================================================*/
/* Index: RELPRODUCTORASPAISES_FK                               */
/*==============================================================*/
create index RELPRODUCTORASPAISES_FK on PRODUCTORAS (
CODPAIS ASC
)
go

/*==============================================================*/
/* Table: RESERVACIONES                                         */
/*==============================================================*/
create table RESERVACIONES (
   CODPAIS              varchar(4)           not null,
   CODSUC               numeric              not null,
   CODTICKET            numeric              not null,
   CODRESERVA           numeric              not null,
   MONTOT               double precision     not null,
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

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('RESERVACIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('RESERVACIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSUC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'CODSUC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Llave primaria que identifica sucursales.',
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'CODSUC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('RESERVACIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODTICKET')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'CODTICKET'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo del ticket.',
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'CODTICKET'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('RESERVACIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODRESERVA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'CODRESERVA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código de reserva.',
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'CODRESERVA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('RESERVACIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MONTOT')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'MONTOT'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Monto total que fue cancelado por la reserva.',
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'MONTOT'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('RESERVACIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FECHARESERVA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'FECHARESERVA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Fecha en que se realizó la reserva.',
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'FECHARESERVA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('RESERVACIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OBSRESERVA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'OBSRESERVA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Observación opcional / Detalles adicionales asociados con la reserva.',
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'OBSRESERVA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('RESERVACIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NOMBRECLI')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'NOMBRECLI'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Nombre del cliente a nombre de quien se hizo la reserva.',
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'NOMBRECLI'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('RESERVACIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'APELLIOCLI')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'APELLIOCLI'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Apellido del cliente.',
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'APELLIOCLI'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('RESERVACIONES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DOCUMENTO')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'DOCUMENTO'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Documento de identificación del cliente.',
   'user', @CurrentUser, 'table', 'RESERVACIONES', 'column', 'DOCUMENTO'
go

/*==============================================================*/
/* Index: RELRESERVACIONTICKET_FK                               */
/*==============================================================*/
create index RELRESERVACIONTICKET_FK on RESERVACIONES (
CODPAIS ASC,
CODSUC ASC,
CODTICKET ASC
)
go

/*==============================================================*/
/* Table: SALAS                                                 */
/*==============================================================*/
create table SALAS (
   CODPAIS              varchar(4)           not null,
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

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALAS', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'SALAS', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSUC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALAS', 'column', 'CODSUC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Llave primaria que identifica sucursales.',
   'user', @CurrentUser, 'table', 'SALAS', 'column', 'CODSUC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSAL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALAS', 'column', 'CODSAL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo de sala/auditorio.',
   'user', @CurrentUser, 'table', 'SALAS', 'column', 'CODSAL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NMBSALA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALAS', 'column', 'NMBSALA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Nombre alusivo a la sala (E.G: Sala A, Sala B)',
   'user', @CurrentUser, 'table', 'SALAS', 'column', 'NMBSALA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALAS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CAPACIDAD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALAS', 'column', 'CAPACIDAD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Capacidad de personas que puede contener la sala.',
   'user', @CurrentUser, 'table', 'SALAS', 'column', 'CAPACIDAD'
go

/*==============================================================*/
/* Table: SALASCATDETASIM                                       */
/*==============================================================*/
create table SALASCATDETASIM (
   CODPAIS              varchar(4)           not null,
   CODSUC               numeric              not null,
   CODSAL               numeric              not null,
   CODMOD               numeric              not null,
   CODCAT               numeric              not null,
   CODCOR               numeric              not null,
   constraint PK_SALASCATDETASIM primary key nonclustered (CODPAIS, CODSUC, CODSAL, CODMOD, CODCAT, CODCOR)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SALASCATDETASIM') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SALASCATDETASIM' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Futura cross table que rompe la relación de muchos a muchos entre la tabla (Catsdeta) detalles de catalogo y la tabla Salas.', 
   'user', @CurrentUser, 'table', 'SALASCATDETASIM'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALASCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALASCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSUC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODSUC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Llave primaria que identifica sucursales.',
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODSUC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SALASCATDETASIM')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSAL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODSAL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo de sala/auditorio.',
   'user', @CurrentUser, 'table', 'SALASCATDETASIM', 'column', 'CODSAL'
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
/* Index: SALASCATDETASIM_FK                                    */
/*==============================================================*/
create index SALASCATDETASIM_FK on SALASCATDETASIM (
CODPAIS ASC,
CODSUC ASC,
CODSAL ASC
)
go

/*==============================================================*/
/* Table: SUCURSALES                                            */
/*==============================================================*/
create table SUCURSALES (
   CODPAIS              varchar(4)           not null,
   CODSUC               numeric              not null,
   DIRECCION            varchar(64)          not null,
   PBX                  varchar(32)          null,
   TEL                  varchar(32)          null,
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

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SUCURSALES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SUCURSALES', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'SUCURSALES', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SUCURSALES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSUC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SUCURSALES', 'column', 'CODSUC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Llave primaria que identifica sucursales.',
   'user', @CurrentUser, 'table', 'SUCURSALES', 'column', 'CODSUC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SUCURSALES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DIRECCION')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SUCURSALES', 'column', 'DIRECCION'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Dirección exacta de la sucursal.',
   'user', @CurrentUser, 'table', 'SUCURSALES', 'column', 'DIRECCION'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SUCURSALES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PBX')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SUCURSALES', 'column', 'PBX'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'PBX de la sucursal.',
   'user', @CurrentUser, 'table', 'SUCURSALES', 'column', 'PBX'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SUCURSALES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TEL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SUCURSALES', 'column', 'TEL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Número de contacto principal de la sucursal.',
   'user', @CurrentUser, 'table', 'SUCURSALES', 'column', 'TEL'
go

/*==============================================================*/
/* Index: RELPAISESSUCURSALES_FK                                */
/*==============================================================*/
create index RELPAISESSUCURSALES_FK on SUCURSALES (
CODPAIS ASC
)
go

/*==============================================================*/
/* Table: TBLESPPRECIOS                                         */
/*==============================================================*/
create table TBLESPPRECIOS (
   IDPREC               numeric              not null,
   MODFOR               numeric              not null,
   CATFOR               numeric              not null,
   CORFOR               numeric              not null,
   MODCLA               numeric              not null,
   CATCLA               numeric              not null,
   CORCLA               numeric              not null,
   VALOR                double precision     not null,
   ULTMODF              datetime             null,
   constraint PK_TBLESPPRECIOS primary key nonclustered (IDPREC, MODFOR, CATFOR, CORFOR, MODCLA, CATCLA, CORCLA)
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

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TBLESPPRECIOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDPREC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'IDPREC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo único que identifca el precio.',
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'IDPREC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TBLESPPRECIOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MODFOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'MODFOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Modulo del formato asociado al precio.',
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'MODFOR'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TBLESPPRECIOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CATFOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'CATFOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Catalogo del formato asociado al precio.',
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'CATFOR'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TBLESPPRECIOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CORFOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'CORFOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Correlativo del formato asociado al precio.',
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'CORFOR'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TBLESPPRECIOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MODCLA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'MODCLA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Modulo de la clasificación (de personas) asociada al precio.',
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'MODCLA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TBLESPPRECIOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CATCLA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'CATCLA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Catálogo de clasificación asociada al precio.',
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'CATCLA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TBLESPPRECIOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CORCLA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'CORCLA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de la clasificación asociada al precio.',
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'CORCLA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TBLESPPRECIOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'VALOR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'VALOR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Precio en unidades monetarias. ($)',
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'VALOR'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TBLESPPRECIOS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ULTMODF')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'ULTMODF'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ultima fecha en la que se modifico el precio.',
   'user', @CurrentUser, 'table', 'TBLESPPRECIOS', 'column', 'ULTMODF'
go

/*==============================================================*/
/* Table: TICKETS                                               */
/*==============================================================*/
create table TICKETS (
   CODPAIS              varchar(4)           not null,
   CODSUC               numeric              not null,
   CODTICKET            numeric              not null,
   FECHA                datetime             not null,
   TOTAL_A_PAGAR        double precision     not null,
   FORMA_PAGO           varchar(16)          not null,
   MONTODESC            double precision     null,
   PORCENTAJEDESC       double precision     null,
   OBSFACT              varchar(64)          null,
   constraint PK_TICKETS primary key nonclustered (CODPAIS, CODSUC, CODTICKET)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TICKETS') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'TICKETS' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Tabla destinada al almacenamiento de los tickets de compra generados en todas las sucursales.', 
   'user', @CurrentUser, 'table', 'TICKETS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKETS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKETS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSUC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'CODSUC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Llave primaria que identifica sucursales.',
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'CODSUC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKETS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODTICKET')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'CODTICKET'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo del ticket.',
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'CODTICKET'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKETS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FECHA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'FECHA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Fecha en la que fue emitido el ticket.',
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'FECHA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKETS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TOTAL_A_PAGAR')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'TOTAL_A_PAGAR'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Total a pagar por el cliente.',
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'TOTAL_A_PAGAR'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKETS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FORMA_PAGO')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'FORMA_PAGO'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Forma de pago seleccionada (Tarjeta Crédito, Efectivo).',
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'FORMA_PAGO'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKETS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MONTODESC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'MONTODESC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Monto de descuento aplicable en la compra total.',
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'MONTODESC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKETS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PORCENTAJEDESC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'PORCENTAJEDESC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Porcentaje de descuento aplicable en la compra total.',
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'PORCENTAJEDESC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKETS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OBSFACT')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'OBSFACT'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Observación o información adicional de la factura.',
   'user', @CurrentUser, 'table', 'TICKETS', 'column', 'OBSFACT'
go

/*==============================================================*/
/* Index: RELSUCURSALTICKETS_FK                                 */
/*==============================================================*/
create index RELSUCURSALTICKETS_FK on TICKETS (
CODPAIS ASC,
CODSUC ASC
)
go

/*==============================================================*/
/* Table: TICKET_DETALLES                                       */
/*==============================================================*/
create table TICKET_DETALLES (
   ID                   numeric              not null,
   CODTICKET            numeric              not null,
   CODPAIS              varchar(4)           not null,
   CODSUC               numeric              not null,
   CODBUTACA            varchar(4)           not null,
   BUT_CODPAIS          varchar(4)           not null,
   BUT_CODSUC           numeric              not null,
   CODSAL               numeric              not null,
   CODPEL               numeric              not null,
   CODFUNC              numeric              not null,
   CANTIDAD             int                  not null,
   PORCDESCUENTO        double precision     null,
   MONTODESCUENTO       double precision     null,
   SUBTOTAL             double precision     not null,
   constraint PK_TICKET_DETALLES primary key nonclustered (CODPAIS, CODSUC, CODTICKET, ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TICKET_DETALLES') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'TICKET_DETALLES' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Detalle de un ticket (linea por linea) que indica cantidad, subtotal, etc.', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Identificador génerico para detalles de ticke (# linea)t.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODTICKET')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODTICKET'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo del ticket.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODTICKET'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSUC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODSUC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Llave primaria que identifica sucursales.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODSUC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODBUTACA')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODBUTACA'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código que identifica una butaca dentro de una sala..',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODBUTACA'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BUT_CODPAIS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'BUT_CODPAIS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo del pais.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'BUT_CODPAIS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BUT_CODSUC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'BUT_CODSUC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Llave primaria que identifica sucursales.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'BUT_CODSUC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODSAL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODSAL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Codigo de sala/auditorio.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODSAL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODPEL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODPEL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de peliculas.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODPEL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODFUNC')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODFUNC'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Código correlativo de una función.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CODFUNC'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CANTIDAD')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CANTIDAD'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Cantidad de boletos.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'CANTIDAD'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PORCDESCUENTO')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'PORCDESCUENTO'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Porcentaje de descuento aplicable para una función en especifíco.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'PORCDESCUENTO'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MONTODESCUENTO')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'MONTODESCUENTO'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Monto de descuento aplicable para una función en especifíco.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'MONTODESCUENTO'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TICKET_DETALLES')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SUBTOTAL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'SUBTOTAL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Subtotal a pagar en concepto de las unidades adquiridas por función dentro de una compra.',
   'user', @CurrentUser, 'table', 'TICKET_DETALLES', 'column', 'SUBTOTAL'
go

/*==============================================================*/
/* Index: RELTICKETDETALLETICKET_FK                             */
/*==============================================================*/
create index RELTICKETDETALLETICKET_FK on TICKET_DETALLES (
CODPAIS ASC,
CODSUC ASC,
CODTICKET ASC
)
go

/*==============================================================*/
/* Index: RELFUNCIONDETALLETICKETS_FK                           */
/*==============================================================*/
create index RELFUNCIONDETALLETICKETS_FK on TICKET_DETALLES (
CODPEL ASC,
CODFUNC ASC
)
go

/*==============================================================*/
/* Index: RELBUTACADETALLETICKETS_FK                            */
/*==============================================================*/
create index RELBUTACADETALLETICKETS_FK on TICKET_DETALLES (
CODBUTACA ASC,
BUT_CODPAIS ASC,
BUT_CODSUC ASC,
CODSAL ASC
)
go

alter table BUTACAS
   add constraint FK_BUTACAS_RELSALASB_SALAS foreign key (CODPAIS, CODSUC, CODSAL)
      references SALAS (CODPAIS, CODSUC, CODSAL)
go

alter table CATALOGOS
   add constraint FK_CATALOGO_RELMODULO_MODULOS foreign key (CODMOD)
      references MODULOS (CODMOD)
go

alter table CATSDETA
   add constraint FK_CATSDETA_RELCATALO_CATALOGO foreign key (CODMOD, CODCAT)
      references CATALOGOS (CODMOD, CODCAT)
go

alter table FUNCIONES
   add constraint FK_FUNCIONE_RELPELICU_PELICULA foreign key (CODPEL)
      references PELICULAS (CODPEL)
go

alter table FUNCIONES
   add constraint FK_FUNCIONE_RELTBLESP_TBLESPPR foreign key (IDPREC, MODFOR, CATFOR, CORFOR, MODCLA, CATCLA, CORCLA)
      references TBLESPPRECIOS (IDPREC, MODFOR, CATFOR, CORFOR, MODCLA, CATCLA, CORCLA)
go

alter table FUNCIONESCATDETASIM
   add constraint FK_FUNCIONE_FUNCIONES_CATSDETA foreign key (CODMOD, CODCAT, CODCOR)
      references CATSDETA (CODMOD, CODCAT, CODCOR)
go

alter table FUNCIONESCATDETASIM
   add constraint FK_FUNCIONE_RELFUNCIO_FUNCIONE foreign key (CODPEL, CODFUNC)
      references FUNCIONES (CODPEL, CODFUNC)
go

alter table FUNCIONSALADETA
   add constraint FK_FUNCIONS_FUNCIONSA_FUNCIONE foreign key (CODPEL, CODFUNC)
      references FUNCIONES (CODPEL, CODFUNC)
go

alter table FUNCIONSALADETA
   add constraint FK_FUNCIONS_RELSALASF_SALAS foreign key (CODPAIS, CODSUC, CODSAL)
      references SALAS (CODPAIS, CODSUC, CODSAL)
go

alter table PELICULAS
   add constraint FK_PELICULA_RELPAISES_PAISES foreign key (CODPAIS)
      references PAISES (CODPAIS)
go

alter table PELICULAS
   add constraint FK_PELICULA_RELPRODUC_PRODUCTO foreign key (CODPROD)
      references PRODUCTORAS (CODPROD)
go

alter table PELICULASCATDETASIM
   add constraint FK_PELICULA_PELICULAS_CATSDETA foreign key (CODMOD, CODCAT, CODCOR)
      references CATSDETA (CODMOD, CODCAT, CODCOR)
go

alter table PELICULASCATDETASIM
   add constraint FK_PELICULA_RELPELICU_PELICULA foreign key (CODPEL)
      references PELICULAS (CODPEL)
go

alter table PRODUCTORAS
   add constraint FK_PRODUCTO_RELPRODUC_PAISES foreign key (CODPAIS)
      references PAISES (CODPAIS)
go

alter table RESERVACIONES
   add constraint FK_RESERVAC_RELRESERV_TICKETS foreign key (CODPAIS, CODSUC, CODTICKET)
      references TICKETS (CODPAIS, CODSUC, CODTICKET)
go

alter table SALAS
   add constraint FK_SALAS_RELSUCURS_SUCURSAL foreign key (CODPAIS, CODSUC)
      references SUCURSALES (CODPAIS, CODSUC)
go

alter table SALASCATDETASIM
   add constraint FK_SALASCAT_SALASCATD_SALAS foreign key (CODPAIS, CODSUC, CODSAL)
      references SALAS (CODPAIS, CODSUC, CODSAL)
go

alter table SALASCATDETASIM
   add constraint FK_SALASCAT_SALASCATD_CATSDETA foreign key (CODMOD, CODCAT, CODCOR)
      references CATSDETA (CODMOD, CODCAT, CODCOR)
go

alter table SUCURSALES
   add constraint FK_SUCURSAL_RELPAISES_PAISES foreign key (CODPAIS)
      references PAISES (CODPAIS)
go

alter table TICKETS
   add constraint FK_TICKETS_RELSUCURS_SUCURSAL foreign key (CODPAIS, CODSUC)
      references SUCURSALES (CODPAIS, CODSUC)
go

alter table TICKET_DETALLES
   add constraint FK_TICKET_D_RELBUTACA_BUTACAS foreign key (CODBUTACA, BUT_CODPAIS, BUT_CODSUC, CODSAL)
      references BUTACAS (CODBUTACA, CODPAIS, CODSUC, CODSAL)
go

alter table TICKET_DETALLES
   add constraint FK_TICKET_D_RELFUNCIO_FUNCIONE foreign key (CODPEL, CODFUNC)
      references FUNCIONES (CODPEL, CODFUNC)
go

alter table TICKET_DETALLES
   add constraint FK_TICKET_D_RELTICKET_TICKETS foreign key (CODPAIS, CODSUC, CODTICKET)
      references TICKETS (CODPAIS, CODSUC, CODTICKET)
go

