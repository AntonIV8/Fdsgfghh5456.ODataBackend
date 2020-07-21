




CREATE TABLE service_spec_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 service_spec_id_m0 UUID NOT NULL,

 type UUID NOT NULL,

 dictionary_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_spec (

 primaryKey UUID NOT NULL,

 enum TEXT NOT NULL,

 type TEXT NOT NULL,

 existent BOOLEAN NOT NULL,

 shared BOOLEAN NOT NULL,

 version INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 parent_service_spec_id_m0 UUID NOT NULL,

 resource_common_id UUID NULL,

 parent_id UUID NULL,

 cardinality UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_log (

 primaryKey UUID NOT NULL,

 service_id INT NOT NULL,

 cfs_id INT NULL,

 parent_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 service_spec_id INT NULL,

 state TEXT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_service_spec (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 service_spec_id UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_order (

 primaryKey UUID NOT NULL,

 description TEXT NULL,

 dt_completed TIMESTAMP(3) NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 external_id UUID NULL,

 price DOUBLE PRECISION NOT NULL,

 customer_id_m0 UUID NOT NULL,

 contragent_id UUID NULL,

 modifier_id UUID NULL,

 state UUID NOT NULL,

 creator_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_spec_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 resource_spec_id UUID NOT NULL,

 type UUID NOT NULL,

 dictionary_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer (

 primaryKey UUID NOT NULL,

 name TEXT NULL,

 descr TEXT NULL,

 service_manager_id INT NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 archive BOOLEAN NOT NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 internal BOOLEAN NOT NULL,

 telco BOOLEAN NOT NULL,

 office BOOLEAN NOT NULL,

 barrier BOOLEAN NOT NULL,

 pci_dss BOOLEAN NULL,

 federal_low_152 BOOLEAN NULL,

 account_manager_id INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary_value (

 primaryKey UUID NOT NULL,

 value VARCHAR(255) NULL,

 dictionary_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_usage_spec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit TEXT NULL,

 resource_spec_id UUID NOT NULL,

 type_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE role (

 primaryKey UUID NOT NULL,

 name TEXT NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_item (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 price DOUBLE PRECISION NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 log TEXT NULL,

 service_id_m0 UUID NOT NULL,

 service_order_id UUID NOT NULL,

 parent_id UUID NULL,

 modifier_id UUID NULL,

 clone_service_id_m0 UUID NOT NULL,

 creator_id UUID NULL,

 state_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_service_order (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 service_order_id UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_role (

 primaryKey UUID NOT NULL,

 user_id UUID NOT NULL,

 role_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE contragent (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NULL,

 descr TEXT NULL,

 official_name VARCHAR(255) NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 INN TEXT NULL,

 guid1c UUID NULL,

 archive BOOLEAN NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 customer_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 resource_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 cfs_id_m0 UUID NOT NULL,

 state_m0 UUID NOT NULL,

 contragent_id UUID NULL,

 service_spec_id UUID NOT NULL,

 customer_id UUID NOT NULL,

 parent_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec_acl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 service_spec_id UUID NOT NULL,

 group_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE characteristic_type (

 primaryKey UUID NOT NULL,

 regex VARCHAR(255) NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dba (

 primaryKey UUID NOT NULL,

 dt_upgrade TIMESTAMP(3) NOT NULL,

 description VARCHAR(255) NULL,

 script VARCHAR(255) NOT NULL,

 prev_version UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic_log (

 primaryKey UUID NOT NULL,

 resource_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 resource_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic_log (

 primaryKey UUID NOT NULL,

 service_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 service_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_group (

 primaryKey UUID NOT NULL,

 group_id UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_common (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 type TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec (

 primaryKey UUID NOT NULL,

 version INT NOT NULL,

 enum TEXT NOT NULL,

 category TEXT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 parent_id_m0 UUID NOT NULL,

 catalog_key UUID NULL,

 cardinality UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE usr (

 primaryKey UUID NOT NULL,

 login VARCHAR(255) NOT NULL,

 password TEXT NULL,

 locked BOOLEAN NOT NULL,

 email VARCHAR(255) NOT NULL,

 domain VARCHAR(255) NULL,

 last_name VARCHAR(255) NOT NULL,

 first_name VARCHAR(255) NULL,

 middle_name VARCHAR(255) NULL,

 phone TEXT NULL,

 phone_work TEXT NULL,

 phone_mobile TEXT NULL,

 position VARCHAR(255) NULL,

 department VARCHAR(255) NULL,

 photo TEXT NULL,

 thumbnail TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_locked TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 dt_lastlogin TIMESTAMP(3) NULL,

 full_name TEXT NULL,

 short_name TEXT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE catalog (

 primaryKey UUID NOT NULL,

 code TEXT NOT NULL,

 svc TEXT NOT NULL,

 svc_type TEXT NULL,

 data_version TEXT NULL,

 dt_sync TIMESTAMP(3) NULL,

 descr TEXT NULL,

 vat TEXT NULL,

 is_actual BOOLEAN NOT NULL,

 dt_creation TIMESTAMP(3) NULL,

 parent_key UUID NULL,

 measure TEXT NULL,

 measure_key UUID NULL,

 status TEXT NULL,

 formula_key UUID NULL,

 billing_object_type_guid UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 resource_spec_id UUID NOT NULL,

 cfs_id UUID NOT NULL,

 customer_id UUID NOT NULL,

 parent_id UUID NULL,

 resource_shared_id UUID NULL,

 contragent_id UUID NULL,

 parent_service_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE cardinality_type (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_log (

 primaryKey UUID NOT NULL,

 resource_id INT NOT NULL,

 parent_id INT NULL,

 cfs_id INT NULL,

 parent_service_id INT NULL,

 resource_shared_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 resource_spec_id INT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer_acl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 group_id_m0 UUID NOT NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_usage_spec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit TEXT NULL,

 service_spec_id UUID NOT NULL,

 type UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_resource_spec (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE product_catalog (

 primaryKey UUID NOT NULL,

 spec_id INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 version INT NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_shared (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 existent BOOLEAN NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 type TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE grp (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHAR(255) NULL,

 imported BOOLEAN NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 service_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));



CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK76c08906446346bfbcc8f3a0091f22ce FOREIGN KEY (service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexbd0e0a6bc52cfb2902afebdfa0dcbd0f72e55b4f on service_spec_characteristic (service_spec_id_m0); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK6c1b89f4bbd84a6c8529ad59fffe0cc0 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexe5aecadc625dd4efc2f99af5721ef26f401cd0e3 on service_spec_characteristic (type); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FKa17930c0598f462aae702adbf3e9e024 FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Indexb5b57be8a5cf09f4745407d9ce980a391550c020 on service_spec_characteristic (dictionary_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK51fe1cbd1a0e4419b7e590f0498a9085 FOREIGN KEY (parent_service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexdfe3de3f8f6cd46ed48d7d9dd6c4e519273ca3a3 on resource_spec (parent_service_spec_id_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK1709e2a2f81b444ba18c66f8f29c1235 FOREIGN KEY (resource_common_id) REFERENCES resource_common; 
CREATE INDEX Indexc64ab9ecbb0144bd87f4a1218889927d483ab2dd on resource_spec (resource_common_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FKcfbc3162e8854e8da8f4718b7968b8e9 FOREIGN KEY (parent_id) REFERENCES resource_spec; 
CREATE INDEX Index111e380e8fb7eadfdfa87d469b6251099fb70299 on resource_spec (parent_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FKcf5d49d514fd493885f3e4145d539419 FOREIGN KEY (cardinality) REFERENCES cardinality_type; 
CREATE INDEX Indexb846adf318dfb6a1fd4885f89dbce5c6039bd500 on resource_spec (cardinality); 

 ALTER TABLE user_service_spec ADD CONSTRAINT FK6e5fb168a40d4d54abb2756e262a2f33 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index93831155d2bedac1a8df2d16a1694c5571cfcc90 on user_service_spec (service_spec_id); 

 ALTER TABLE user_service_spec ADD CONSTRAINT FK015c11b5ae0b42c99d4def80ad8b3ff0 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index71df8ee96e12de1d453119693217a230a83437f6 on user_service_spec (user_id); 

 ALTER TABLE service_order ADD CONSTRAINT FK27c3e4c2e68a46189ad671a65c60d2e6 FOREIGN KEY (customer_id_m0) REFERENCES customer; 
CREATE INDEX Index1f482d93e8f0a434b4410cae2d8a035225389d9b on service_order (customer_id_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK6a350db0a7f84ea2999d41c7dc5430c7 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index9dffa9017dd697b1cc70ebf509289586406f35ea on service_order (contragent_id); 

 ALTER TABLE service_order ADD CONSTRAINT FKefd2320070864065b892b5df0f7dce88 FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Index7b095fe8098e6c396ead41ddcf49daae97420c06 on service_order (modifier_id); 

 ALTER TABLE service_order ADD CONSTRAINT FK383416f0f24a4e8788477fade8148059 FOREIGN KEY (state) REFERENCES order_state; 
CREATE INDEX Indexfc9c3e03783402ea95174e160234c9fb2cee5599 on service_order (state); 

 ALTER TABLE service_order ADD CONSTRAINT FKac2a74c5652640f294554a0630c2eb0f FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Index0993ff331ce49a9fcfbbbe6a28ca46b675b4a516 on service_order (creator_id); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FKa45b3ed710e844e2953b56a7ad6db51b FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index9bb9374e066aa27efaec5d41418b4e4d7d9d9bf5 on resource_spec_characteristic (resource_spec_id); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK76b8ca4600df43269d0478a2780b82db FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Index99cd49bc2c60e29e0cfac8787303472c269f18e4 on resource_spec_characteristic (type); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK2fcf81fb2d234b24952cc85183602b06 FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Indexf91f345bc7342e04c4ca4353bad85dce739f27e9 on resource_spec_characteristic (dictionary_id); 

 ALTER TABLE dictionary_value ADD CONSTRAINT FK158f1a0254ce4bc494dd150be203800c FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Index708041deac38faac3e07a74677612a6c5f40c467 on dictionary_value (dictionary_id); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FKe480e2400aa0482da5e2592725927f09 FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index80b3b281aee1760f7ee048916b46cf28f0d1d8e2 on resource_usage_spec (resource_spec_id); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FK89edc92d3c8a41929efb8bc13aabeecf FOREIGN KEY (type_m0) REFERENCES characteristic_type; 
CREATE INDEX Indexce3f4c65bf64ec0c3c80e660173d6fb5af410e42 on resource_usage_spec (type_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK46788edbfa9343b891eed4664440c337 FOREIGN KEY (service_id_m0) REFERENCES service; 
CREATE INDEX Index9ccea8d1c1207a98497624fe8d180eb03fd47c85 on order_item (service_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FKdea05c3520ad4b7789c29be2b0f3aac9 FOREIGN KEY (service_order_id) REFERENCES service_order; 
CREATE INDEX Indexec6177ef296615bae6a93c849f11f9a958b12716 on order_item (service_order_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK4b4a6e30a6e74e95943a8886f3a0c32d FOREIGN KEY (parent_id) REFERENCES order_item; 
CREATE INDEX Index6e26d531accc8ee0c399eafe3054ec9dd56ef7f6 on order_item (parent_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK9312f4196df84138bfba28802448d46f FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Index56465c360a56c50d104948f12363d10e36459845 on order_item (modifier_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK0c89ca4eb6624e6fb284b2168a695401 FOREIGN KEY (clone_service_id_m0) REFERENCES service; 
CREATE INDEX Index0a705cd48879fb571d86cd39560cd1e49a5ceacc on order_item (clone_service_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK1846f4669a6041bca41ae09452818efc FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Index629d50476c0e5d8241371571f91bfecda2cdd2c9 on order_item (creator_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK2c2604e5946746e59061f66f8c43f5c2 FOREIGN KEY (state_m0) REFERENCES order_state; 
CREATE INDEX Index8d7d541c02fd3842cab88234640777370ed3e942 on order_item (state_m0); 

 ALTER TABLE user_service_order ADD CONSTRAINT FKe4e73d43223542bc9f4b1d9b4b0ade8b FOREIGN KEY (service_order_id) REFERENCES service_order; 
CREATE INDEX Index6e7e0b8b7307312db51ddec32b886d94ab8c644a on user_service_order (service_order_id); 

 ALTER TABLE user_service_order ADD CONSTRAINT FK93e721a157bb4e268985153ab8a484c9 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index70300ae7783ea7aea3f7d8dc569a217f1a27763f on user_service_order (user_id); 

 ALTER TABLE user_role ADD CONSTRAINT FK775b80bffa2a4ca1adb424f16166a795 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index6bc9625275e959cb02c513a9272a5966dc61806c on user_role (user_id); 

 ALTER TABLE user_role ADD CONSTRAINT FKb856fd03b6bc43138579f9bbe1e370f7 FOREIGN KEY (role_id) REFERENCES role; 
CREATE INDEX Index2a9c9418e6b8be746e65024be120e147c1dec605 on user_role (role_id); 

 ALTER TABLE contragent ADD CONSTRAINT FKaba3dccb2dc848269bead48665a92feb FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index6bbeb4d626ee16cada264df4c6fbc5667a32f5c3 on contragent (customer_id); 

 ALTER TABLE resource_characteristic ADD CONSTRAINT FK91e39b328504426eb90082bb5de300c9 FOREIGN KEY (resource_id) REFERENCES resource; 
CREATE INDEX Indexccafd08e6e0a968a8d2f21cdabef3e11f9d0f440 on resource_characteristic (resource_id); 

 ALTER TABLE service ADD CONSTRAINT FK26b09639a64c41d5a0d159428d498bc8 FOREIGN KEY (cfs_id_m0) REFERENCES service; 
CREATE INDEX Indexf3616b96a18ccaaa36a8ca2ff725a5898447788e on service (cfs_id_m0); 

 ALTER TABLE service ADD CONSTRAINT FK45db0b6b662c451da1d854189cf2338e FOREIGN KEY (state_m0) REFERENCES service_state; 
CREATE INDEX Index4c80a1eb3b94ff6b898fcc2dd113428a141171cd on service (state_m0); 

 ALTER TABLE service ADD CONSTRAINT FKff37ec9b5a0e464aaa1af22baa0dcde3 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index93973badbc81c53e84e78a3e51f903275c68dd3c on service (contragent_id); 

 ALTER TABLE service ADD CONSTRAINT FK06c36368597c424e9f3a8bbe277bb687 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index45ae593ac4cf11e5bd51ba8948d6f8b98162d70e on service (service_spec_id); 

 ALTER TABLE service ADD CONSTRAINT FK41d2cd2384054197a329b14a3ab22e73 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index9a06f29c5d70767d0051ca3c539fda04d0b8061e on service (customer_id); 

 ALTER TABLE service ADD CONSTRAINT FKfedf379193004e179ee907d387c21140 FOREIGN KEY (parent_id) REFERENCES service; 
CREATE INDEX Index7e210cc50475ddd7203177913939fc227b3878d3 on service (parent_id); 

 ALTER TABLE service_spec_acl ADD CONSTRAINT FKbb991038dc224b51bfe16923f00a02d2 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Indexe182a8117f4be3d1c7b3fdd0911f197ec91f680d on service_spec_acl (service_spec_id); 

 ALTER TABLE service_spec_acl ADD CONSTRAINT FK911fca88371344f58c53ef13f9ffc690 FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Indexc2450435d7ba9d0403022967febad528bf6a3783 on service_spec_acl (group_id); 

 ALTER TABLE dba ADD CONSTRAINT FK5f617c4c50924b719c625d5d0aa0661a FOREIGN KEY (prev_version) REFERENCES dba; 
CREATE INDEX Indexeef6992f2af131451b1e7b43ac4e4976eabd6c17 on dba (prev_version); 

 ALTER TABLE user_group ADD CONSTRAINT FK59686a08ea434b67b9916b776d2ba6ba FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Indexcd6580cef639b7fbc9c10b5d253462d6454b82ad on user_group (group_id); 

 ALTER TABLE user_group ADD CONSTRAINT FK2ac3257e7f3349de8a735fe3c77b0abd FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index3639d39a97f2dfd5910c71162a3f0e071945035d on user_group (user_id); 

 ALTER TABLE service_spec ADD CONSTRAINT FKfa0c12e63773488db5883f5b4ec6c87e FOREIGN KEY (parent_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexd9762e78f8164685915dacc1bad526af0265df83 on service_spec (parent_id_m0); 

 ALTER TABLE service_spec ADD CONSTRAINT FK490ea512b24a4915b17a0095be7c350a FOREIGN KEY (catalog_key) REFERENCES catalog; 
CREATE INDEX Index0787960c394aa8f714c1790d1d279b22bb54dc15 on service_spec (catalog_key); 

 ALTER TABLE service_spec ADD CONSTRAINT FK67a8207f918744d2b119d4737a1d63b7 FOREIGN KEY (cardinality) REFERENCES cardinality_type; 
CREATE INDEX Index1cf3df6af1d430be8b55e233c0ee4c0de7ea3efe on service_spec (cardinality); 

 ALTER TABLE resource ADD CONSTRAINT FKc9e74149415947b48cf2bf7b3e43418f FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index95907b0d62b8ee280cc466864699b6600f19f2cb on resource (resource_spec_id); 

 ALTER TABLE resource ADD CONSTRAINT FKfe77a58cf55a45b7917e40dadceb95c8 FOREIGN KEY (cfs_id) REFERENCES service; 
CREATE INDEX Index8a5a2131e7cd384587ead99931b3c9b718a72a86 on resource (cfs_id); 

 ALTER TABLE resource ADD CONSTRAINT FKd6badab3cf704e099bacc47c3f9c8590 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index0244133346102636ec228151987606344c30b2ff on resource (customer_id); 

 ALTER TABLE resource ADD CONSTRAINT FKc88dbe94dc4241128bb5ac4c7e712aa0 FOREIGN KEY (parent_id) REFERENCES resource; 
CREATE INDEX Index51c1f00ce24bb0a3af2ed85facf7dc46cd790910 on resource (parent_id); 

 ALTER TABLE resource ADD CONSTRAINT FKc3fd073eb89049e69e7729cc8a01a340 FOREIGN KEY (resource_shared_id) REFERENCES resource_shared; 
CREATE INDEX Index69f9b4538aa9c0941f8da44e85fce3cc8df76657 on resource (resource_shared_id); 

 ALTER TABLE resource ADD CONSTRAINT FK47b49ac4b1c1430b90dc5d931e6119d7 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Indexecd426ee81aee8a0ef1badbc4a8e41d6e08e6e63 on resource (contragent_id); 

 ALTER TABLE resource ADD CONSTRAINT FK4c8cf014da6a416386d80ecf8be73129 FOREIGN KEY (parent_service_id) REFERENCES service; 
CREATE INDEX Indexae380a8db103c708de00ddaef4744b9186f3eb6f on resource (parent_service_id); 

 ALTER TABLE customer_acl ADD CONSTRAINT FK893ac85ace4d4a158a1b689fd57bd58e FOREIGN KEY (group_id_m0) REFERENCES grp; 
CREATE INDEX Index5d4e1d509e0a2e8c6275226705e0964be595171e on customer_acl (group_id_m0); 

 ALTER TABLE customer_acl ADD CONSTRAINT FKa25a3c729ed540beb134599da15967c4 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Indexaf327e2528c2a6af4b0c4bc08dbfa0ad160c6096 on customer_acl (customer_id); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FK03a35f6d98a74d1e8b1c6846ef2cd4d8 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index94a41849a4f7f38bb4cf8fa10fed3bb8a0377f86 on service_usage_spec (service_spec_id); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FKadcba6d7158d4943907305a4f7082de4 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexbf60025b832773b4c44ee86404642aaaf9f7d852 on service_usage_spec (type); 

 ALTER TABLE user_resource_spec ADD CONSTRAINT FK35558cea8f4d4ae19bb9ca47c49e218c FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index5482820c7d01cc066da4704dd64f6dcfda3a9049 on user_resource_spec (user_id); 

 ALTER TABLE user_resource_spec ADD CONSTRAINT FKfcf57239d3e345e3857ad1d647fbf84a FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index882cc0a9333fe7cf2169c3b90c6f1d5e5e5502ac on user_resource_spec (resource_spec_id); 

 ALTER TABLE resource_shared ADD CONSTRAINT FK3f920301023d41c9967c4f37ecc82318 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Indexc63538dbeba556af23be9627a81abd9902cebabe on resource_shared (customer_id); 

 ALTER TABLE service_characteristic ADD CONSTRAINT FK8a8f77808b7648c19028f4c798ac04f1 FOREIGN KEY (service_id) REFERENCES service; 
CREATE INDEX Index9054b19feb9e67a5351481f5dad2bf38a7daebca on service_characteristic (service_id); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKd02f68511d3b42358be7b0593b6a19f4 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKe4db98033ce9463a8fe1291f1f4ef5f6 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FKb725e66ccfca4add83d49ee1a1136596 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

