



CREATE TABLE "service_spec_characteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"can_be_overridden" NUMBER(1) NOT NULL,

	"label" NVARCHAR2(255) NULL,

	"list" NUMBER(10) NULL,

	"service_spec_id_m0" RAW(16) NOT NULL,

	"type" RAW(16) NOT NULL,

	"dictionary_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"enum" NVARCHAR2(255) NOT NULL,

	"type" NVARCHAR2(255) NOT NULL,

	"existent" NUMBER(1) NOT NULL,

	"shared" NUMBER(1) NOT NULL,

	"version" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"parent_service_spec_id_m0" RAW(16) NOT NULL,

	"resource_common_id" RAW(16) NULL,

	"parent_id" RAW(16) NULL,

	"cardinality" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"service_id" NUMBER(10) NOT NULL,

	"cfs_id" NUMBER(10) NULL,

	"parent_id" NUMBER(10) NULL,

	"contragent_id" NUMBER(10) NULL,

	"customer_id" NUMBER(10) NULL,

	"service_spec_id" NUMBER(10) NULL,

	"state" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NULL,

	"dt_started" DATE NULL,

	"dt_ended" DATE NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_service_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"dt_action" DATE NOT NULL,

	"service_spec_id" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_order"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_completed" DATE NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"dt_started" DATE NULL,

	"external_id" RAW(16) NULL,

	"price" FLOAT(126) NOT NULL,

	"customer_id_m0" RAW(16) NOT NULL,

	"contragent_id" RAW(16) NULL,

	"modifier_id" RAW(16) NULL,

	"state" RAW(16) NOT NULL,

	"creator_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_spec_characteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"can_be_overridden" NUMBER(1) NOT NULL,

	"label" NVARCHAR2(255) NULL,

	"list" NUMBER(10) NULL,

	"resource_spec_id" RAW(16) NOT NULL,

	"type" RAW(16) NOT NULL,

	"dictionary_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "customer"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"descr" NVARCHAR2(255) NULL,

	"service_manager_id" NUMBER(10) NULL,

	"creator_id" NUMBER(10) NULL,

	"modifier_id" NUMBER(10) NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"archive" NUMBER(1) NOT NULL,

	"dt_archive" DATE NULL,

	"archiver_id" NUMBER(10) NULL,

	"archive_reason_id" NUMBER(10) NULL,

	"internal" NUMBER(1) NOT NULL,

	"telco" NUMBER(1) NOT NULL,

	"office" NUMBER(1) NOT NULL,

	"barrier" NUMBER(1) NOT NULL,

	"pci_dss" NUMBER(1) NULL,

	"federal_low_152" NUMBER(1) NULL,

	"account_manager_id" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "dictionary_value"
(

	"primaryKey" RAW(16) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"dictionary_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_usage_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"map" NUMBER(1) NOT NULL,

	"unit" NVARCHAR2(255) NULL,

	"resource_spec_id" RAW(16) NOT NULL,

	"type_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "role"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "order_item"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"price" FLOAT(126) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"log" NVARCHAR2(255) NULL,

	"service_id_m0" RAW(16) NOT NULL,

	"service_order_id" RAW(16) NOT NULL,

	"parent_id" RAW(16) NULL,

	"modifier_id" RAW(16) NULL,

	"clone_service_id_m0" RAW(16) NOT NULL,

	"creator_id" RAW(16) NULL,

	"state_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_service_order"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"dt_action" DATE NOT NULL,

	"service_order_id" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_role"
(

	"primaryKey" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	"role_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "contragent"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"descr" NVARCHAR2(255) NULL,

	"official_name" NVARCHAR2(255) NULL,

	"creator_id" NUMBER(10) NULL,

	"modifier_id" NUMBER(10) NULL,

	"dt_created" DATE NULL,

	"dt_modified" DATE NULL,

	"INN" NVARCHAR2(255) NULL,

	"guid1c" RAW(16) NULL,

	"archive" NUMBER(1) NULL,

	"dt_archive" DATE NULL,

	"archiver_id" NUMBER(10) NULL,

	"archive_reason_id" NUMBER(10) NULL,

	"customer_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_characteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"resource_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NOT NULL,

	"dt_started" DATE NULL,

	"dt_ended" DATE NULL,

	"cfs_id_m0" RAW(16) NOT NULL,

	"state_m0" RAW(16) NOT NULL,

	"contragent_id" RAW(16) NULL,

	"service_spec_id" RAW(16) NOT NULL,

	"customer_id" RAW(16) NOT NULL,

	"parent_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_state"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "order_state"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_spec_acl"
(

	"primaryKey" RAW(16) NOT NULL,

	"a_create" NUMBER(1) NOT NULL,

	"a_read" NUMBER(1) NOT NULL,

	"a_update" NUMBER(1) NOT NULL,

	"a_delete" NUMBER(1) NOT NULL,

	"service_spec_id" RAW(16) NOT NULL,

	"group_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "characteristic_type"
(

	"primaryKey" RAW(16) NOT NULL,

	"regex" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "dba"
(

	"primaryKey" RAW(16) NOT NULL,

	"dt_upgrade" DATE NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"script" NVARCHAR2(255) NOT NULL,

	"prev_version" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_characteristic_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"resource_characteristic_id" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"resource_id" NUMBER(10) NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_characteristic_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"service_characteristic_id" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NULL,

	"value" NVARCHAR2(255) NULL,

	"service_id" NUMBER(10) NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_group"
(

	"primaryKey" RAW(16) NOT NULL,

	"group_id" RAW(16) NOT NULL,

	"user_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_common"
(

	"primaryKey" RAW(16) NOT NULL,

	"external_id" NVARCHAR2(255) NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"type" NVARCHAR2(255) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"version" NUMBER(10) NOT NULL,

	"enum" NVARCHAR2(255) NOT NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"parent_id_m0" RAW(16) NOT NULL,

	"catalog_key" RAW(16) NULL,

	"cardinality" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "usr"
(

	"primaryKey" RAW(16) NOT NULL,

	"login" NVARCHAR2(255) NOT NULL,

	"password" NVARCHAR2(255) NULL,

	"locked" NUMBER(1) NOT NULL,

	"email" NVARCHAR2(255) NOT NULL,

	"domain" NVARCHAR2(255) NULL,

	"last_name" NVARCHAR2(255) NOT NULL,

	"first_name" NVARCHAR2(255) NULL,

	"middle_name" NVARCHAR2(255) NULL,

	"phone" NVARCHAR2(255) NULL,

	"phone_work" NVARCHAR2(255) NULL,

	"phone_mobile" NVARCHAR2(255) NULL,

	"position" NVARCHAR2(255) NULL,

	"department" NVARCHAR2(255) NULL,

	"photo" NVARCHAR2(255) NULL,

	"thumbnail" NVARCHAR2(255) NULL,

	"dt_created" DATE NOT NULL,

	"dt_locked" DATE NULL,

	"dt_modified" DATE NULL,

	"dt_lastlogin" DATE NULL,

	"full_name" NVARCHAR2(255) NULL,

	"short_name" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "catalog"
(

	"primaryKey" RAW(16) NOT NULL,

	"code" NVARCHAR2(255) NOT NULL,

	"svc" NVARCHAR2(255) NOT NULL,

	"svc_type" NVARCHAR2(255) NULL,

	"data_version" NVARCHAR2(255) NULL,

	"dt_sync" DATE NULL,

	"descr" NVARCHAR2(255) NULL,

	"vat" NVARCHAR2(255) NULL,

	"is_actual" NUMBER(1) NOT NULL,

	"dt_creation" DATE NULL,

	"parent_key" RAW(16) NULL,

	"measure" NVARCHAR2(255) NULL,

	"measure_key" RAW(16) NULL,

	"status" NVARCHAR2(255) NULL,

	"formula_key" RAW(16) NULL,

	"billing_object_type_guid" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"external_id" NVARCHAR2(255) NULL,

	"resource_spec_id" RAW(16) NOT NULL,

	"cfs_id" RAW(16) NOT NULL,

	"customer_id" RAW(16) NOT NULL,

	"parent_id" RAW(16) NULL,

	"resource_shared_id" RAW(16) NULL,

	"contragent_id" RAW(16) NULL,

	"parent_service_id" RAW(16) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "cardinality_type"
(

	"primaryKey" RAW(16) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_log"
(

	"primaryKey" RAW(16) NOT NULL,

	"resource_id" NUMBER(10) NOT NULL,

	"parent_id" NUMBER(10) NULL,

	"cfs_id" NUMBER(10) NULL,

	"parent_service_id" NUMBER(10) NULL,

	"resource_shared_id" NUMBER(10) NULL,

	"contragent_id" NUMBER(10) NULL,

	"customer_id" NUMBER(10) NULL,

	"resource_spec_id" NUMBER(10) NULL,

	"name" NVARCHAR2(255) NULL,

	"description" NVARCHAR2(255) NULL,

	"external_id" NVARCHAR2(255) NULL,

	"start_time" DATE NOT NULL,

	"end_time" DATE NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "customer_acl"
(

	"primaryKey" RAW(16) NOT NULL,

	"a_create" NUMBER(1) NOT NULL,

	"a_read" NUMBER(1) NOT NULL,

	"a_update" NUMBER(1) NOT NULL,

	"a_delete" NUMBER(1) NOT NULL,

	"group_id_m0" RAW(16) NOT NULL,

	"customer_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_usage_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"map" NUMBER(1) NOT NULL,

	"unit" NVARCHAR2(255) NULL,

	"service_spec_id" RAW(16) NOT NULL,

	"type" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "user_resource_spec"
(

	"primaryKey" RAW(16) NOT NULL,

	"action" NVARCHAR2(255) NOT NULL,

	"dt_action" DATE NOT NULL,

	"user_id" RAW(16) NOT NULL,

	"resource_spec_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "product_catalog"
(

	"primaryKey" RAW(16) NOT NULL,

	"spec_id" NUMBER(10) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"version" NUMBER(10) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "resource_shared"
(

	"primaryKey" RAW(16) NOT NULL,

	"external_id" NVARCHAR2(255) NULL,

	"existent" NUMBER(1) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"category" NVARCHAR2(255) NOT NULL,

	"type" NVARCHAR2(255) NOT NULL,

	"dt_created" DATE NOT NULL,

	"dt_modified" DATE NOT NULL,

	"customer_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "grp"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"description" NVARCHAR2(255) NULL,

	"imported" NUMBER(1) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "service_characteristic"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	"value" NVARCHAR2(255) NULL,

	"service_id" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "dictionary"
(

	"primaryKey" RAW(16) NOT NULL,

	"name" NVARCHAR2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMNETLOCKDATA"
(

	"LockKey" NVARCHAR2(300) NOT NULL,

	"UserName" NVARCHAR2(300) NOT NULL,

	"LockDate" DATE NULL,

	 PRIMARY KEY ("LockKey")
) ;


CREATE TABLE "STORMSETTINGS"
(

	"primaryKey" RAW(16) NOT NULL,

	"Module" nvarchar2(1000) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"User" nvarchar2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAdvLimit"
(

	"primaryKey" RAW(16) NOT NULL,

	"User" nvarchar2(255) NULL,

	"Published" NUMBER(1) NULL,

	"Module" nvarchar2(255) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"HotKeyData" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERSETTING"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMWEBSEARCH"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"Order" NUMBER(10) NOT NULL,

	"PresentView" nvarchar2(255) NOT NULL,

	"DetailedView" nvarchar2(255) NOT NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERDETAIL"
(

	"primaryKey" RAW(16) NOT NULL,

	"Caption" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	"ConnectMasterProp" nvarchar2(255) NOT NULL,

	"OwnerConnectProp" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERLOOKUP"
(

	"primaryKey" RAW(16) NOT NULL,

	"DataObjectType" nvarchar2(255) NOT NULL,

	"Container" nvarchar2(255) NULL,

	"ContainerTag" nvarchar2(255) NULL,

	"FieldsToView" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "UserSetting"
(

	"primaryKey" RAW(16) NOT NULL,

	"AppName" nvarchar2(256) NULL,

	"UserName" nvarchar2(512) NULL,

	"UserGuid" RAW(16) NULL,

	"ModuleName" nvarchar2(1024) NULL,

	"ModuleGuid" RAW(16) NULL,

	"SettName" nvarchar2(256) NULL,

	"SettGuid" RAW(16) NULL,

	"SettLastAccessTime" DATE NULL,

	"StrVal" nvarchar2(256) NULL,

	"TxtVal" CLOB NULL,

	"IntVal" NUMBER(10) NULL,

	"BoolVal" NUMBER(1) NULL,

	"GuidVal" RAW(16) NULL,

	"DecimalVal" NUMBER(20,10) NULL,

	"DateTimeVal" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ApplicationLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"Category" nvarchar2(64) NULL,

	"EventId" NUMBER(10) NULL,

	"Priority" NUMBER(10) NULL,

	"Severity" nvarchar2(32) NULL,

	"Title" nvarchar2(256) NULL,

	"Timestamp" DATE NULL,

	"MachineName" nvarchar2(32) NULL,

	"AppDomainName" nvarchar2(512) NULL,

	"ProcessId" nvarchar2(256) NULL,

	"ProcessName" nvarchar2(512) NULL,

	"ThreadName" nvarchar2(512) NULL,

	"Win32ThreadId" nvarchar2(128) NULL,

	"Message" nvarchar2(2000) NULL,

	"FormattedMessage" nvarchar2(2000) NULL,

	 PRIMARY KEY ("primaryKey")
) ;



ALTER TABLE "service_spec_characteristic"
	ADD CONSTRAINT "service_spec_characterist_8607" FOREIGN KEY ("service_spec_id_m0") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "service_spec_characterist_2115" on "service_spec_characteristic" ("service_spec_id_m0");

ALTER TABLE "service_spec_characteristic"
	ADD CONSTRAINT "service_spec_characterist_3431" FOREIGN KEY ("type") REFERENCES "characteristic_type" ("primaryKey");

CREATE INDEX "service_spec_characterist_6197" on "service_spec_characteristic" ("type");

ALTER TABLE "service_spec_characteristic"
	ADD CONSTRAINT "service_spec_characteristi_327" FOREIGN KEY ("dictionary_id") REFERENCES "dictionary" ("primaryKey");

CREATE INDEX "service_spec_characterist_1396" on "service_spec_characteristic" ("dictionary_id");

ALTER TABLE "resource_spec"
	ADD CONSTRAINT "resource_spec_Fservice_spec_0" FOREIGN KEY ("parent_service_spec_id_m0") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "resource_spec_Iparent_ser_8870" on "resource_spec" ("parent_service_spec_id_m0");

ALTER TABLE "resource_spec"
	ADD CONSTRAINT "resource_spec_Fresource_c_9601" FOREIGN KEY ("resource_common_id") REFERENCES "resource_common" ("primaryKey");

CREATE INDEX "resource_spec_Iresource_c_5797" on "resource_spec" ("resource_common_id");

ALTER TABLE "resource_spec"
	ADD CONSTRAINT "resource_spec_Fresource_spec_0" FOREIGN KEY ("parent_id") REFERENCES "resource_spec" ("primaryKey");

CREATE INDEX "resource_spec_Iparent_id" on "resource_spec" ("parent_id");

ALTER TABLE "resource_spec"
	ADD CONSTRAINT "resource_spec_Fcardinalit_2605" FOREIGN KEY ("cardinality") REFERENCES "cardinality_type" ("primaryKey");

CREATE INDEX "resource_spec_Icardinality" on "resource_spec" ("cardinality");

ALTER TABLE "user_service_spec"
	ADD CONSTRAINT "user_service_spec_Fservic_1044" FOREIGN KEY ("service_spec_id") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "user_service_spec_Iservic_2357" on "user_service_spec" ("service_spec_id");

ALTER TABLE "user_service_spec"
	ADD CONSTRAINT "user_service_spec_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_service_spec_Iuser_id" on "user_service_spec" ("user_id");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Fcustomer_0" FOREIGN KEY ("customer_id_m0") REFERENCES "customer" ("primaryKey");

CREATE INDEX "service_order_Icustomer_id_m0" on "service_order" ("customer_id_m0");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Fcontragent_0" FOREIGN KEY ("contragent_id") REFERENCES "contragent" ("primaryKey");

CREATE INDEX "service_order_Icontragent_id" on "service_order" ("contragent_id");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Fusr_0" FOREIGN KEY ("modifier_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "service_order_Imodifier_id" on "service_order" ("modifier_id");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Forder_state_0" FOREIGN KEY ("state") REFERENCES "order_state" ("primaryKey");

CREATE INDEX "service_order_Istate" on "service_order" ("state");

ALTER TABLE "service_order"
	ADD CONSTRAINT "service_order_Fusr_1" FOREIGN KEY ("creator_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "service_order_Icreator_id" on "service_order" ("creator_id");

ALTER TABLE "resource_spec_characteristic"
	ADD CONSTRAINT "resource_spec_characteris_6967" FOREIGN KEY ("resource_spec_id") REFERENCES "resource_spec" ("primaryKey");

CREATE INDEX "resource_spec_characteris_3770" on "resource_spec_characteristic" ("resource_spec_id");

ALTER TABLE "resource_spec_characteristic"
	ADD CONSTRAINT "resource_spec_characteris_3333" FOREIGN KEY ("type") REFERENCES "characteristic_type" ("primaryKey");

CREATE INDEX "resource_spec_characterist_585" on "resource_spec_characteristic" ("type");

ALTER TABLE "resource_spec_characteristic"
	ADD CONSTRAINT "resource_spec_characteris_6528" FOREIGN KEY ("dictionary_id") REFERENCES "dictionary" ("primaryKey");

CREATE INDEX "resource_spec_characteris_1099" on "resource_spec_characteristic" ("dictionary_id");

ALTER TABLE "dictionary_value"
	ADD CONSTRAINT "dictionary_value_Fdictionary_0" FOREIGN KEY ("dictionary_id") REFERENCES "dictionary" ("primaryKey");

CREATE INDEX "dictionary_value_Idiction_5114" on "dictionary_value" ("dictionary_id");

ALTER TABLE "resource_usage_spec"
	ADD CONSTRAINT "resource_usage_spec_Freso_8176" FOREIGN KEY ("resource_spec_id") REFERENCES "resource_spec" ("primaryKey");

CREATE INDEX "resource_usage_spec_Ireso_8810" on "resource_usage_spec" ("resource_spec_id");

ALTER TABLE "resource_usage_spec"
	ADD CONSTRAINT "resource_usage_spec_Fchar_1577" FOREIGN KEY ("type_m0") REFERENCES "characteristic_type" ("primaryKey");

CREATE INDEX "resource_usage_spec_Itype_m0" on "resource_usage_spec" ("type_m0");

ALTER TABLE "order_item"
	ADD CONSTRAINT "order_item_Fservice_0" FOREIGN KEY ("service_id_m0") REFERENCES "service" ("primaryKey");

CREATE INDEX "order_item_Iservice_id_m0" on "order_item" ("service_id_m0");

ALTER TABLE "order_item"
	ADD CONSTRAINT "order_item_Fservice_order_0" FOREIGN KEY ("service_order_id") REFERENCES "service_order" ("primaryKey");

CREATE INDEX "order_item_Iservice_order_id" on "order_item" ("service_order_id");

ALTER TABLE "order_item"
	ADD CONSTRAINT "order_item_Forder_item_0" FOREIGN KEY ("parent_id") REFERENCES "order_item" ("primaryKey");

CREATE INDEX "order_item_Iparent_id" on "order_item" ("parent_id");

ALTER TABLE "order_item"
	ADD CONSTRAINT "order_item_Fusr_0" FOREIGN KEY ("modifier_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "order_item_Imodifier_id" on "order_item" ("modifier_id");

ALTER TABLE "order_item"
	ADD CONSTRAINT "order_item_Fservice_1" FOREIGN KEY ("clone_service_id_m0") REFERENCES "service" ("primaryKey");

CREATE INDEX "order_item_Iclone_service_7527" on "order_item" ("clone_service_id_m0");

ALTER TABLE "order_item"
	ADD CONSTRAINT "order_item_Fusr_1" FOREIGN KEY ("creator_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "order_item_Icreator_id" on "order_item" ("creator_id");

ALTER TABLE "order_item"
	ADD CONSTRAINT "order_item_Forder_state_0" FOREIGN KEY ("state_m0") REFERENCES "order_state" ("primaryKey");

CREATE INDEX "order_item_Istate_m0" on "order_item" ("state_m0");

ALTER TABLE "user_service_order"
	ADD CONSTRAINT "user_service_order_Fservi_4149" FOREIGN KEY ("service_order_id") REFERENCES "service_order" ("primaryKey");

CREATE INDEX "user_service_order_Iservi_2104" on "user_service_order" ("service_order_id");

ALTER TABLE "user_service_order"
	ADD CONSTRAINT "user_service_order_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_service_order_Iuser_id" on "user_service_order" ("user_id");

ALTER TABLE "user_role"
	ADD CONSTRAINT "user_role_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_role_Iuser_id" on "user_role" ("user_id");

ALTER TABLE "user_role"
	ADD CONSTRAINT "user_role_Frole_0" FOREIGN KEY ("role_id") REFERENCES "role" ("primaryKey");

CREATE INDEX "user_role_Irole_id" on "user_role" ("role_id");

ALTER TABLE "contragent"
	ADD CONSTRAINT "contragent_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "contragent_Icustomer_id" on "contragent" ("customer_id");

ALTER TABLE "resource_characteristic"
	ADD CONSTRAINT "resource_characteristic_F_4295" FOREIGN KEY ("resource_id") REFERENCES "resource" ("primaryKey");

CREATE INDEX "resource_characteristic_I_9544" on "resource_characteristic" ("resource_id");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fservice_0" FOREIGN KEY ("cfs_id_m0") REFERENCES "service" ("primaryKey");

CREATE INDEX "service_Icfs_id_m0" on "service" ("cfs_id_m0");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fservice_state_0" FOREIGN KEY ("state_m0") REFERENCES "service_state" ("primaryKey");

CREATE INDEX "service_Istate_m0" on "service" ("state_m0");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fcontragent_0" FOREIGN KEY ("contragent_id") REFERENCES "contragent" ("primaryKey");

CREATE INDEX "service_Icontragent_id" on "service" ("contragent_id");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fservice_spec_0" FOREIGN KEY ("service_spec_id") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "service_Iservice_spec_id" on "service" ("service_spec_id");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "service_Icustomer_id" on "service" ("customer_id");

ALTER TABLE "service"
	ADD CONSTRAINT "service_Fservice_1" FOREIGN KEY ("parent_id") REFERENCES "service" ("primaryKey");

CREATE INDEX "service_Iparent_id" on "service" ("parent_id");

ALTER TABLE "service_spec_acl"
	ADD CONSTRAINT "service_spec_acl_Fservice__354" FOREIGN KEY ("service_spec_id") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "service_spec_acl_Iservice_2361" on "service_spec_acl" ("service_spec_id");

ALTER TABLE "service_spec_acl"
	ADD CONSTRAINT "service_spec_acl_Fgrp_0" FOREIGN KEY ("group_id") REFERENCES "grp" ("primaryKey");

CREATE INDEX "service_spec_acl_Igroup_id" on "service_spec_acl" ("group_id");

ALTER TABLE "dba"
	ADD CONSTRAINT "dba_Fdba_0" FOREIGN KEY ("prev_version") REFERENCES "dba" ("primaryKey");

CREATE INDEX "dba_Iprev_version" on "dba" ("prev_version");

ALTER TABLE "user_group"
	ADD CONSTRAINT "user_group_Fgrp_0" FOREIGN KEY ("group_id") REFERENCES "grp" ("primaryKey");

CREATE INDEX "user_group_Igroup_id" on "user_group" ("group_id");

ALTER TABLE "user_group"
	ADD CONSTRAINT "user_group_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_group_Iuser_id" on "user_group" ("user_id");

ALTER TABLE "service_spec"
	ADD CONSTRAINT "service_spec_Fservice_spec_0" FOREIGN KEY ("parent_id_m0") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "service_spec_Iparent_id_m0" on "service_spec" ("parent_id_m0");

ALTER TABLE "service_spec"
	ADD CONSTRAINT "service_spec_Fcatalog_0" FOREIGN KEY ("catalog_key") REFERENCES "catalog" ("primaryKey");

CREATE INDEX "service_spec_Icatalog_key" on "service_spec" ("catalog_key");

ALTER TABLE "service_spec"
	ADD CONSTRAINT "service_spec_Fcardinality_5214" FOREIGN KEY ("cardinality") REFERENCES "cardinality_type" ("primaryKey");

CREATE INDEX "service_spec_Icardinality" on "service_spec" ("cardinality");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fresource_spec_0" FOREIGN KEY ("resource_spec_id") REFERENCES "resource_spec" ("primaryKey");

CREATE INDEX "resource_Iresource_spec_id" on "resource" ("resource_spec_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fservice_0" FOREIGN KEY ("cfs_id") REFERENCES "service" ("primaryKey");

CREATE INDEX "resource_Icfs_id" on "resource" ("cfs_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "resource_Icustomer_id" on "resource" ("customer_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fresource_0" FOREIGN KEY ("parent_id") REFERENCES "resource" ("primaryKey");

CREATE INDEX "resource_Iparent_id" on "resource" ("parent_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fresource_shared_0" FOREIGN KEY ("resource_shared_id") REFERENCES "resource_shared" ("primaryKey");

CREATE INDEX "resource_Iresource_shared_id" on "resource" ("resource_shared_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fcontragent_0" FOREIGN KEY ("contragent_id") REFERENCES "contragent" ("primaryKey");

CREATE INDEX "resource_Icontragent_id" on "resource" ("contragent_id");

ALTER TABLE "resource"
	ADD CONSTRAINT "resource_Fservice_1" FOREIGN KEY ("parent_service_id") REFERENCES "service" ("primaryKey");

CREATE INDEX "resource_Iparent_service_id" on "resource" ("parent_service_id");

ALTER TABLE "customer_acl"
	ADD CONSTRAINT "customer_acl_Fgrp_0" FOREIGN KEY ("group_id_m0") REFERENCES "grp" ("primaryKey");

CREATE INDEX "customer_acl_Igroup_id_m0" on "customer_acl" ("group_id_m0");

ALTER TABLE "customer_acl"
	ADD CONSTRAINT "customer_acl_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "customer_acl_Icustomer_id" on "customer_acl" ("customer_id");

ALTER TABLE "service_usage_spec"
	ADD CONSTRAINT "service_usage_spec_Fservi_9228" FOREIGN KEY ("service_spec_id") REFERENCES "service_spec" ("primaryKey");

CREATE INDEX "service_usage_spec_Iservi_9532" on "service_usage_spec" ("service_spec_id");

ALTER TABLE "service_usage_spec"
	ADD CONSTRAINT "service_usage_spec_Fchara_5383" FOREIGN KEY ("type") REFERENCES "characteristic_type" ("primaryKey");

CREATE INDEX "service_usage_spec_Itype" on "service_usage_spec" ("type");

ALTER TABLE "user_resource_spec"
	ADD CONSTRAINT "user_resource_spec_Fusr_0" FOREIGN KEY ("user_id") REFERENCES "usr" ("primaryKey");

CREATE INDEX "user_resource_spec_Iuser_id" on "user_resource_spec" ("user_id");

ALTER TABLE "user_resource_spec"
	ADD CONSTRAINT "user_resource_spec_Fresou_2786" FOREIGN KEY ("resource_spec_id") REFERENCES "resource_spec" ("primaryKey");

CREATE INDEX "user_resource_spec_Iresou_2605" on "user_resource_spec" ("resource_spec_id");

ALTER TABLE "resource_shared"
	ADD CONSTRAINT "resource_shared_Fcustomer_0" FOREIGN KEY ("customer_id") REFERENCES "customer" ("primaryKey");

CREATE INDEX "resource_shared_Icustomer_id" on "resource_shared" ("customer_id");

ALTER TABLE "service_characteristic"
	ADD CONSTRAINT "service_characteristic_Fs_8759" FOREIGN KEY ("service_id") REFERENCES "service" ("primaryKey");

CREATE INDEX "service_characteristic_Is_3288" on "service_characteristic" ("service_id");

ALTER TABLE "STORMWEBSEARCH"
	ADD CONSTRAINT "STORMWEBSEARCH_FSTORMFILT_6521" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERDETAIL"
	ADD CONSTRAINT "STORMFILTERDETAIL_FSTORMF_2900" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERLOOKUP"
	ADD CONSTRAINT "STORMFILTERLOOKUP_FSTORMF_1583" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");


