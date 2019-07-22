USE [immatriculations_first_load]
GO

/****** Object:  Table [dbo].[immatriculations_first_load]    Script Date: 01/02/2019 15:32:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[immatriculations_first_load](
	[PERIOD] [char](6) NOT NULL,
	[CATSTC] [int] NOT NULL,
	[CODCAR] [varchar](4) NOT NULL,
	[LIBCAR] [varchar](30) NOT NULL,
	[CATEU] [varchar](3) NULL,
	[COUL] [varchar](25) NOT NULL,
	[INDUTI] [char](1) NOT NULL,
	[PAYPVN] [varchar](4) NULL,
	[CODMRQ] [int] NOT NULL,
	[LIBMRQ] [varchar](25) NOT NULL,
	[TYPUSI] [varchar](80) NULL,
	[TYPCOM] [varchar](60) NULL,
	[PVRNUM] [varchar](25) NOT NULL,
	[PVRVAR] [varchar](100) NOT NULL,
	[PVRVER] [varchar](50) NULL,
	[DATCIRPRM] [int] NULL,
	[DATCIR_GD] [int] NOT NULL,
	[DATCIR] [int] NOT NULL,
	[DATHORCIR] [int] NULL,
	[MVID] [int] NOT NULL,
	[MMA] [int] NULL,
	[MMAENS] [int] NULL,
	[MMAATT] [int] NULL,
	[MMARSF] [int] NULL,
	[MMARAF] [int] NULL,
	[I4X4] [varchar](3) NULL,
	[ABS] [int] NULL,
	[ASR] [int] NULL,
	[PLAAVA] [int] NULL,
	[PLAARR] [int] NULL,
	[PLASAV] [int] NULL,
	[PLASAR] [int] NULL,
	[PLADEB] [int] NULL,
	[PLAASS] [int] NULL,
	[LAR] [int] NULL,
	[LON] [int] NULL,
	[HAU] [int] NULL,
	[ESSIM] [int] NULL,
	[ESTAN] [int] NULL,
	[ESTRI] [int] NULL,
	[EMPMAX] [int] NULL,
	[LARES1] [int] NULL,
	[LARES2] [int] NULL,
	[TYPMOT] [varchar](40) NULL,
	[CODCRB] [int] NULL,
	[LIBCRB] [varchar](40) NULL,
	[NBRCYL] [int] NULL,
	[PKW] [int] NULL,
	[CYD] [int] NULL,
	[INFOUTI] [varchar](3) NULL,
	[INFCO2] [int] NULL,
	[L100KM] [decimal](5, 3) NULL,
	[INFPARTICULE] [decimal](7, 5) NULL,
	[INFNOX] [decimal](9, 5) NULL,
	[EUNORM] [varchar](15) NULL,
	[MODEL_ID] [varchar](32) NULL
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data period (YYYYMM)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PERIOD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Statec category code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'CATSTC'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'European Bodywork Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'CODCAR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bodywork wording' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'LIBCAR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'European Category Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'CATEU'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Color' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'COUL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indication of use' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'INDUTI'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PAYPVN'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Manufacturer code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'CODMRQ'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Manufacturer wording' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'LIBMRQ'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'TYPUSI'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Commercial model name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'TYPCOM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EC type approval number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PVRNUM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Variant' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PVRVAR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Version' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PVRVER'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of first registration' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'DATCIRPRM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of first registration in Luxemburg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'DATCIR_GD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of the registration to which this certificate refers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'DATCIR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Off road declaration date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'DATHORCIR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mass in running order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'MVID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'technically permissible maximum laden mass' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'MMA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technically permissible maximum mass of the combination' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'MMAENS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technically permissible maximum static vertical mass at the coupling point' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'MMAATT'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technically permissible maximum towable mass in case of brakeless trailer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'MMARSF'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technically permissible maximum towable mass in case of centre-axle trailer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'MMARAF'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'4x4 Indicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'I4X4'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ABS Indicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'ABS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ASR Indicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'ASR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of front seats' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PLAAVA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of back seats' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PLAARR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of specific front seats' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PLASAV'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of specific back seats' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PLASAR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of standing places' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PLADEB'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of sitting places' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PLAASS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'LAR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Length' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'LON'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'HAU'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of simple axles' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'ESSIM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of tandem axles' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'ESTAN'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of tridem axles' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'ESTRI'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Wheelbase' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'EMPMAX'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Axle(s) track 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'LARES1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Axle(s) track 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'LARES2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Engine code as marked on the engine' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'TYPMOT'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fuel code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'CODCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fuel description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'LIBCRB'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of cylinders' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'NBRCYL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Engine capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'PKW'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Engine capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'CYD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User information' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'INFOUTI'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CO2 emissions in g/km (Combined)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'INFCO2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fuel consumption in l/100km (Combined)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'L100KM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Exhaust emissions particulates (mass in g/km)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'INFPARTICULE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Exhaust emissions Nox in g/km' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'INFNOX'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Exhaust emission level' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'EUNORM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Model identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'immatriculations_first_load', @level2type=N'COLUMN',@level2name=N'MODEL_ID'
GO
