USE immatriculations;
DROP TABLE immatriculations;
CREATE TABLE immatriculations (
  PERIOD        char(6)         NOT NULL    COMMENT 'Data period (YYYYMM)',
  CATSTC        int(11)         NOT NULL    COMMENT 'Statec category code',
  CODCAR        varchar(4)      NOT NULL    COMMENT 'European Bodywork Code',
  LIBCAR        varchar(30)     NOT NULL    COMMENT 'Bodywork wording',
  CATEU         varchar(3)                  COMMENT 'European Category Code',
  COUL          varchar(25)     NOT NULL    COMMENT 'Color',
  INDUTI        char(1)         NOT NULL    COMMENT 'Indication of use',
  PAYPVN        varchar(4)                  COMMENT 'Country of origin code',
  CODMRQ        int(11)         NOT NULL    COMMENT 'Manufacturer code',
  LIBMRQ        varchar(25)     NOT NULL    COMMENT 'Manufacturer wording',
  TYPUSI        varchar(80)                 COMMENT 'Type',
  TYPCOM        varchar(60)                 COMMENT 'Commercial model name',
  PVRNUM        varchar(25)     NOT NULL    COMMENT 'EC type approval number',
  PVRVAR        varchar(100)    NOT NULL    COMMENT 'Variant',
  PVRVER        varchar(50)                 COMMENT 'Version',
  DATCIRPRM     int(11)                     COMMENT 'Date of first registration',
  DATCIR_GD     int(11)         NOT NULL    COMMENT 'Date of first registration in Luxemburg',
  DATCIR        int(11)         NOT NULL    COMMENT 'Date of the registration to which this certificate refers',
  DATHORCIR     int(11)                     COMMENT 'Off road declaration date',
  MVID          int(11)         NOT NULL    COMMENT 'Mass in running order',
  MMA           int(11)                     COMMENT 'technically permissible maximum laden mass',
  MMAENS        int(11)                     COMMENT 'Technically permissible maximum mass of the combination',
  MMAATT        int(11)                     COMMENT 'Technically permissible maximum static vertical mass at the coupling point',
  MMARSF        int(11)                     COMMENT 'Technically permissible maximum towable mass in case of brakeless trailer',
  MMARAF        int(11)                     COMMENT 'Technically permissible maximum towable mass in case of centre-axle trailer',
  I4X4          varchar(3)                  COMMENT '4x4 Indicator',
  ABS           int(11)                     COMMENT 'ABS Indicator',
  ASR           int(11)                     COMMENT 'ASR Indicator',
  PLAAVA        int(11)                     COMMENT 'Number of front seats',
  PLAARR        int(11)                     COMMENT 'Number of back seats',
  PLASAV        int(11)                     COMMENT 'Number of specific front seats',
  PLASAR        int(11)                     COMMENT 'Number of specific back seats',
  PLADEB        int(11)                     COMMENT 'Number of standing places',
  PLAASS        int(11)                     COMMENT 'Number of sitting places',
  LAR           int(11)                     COMMENT 'Width',
  LON           int(11)                     COMMENT 'Length',
  HAU           int(11)                     COMMENT 'Height',
  ESSIM         int(11)                     COMMENT 'Number of simple axles',
  ESTAN         int(11)                     COMMENT 'Number of tandem axles',
  ESTRI         int(11)                     COMMENT 'Number of tridem axles',
  EMPMAX        int(11)                     COMMENT 'Wheelbase',
  LARES1        int(11)                     COMMENT 'Axle(s) track 1',
  LARES2        int(11)                     COMMENT 'Axle(s) track 2',
  TYPMOT        varchar(40)                 COMMENT 'Engine code as marked on the engine',
  CODCRB        int(11)                     COMMENT 'Fuel code',
  LIBCRB        varchar(40)                 COMMENT 'Fuel description',
  NBRCYL        int(11)                     COMMENT 'Number of cylinders',
  PKW           int(11)                     COMMENT 'Maximum net power',
  CYD           int(11)                     COMMENT 'Engine capacity',
  INFOUTI       varchar(3)                  COMMENT 'User information',
  INFCO2        int(11)                     COMMENT 'CO2 emissions in g/km (Combined)',
  L100KM        decimal(5,3)                COMMENT 'fuel consumption in l/100km (Combined)',
  INFPARTICULE  decimal(7,5)                COMMENT 'Exhaust emissions particulates (mass in g/km)',
  INFNOX        decimal(9,5)                COMMENT 'Exhaust emissions Nox in g/km',
  EUNORM        varchar(15)                 COMMENT 'Exhaust emission level',
  MODEL_ID      varchar(32)                 COMMENT 'Model identifier'
) ENGINE=InnoDB DEFAULT CHARSET=latin1
;

LOAD XML LOCAL INFILE 'parc-automobile-201901.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201901'
;
LOAD XML LOCAL INFILE 'parc-automobile-201812.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201812'
;
LOAD XML LOCAL INFILE 'parc-automobile-201811.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201811'
;
LOAD XML LOCAL INFILE 'parc-automobile-201810.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201810'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201809.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201809'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201808.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201808'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201807.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201807'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201806.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201806'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201805.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201805'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201804.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201804'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201803.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201803'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201802.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201802'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201801.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201801'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201712.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201712'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201711.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201711'
;
LOAD XML LOCAL INFILE 'Parc_Automobile_201710.xml'
    INTO TABLE immatriculations
    ROWS IDENTIFIED BY '<VEHICLE>'
    SET PERIOD='201710'
;

-- Final updates to get clean data
update immatriculations
  set
    model_id = md5(concat(codmrq, coalesce(typcom, concat(libmrq, libcar))))
;

CREATE INDEX idx_bodywork   ON immatriculations(codcar, libcar);
CREATE INDEX idx_brand      ON immatriculations(codmrq, libmrq);
CREATE INDEX idx_model      ON immatriculations(model_id, codmrq, typcom);
CREATE INDEX idx_period     ON immatriculations(period);

# From the shell :
# mysqldump -u root -p immatriculations --compact > dump_immatriculations.csv
