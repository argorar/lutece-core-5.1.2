-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: lutece
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `core_admin_dashboard`
--

DROP TABLE IF EXISTS `core_admin_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_dashboard` (
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_dashboard`
--

LOCK TABLES `core_admin_dashboard` WRITE;
/*!40000 ALTER TABLE `core_admin_dashboard` DISABLE KEYS */;
INSERT INTO `core_admin_dashboard` VALUES ('searchAdminDashboardComponent',1,2),('usersAdminDashboardComponent',1,1);
/*!40000 ALTER TABLE `core_admin_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_mailinglist`
--

DROP TABLE IF EXISTS `core_admin_mailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_mailinglist` (
  `id_mailinglist` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `workgroup` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mailinglist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_mailinglist`
--

LOCK TABLES `core_admin_mailinglist` WRITE;
/*!40000 ALTER TABLE `core_admin_mailinglist` DISABLE KEYS */;
INSERT INTO `core_admin_mailinglist` VALUES (1,'admin','admin','all');
/*!40000 ALTER TABLE `core_admin_mailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_mailinglist_filter`
--

DROP TABLE IF EXISTS `core_admin_mailinglist_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_mailinglist_filter` (
  `id_mailinglist` int(11) NOT NULL DEFAULT '0',
  `workgroup` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mailinglist`,`workgroup`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_mailinglist_filter`
--

LOCK TABLES `core_admin_mailinglist_filter` WRITE;
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` DISABLE KEYS */;
INSERT INTO `core_admin_mailinglist_filter` VALUES (1,'all','super_admin');
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_right`
--

DROP TABLE IF EXISTS `core_admin_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_right` (
  `id_right` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `level_right` smallint(6) DEFAULT NULL,
  `admin_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_updatable` int(11) NOT NULL DEFAULT '0',
  `plugin_name` varchar(50) DEFAULT NULL,
  `id_feature_group` varchar(50) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `documentation_url` varchar(255) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `is_external_feature` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_right`),
  KEY `index_right` (`level_right`,`admin_url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_right`
--

LOCK TABLES `core_admin_right` WRITE;
/*!40000 ALTER TABLE `core_admin_right` DISABLE KEYS */;
INSERT INTO `core_admin_right` VALUES ('CORE_ADMINDASHBOARD_MANAGEMENT','portal.admindashboard.adminFeature.right_management.name',0,'jsp/admin/admindashboard/ManageAdminDashboards.jsp','portal.admindashboard.adminFeature.right_management.description',0,NULL,'SYSTEM','images/admin/skin/features/manage_admindashboards.png',NULL,8,0),('CORE_ADMIN_SITE','portal.site.adminFeature.admin_site.name',2,'jsp/admin/site/AdminSite.jsp','portal.site.adminFeature.admin_site.description',1,NULL,'SITE','images/admin/skin/features/admin_site.png','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-site',1,0),('CORE_CACHE_MANAGEMENT','portal.system.adminFeature.cache_management.name',0,'jsp/admin/system/ManageCaches.jsp','portal.system.adminFeature.cache_management.description',1,NULL,'SYSTEM','images/admin/skin/features/manage_caches.png',NULL,1,0),('CORE_DAEMONS_MANAGEMENT','portal.system.adminFeature.daemons_management.name',0,'jsp/admin/system/ManageDaemons.jsp','portal.system.adminFeature.daemons_management.description',0,NULL,'SYSTEM',NULL,NULL,7,0),('CORE_DASHBOARD_MANAGEMENT','portal.dashboard.adminFeature.dashboard_management.name',0,'jsp/admin/dashboard/ManageDashboards.jsp','portal.dashboard.adminFeature.dashboard_management.description',0,NULL,'SYSTEM','images/admin/skin/features/manage_dashboards.png',NULL,9,0),('CORE_EXTERNAL_FEATURES_MANAGEMENT','portal.system.adminFeature.external_features_management.name',1,'jsp/admin/features/ManageExternalFeatures.jsp','portal.system.adminFeature.external_features_management.description',1,NULL,'SYSTEM',NULL,NULL,11,0),('CORE_FEATURES_MANAGEMENT','portal.admin.adminFeature.features_management.name',0,'jsp/admin/features/DispatchFeatures.jsp','portal.admin.adminFeature.features_management.description',0,NULL,'SYSTEM','images/admin/skin/features/manage_features.png',NULL,6,0),('CORE_GLOBAL_MANAGEMENT','portal.globalmanagement.adminFeature.global_management.name',2,'jsp/admin/globalmanagement/GetGlobalManagement.jsp','portal.globalmanagement.adminFeature.global_management.description',1,NULL,'SYSTEM',NULL,NULL,10,0),('CORE_LEVEL_RIGHT_MANAGEMENT','portal.users.adminFeature.level_right_management.name',2,'jsp/admin/features/ManageLevels.jsp','portal.users.adminFeature.level_right_management.description',0,NULL,'MANAGERS','images/admin/skin/features/manage_rights_levels.png',NULL,5,0),('CORE_LINK_SERVICE_MANAGEMENT','portal.insert.adminFeature.linkService_management.name',2,NULL,'portal.insert.adminFeature.linkService_management.description',0,NULL,NULL,NULL,NULL,1,0),('CORE_LOGS_VISUALISATION','portal.system.adminFeature.logs_visualisation.name',0,'jsp/admin/system/ManageFilesSystem.jsp','portal.system.adminFeature.logs_visualisation.description',1,NULL,'SYSTEM','images/admin/skin/features/view_logs.png',NULL,4,0),('CORE_MAILINGLISTS_MANAGEMENT','portal.mailinglist.adminFeature.mailinglists_management.name',2,'jsp/admin/mailinglist/ManageMailingLists.jsp','portal.mailinglist.adminFeature.mailinglists_management.description',0,NULL,'MANAGERS','images/admin/skin/features/manage_mailinglists.png',NULL,4,0),('CORE_MODES_MANAGEMENT','portal.style.adminFeature.modes_management.name',0,'jsp/admin/style/ManageModes.jsp','portal.style.adminFeature.modes_management.description',1,NULL,'STYLE','images/admin/skin/features/manage_modes.png',NULL,1,0),('CORE_PAGE_TEMPLATE_MANAGEMENT','portal.style.adminFeature.page_template_management.name',0,'jsp/admin/style/ManagePageTemplates.jsp','portal.style.adminFeature.page_template_management.description',0,NULL,'STYLE','images/admin/skin/features/manage_page_templates.png',NULL,2,0),('CORE_PLUGINS_MANAGEMENT','portal.system.adminFeature.plugins_management.name',0,'jsp/admin/system/ManagePlugins.jsp','portal.system.adminFeature.plugins_management.description',1,NULL,'SYSTEM','images/admin/skin/features/manage_plugins.png',NULL,5,0),('CORE_PROPERTIES_MANAGEMENT','portal.site.adminFeature.properties_management.name',2,'jsp/admin/ManageProperties.jsp','portal.site.adminFeature.properties_management.description',0,NULL,'SITE',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-properties',2,0),('CORE_RBAC_MANAGEMENT','portal.rbac.adminFeature.rbac_management.name',0,'jsp/admin/rbac/ManageRoles.jsp','portal.rbac.adminFeature.rbac_management.description',0,'','MANAGERS','images/admin/skin/features/manage_rbac.png',NULL,2,0),('CORE_RIGHT_MANAGEMENT','portal.users.adminFeature.right_management.name',0,'jsp/admin/features/ManageRights.jsp','portal.users.adminFeature.right_management.description',0,NULL,'MANAGERS','images/admin/skin/features/manage_rights_levels.png',NULL,5,0),('CORE_ROLES_MANAGEMENT','portal.role.adminFeature.roles_management.name',2,'jsp/admin/role/ManagePageRole.jsp','portal.role.adminFeature.roles_management.description',0,NULL,'USERS','images/admin/skin/features/manage_roles.png',NULL,1,0),('CORE_SEARCH_INDEXATION','portal.search.adminFeature.indexer.name',0,'jsp/admin/search/ManageSearchIndexation.jsp','portal.search.adminFeature.indexer.description',0,NULL,'SYSTEM',NULL,NULL,2,0),('CORE_SEARCH_MANAGEMENT','portal.search.adminFeature.search_management.name',0,'jsp/admin/search/ManageSearch.jsp','portal.search.adminFeature.search_management.description',0,NULL,'SYSTEM',NULL,NULL,3,0),('CORE_STYLESHEET_MANAGEMENT','portal.style.adminFeature.stylesheet_management.name',0,'jsp/admin/style/ManageStyleSheets.jsp','portal.style.adminFeature.stylesheet_management.description',1,NULL,'STYLE','images/admin/skin/features/manage_stylesheets.png',NULL,3,0),('CORE_STYLES_MANAGEMENT','portal.style.adminFeature.styles_management.name',0,'jsp/admin/style/ManageStyles.jsp','portal.style.adminFeature.styles_management.description',1,NULL,'STYLE','images/admin/skin/features/manage_styles.png',NULL,4,0),('CORE_USERS_MANAGEMENT','portal.users.adminFeature.users_management.name',2,'jsp/admin/user/ManageUsers.jsp','portal.users.adminFeature.users_management.description',1,'','MANAGERS','images/admin/skin/features/manage_users.png',NULL,1,0),('CORE_WORKGROUPS_MANAGEMENT','portal.workgroup.adminFeature.workgroups_management.name',2,'jsp/admin/workgroup/ManageWorkgroups.jsp','portal.workgroup.adminFeature.workgroups_management.description',0,NULL,'MANAGERS','images/admin/skin/features/manage_workgroups.png',NULL,3,0),('CORE_XSL_EXPORT_MANAGEMENT','portal.xsl.adminFeature.xsl_export_management.name',2,'jsp/admin/xsl/ManageXslExport.jsp','portal.xsl.adminFeature.xsl_export_management.description',1,NULL,'SYSTEM',NULL,NULL,10,0),('DOCUMENT_CATEGORY_MANAGEMENT','document.adminFeature.category_management.name',1,'jsp/admin/plugins/document/ManageCategory.jsp','document.adminFeature.category_management.description',0,'document','CONTENT','images/admin/skin/plugins/document/manage_category.png',NULL,NULL,0),('DOCUMENT_MANAGEMENT','document.adminFeature.documents_management.name',3,'jsp/admin/plugins/document/ManageDocuments.jsp','document.adminFeature.documents_management.description',0,'document','CONTENT','images/admin/skin/plugins/document/manage_documents.png',NULL,NULL,0),('DOCUMENT_RULES_MANAGEMENT','document.adminFeature.rules_management.name',1,'jsp/admin/plugins/document/ManageRules.jsp','document.adminFeature.rules_management.description',0,'document','CONTENT','images/admin/skin/plugins/document/manage_rules.png',NULL,NULL,0),('DOCUMENT_TYPES_MANAGEMENT','document.adminFeature.document_types_management.name',1,'jsp/admin/plugins/document/ManageDocumentTypes.jsp','document.adminFeature.document_types_management.description',0,'document','CONTENT','images/admin/skin/plugins/document/manage_document_types.png',NULL,NULL,0);
/*!40000 ALTER TABLE `core_admin_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_role`
--

DROP TABLE IF EXISTS `core_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_role` (
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `role_description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role`
--

LOCK TABLES `core_admin_role` WRITE;
/*!40000 ALTER TABLE `core_admin_role` DISABLE KEYS */;
INSERT INTO `core_admin_role` VALUES ('all_site_manager','Site Manager'),('content_contributor','Producteur de contenu'),('content_publisher','Gestionnaire de publication'),('content_validator','Validateur de contenu'),('manage_spaces','Gestion des espaces de documents'),('super_admin','Super Administrateur'),('view_spaces_all','Vue sur tous les espaces'),('view_spaces_multimedia','Vue sur les espaces multimedia'),('view_space_validation','Vue sur l\'espace de validation'),('view_space_work','Vue sur l\'espace de travail');
/*!40000 ALTER TABLE `core_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_role_resource`
--

DROP TABLE IF EXISTS `core_admin_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_role_resource` (
  `rbac_id` int(11) NOT NULL DEFAULT '0',
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `resource_type` varchar(50) NOT NULL DEFAULT '',
  `resource_id` varchar(50) NOT NULL DEFAULT '',
  `permission` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rbac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role_resource`
--

LOCK TABLES `core_admin_role_resource` WRITE;
/*!40000 ALTER TABLE `core_admin_role_resource` DISABLE KEYS */;
INSERT INTO `core_admin_role_resource` VALUES (57,'all_site_manager','PAGE','*','VIEW'),(58,'all_site_manager','PAGE','*','MANAGE'),(77,'super_admin','INSERT_SERVICE','*','*'),(78,'super_admin','DOCUMENT_TYPE','*','*'),(81,'view_spaces_all','DOCUMENT_SPACE','0','VIEW'),(82,'manage_spaces','DOCUMENT_SPACE','*','DELETE'),(83,'manage_spaces','DOCUMENT_SPACE','*','MODIFY'),(84,'manage_spaces','DOCUMENT_SPACE','*','MOVE'),(85,'manage_spaces','DOCUMENT_SPACE','*','CREATE'),(86,'view_space_work','DOCUMENT_SPACE','2','VIEW'),(87,'view_spaces_multimedia','DOCUMENT_SPACE','5','VIEW'),(88,'content_contributor','DOCUMENT_TYPE','*','SUBMIT'),(89,'content_contributor','DOCUMENT_TYPE','*','DELETE'),(90,'content_contributor','DOCUMENT_TYPE','*','MODIFY'),(91,'content_contributor','DOCUMENT_TYPE','*','VIEW'),(92,'content_contributor','DOCUMENT_TYPE','*','VIEW_HISTORY'),(93,'content_contributor','DOCUMENT_TYPE','*','CREATE'),(94,'content_validator','DOCUMENT_TYPE','*','VIEW'),(95,'content_validator','DOCUMENT_TYPE','*','VIEW_HISTORY'),(96,'content_validator','DOCUMENT_TYPE','*','VALIDATE'),(97,'content_publisher','DOCUMENT_TYPE','*','ARCHIVE'),(98,'content_publisher','DOCUMENT_TYPE','*','VIEW'),(99,'content_publisher','DOCUMENT_TYPE','*','VIEW_HISTORY'),(100,'content_publisher','DOCUMENT_TYPE','*','PUBLISH'),(101,'all_site_manager','PORTLET_TYPE','*','*'),(102,'view_space_validation','DOCUMENT_SPACE','3','VIEW'),(107,'content_contributor','DOCUMENT_TYPE','*','CHANGE'),(108,'content_publisher','DOCUMENT_TYPE','*','ASSIGN'),(111,'all_site_manager','ADMIN_USER','*','*'),(137,'all_site_manager','SEARCH_SERVICE','*','*'),(164,'all_site_manager','XSL_EXPORT','*','*');
/*!40000 ALTER TABLE `core_admin_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user`
--

DROP TABLE IF EXISTS `core_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user` (
  `id_user` int(11) NOT NULL DEFAULT '0',
  `access_code` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `password` varchar(100) DEFAULT NULL,
  `locale` varchar(10) NOT NULL DEFAULT 'fr',
  `level_user` smallint(6) NOT NULL DEFAULT '0',
  `reset_password` smallint(6) NOT NULL DEFAULT '0',
  `accessibility_mode` smallint(6) NOT NULL DEFAULT '0',
  `password_max_valid_date` timestamp NULL DEFAULT NULL,
  `account_max_valid_date` bigint(20) DEFAULT NULL,
  `nb_alerts_sent` int(11) NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '1980-01-01 05:00:00',
  `workgroup_key` varchar(50) DEFAULT 'all',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user`
--

LOCK TABLES `core_admin_user` WRITE;
/*!40000 ALTER TABLE `core_admin_user` DISABLE KEYS */;
INSERT INTO `core_admin_user` VALUES (1,'admin','Admin','admin','admin@lutece.fr',0,'adminadmin','fr',0,0,0,NULL,1525905551385,0,'2017-05-09 22:39:11','all'),(2,'lutece','LutÃ¨ce','lutece','lutece@lutece.fr',0,'adminadmin','fr',1,0,0,NULL,NULL,0,'1980-01-01 05:00:00','all'),(3,'redac','redac','redac','redac@lutece.fr',0,'adminadmin','fr',2,0,0,NULL,NULL,0,'1980-01-01 05:00:00','all'),(4,'valid','valid','valid','valid@lutece.fr',0,'adminadmin','fr',3,0,0,NULL,NULL,0,'1980-01-01 05:00:00','all');
/*!40000 ALTER TABLE `core_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_anonymize_field`
--

DROP TABLE IF EXISTS `core_admin_user_anonymize_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_anonymize_field` (
  `field_name` varchar(100) NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_anonymize_field`
--

LOCK TABLES `core_admin_user_anonymize_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` DISABLE KEYS */;
INSERT INTO `core_admin_user_anonymize_field` VALUES ('access_code',1),('email',1),('first_name',1),('last_name',1);
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_field`
--

DROP TABLE IF EXISTS `core_admin_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_field` (
  `id_user_field` int(11) NOT NULL DEFAULT '0',
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `user_field_value` mediumtext,
  PRIMARY KEY (`id_user_field`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_field`
--

LOCK TABLES `core_admin_user_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_preferences`
--

DROP TABLE IF EXISTS `core_admin_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_preferences` (
  `id_user` varchar(100) NOT NULL,
  `pref_key` varchar(100) NOT NULL,
  `pref_value` mediumtext,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_admin_user_preferences` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_preferences`
--

LOCK TABLES `core_admin_user_preferences` WRITE;
/*!40000 ALTER TABLE `core_admin_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_workgroup`
--

DROP TABLE IF EXISTS `core_admin_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_workgroup` (
  `workgroup_key` varchar(50) NOT NULL,
  `workgroup_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_workgroup`
--

LOCK TABLES `core_admin_workgroup` WRITE;
/*!40000 ALTER TABLE `core_admin_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_workgroup_user`
--

DROP TABLE IF EXISTS `core_admin_workgroup_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_workgroup_user` (
  `workgroup_key` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`workgroup_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_workgroup_user`
--

LOCK TABLES `core_admin_workgroup_user` WRITE;
/*!40000 ALTER TABLE `core_admin_workgroup_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attribute`
--

DROP TABLE IF EXISTS `core_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_attribute` (
  `id_attribute` int(11) NOT NULL DEFAULT '0',
  `type_class_name` varchar(255) DEFAULT NULL,
  `title` mediumtext,
  `help_message` mediumtext,
  `is_mandatory` smallint(6) DEFAULT '0',
  `is_shown_in_search` smallint(6) DEFAULT '0',
  `is_shown_in_result_list` smallint(6) DEFAULT '0',
  `is_field_in_line` smallint(6) DEFAULT '0',
  `attribute_position` int(11) DEFAULT '0',
  `plugin_name` varchar(255) DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attribute`
--

LOCK TABLES `core_attribute` WRITE;
/*!40000 ALTER TABLE `core_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attribute_field`
--

DROP TABLE IF EXISTS `core_attribute_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_attribute_field` (
  `id_field` int(11) NOT NULL DEFAULT '0',
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `DEFAULT_value` mediumtext,
  `is_DEFAULT_value` smallint(6) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT '0',
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attribute_field`
--

LOCK TABLES `core_attribute_field` WRITE;
/*!40000 ALTER TABLE `core_attribute_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_attribute_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_connections_log`
--

DROP TABLE IF EXISTS `core_connections_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_connections_log` (
  `access_code` varchar(100) DEFAULT NULL,
  `ip_address` varchar(63) DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_status` int(11) DEFAULT NULL,
  KEY `index_connections_log` (`ip_address`,`date_login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_connections_log`
--

LOCK TABLES `core_connections_log` WRITE;
/*!40000 ALTER TABLE `core_connections_log` DISABLE KEYS */;
INSERT INTO `core_connections_log` VALUES ('admin','192.168.122.1','2017-04-29 20:00:21',0),('','::1','2017-05-02 21:19:59',0),('admin','0:0:0:0:0:0:0:1','2017-05-07 21:07:23',0),('','127.0.0.1','2017-05-07 22:42:06',0),('','127.0.0.1','2017-05-07 22:42:06',0),('','127.0.0.1','2017-05-07 22:42:06',0),('admin','127.0.0.1','2017-05-07 23:47:00',0);
/*!40000 ALTER TABLE `core_connections_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_dashboard`
--

DROP TABLE IF EXISTS `core_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_dashboard` (
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_dashboard`
--

LOCK TABLES `core_dashboard` WRITE;
/*!40000 ALTER TABLE `core_dashboard` DISABLE KEYS */;
INSERT INTO `core_dashboard` VALUES ('CORE_PAGES',2,1),('CORE_SYSTEM',1,2),('CORE_USER',4,1),('CORE_USERS',1,1),('DOCUMENT',2,1);
/*!40000 ALTER TABLE `core_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_datastore`
--

DROP TABLE IF EXISTS `core_datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_datastore` (
  `entity_key` varchar(255) NOT NULL,
  `entity_value` mediumtext,
  PRIMARY KEY (`entity_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_datastore`
--

LOCK TABLES `core_datastore` WRITE;
/*!40000 ALTER TABLE `core_datastore` DISABLE KEYS */;
INSERT INTO `core_datastore` VALUES ('core.advanced_parameters.access_failures_captcha','1'),('core.advanced_parameters.access_failures_interval','10'),('core.advanced_parameters.access_failures_max','3'),('core.advanced_parameters.account_life_time','12'),('core.advanced_parameters.account_reactivated_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.account_reactivated_mail_subject','Votre compte a bien Ã©tÃ© rÃ©activÃ©'),('core.advanced_parameters.default_user_language','fr'),('core.advanced_parameters.default_user_level','0'),('core.advanced_parameters.default_user_notification','1'),('core.advanced_parameters.default_user_status','0'),('core.advanced_parameters.email_pattern','^[\\w_.\\-!\\#\\$\\%\\&\'\\*\\+\\/\\=\\?\\^\\`\\}\\{\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$'),('core.advanced_parameters.email_pattern_verify_by',''),('core.advanced_parameters.enable_password_encryption','false'),('core.advanced_parameters.encryption_algorithm',''),('core.advanced_parameters.expired_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.expired_alert_mail_subject','Votre compte a expirÃ©'),('core.advanced_parameters.first_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.first_alert_mail_subject','Votre compte va bientÃ´t expirer'),('core.advanced_parameters.force_change_password_reinit','false'),('core.advanced_parameters.maximum_number_password_change',''),('core.advanced_parameters.nb_alert_account','2'),('core.advanced_parameters.notify_user_password_expired',''),('core.advanced_parameters.other_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.other_alert_mail_subject','Votre compte va bientÃ´t expirer'),('core.advanced_parameters.password_duration','120'),('core.advanced_parameters.password_expired_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.password_expired_mail_subject','Votre mot de passe a expirÃ©'),('core.advanced_parameters.password_format_numero','false'),('core.advanced_parameters.password_format_special_characters','false'),('core.advanced_parameters.password_format_upper_lower_case','false'),('core.advanced_parameters.password_history_size',''),('core.advanced_parameters.password_minimum_length','8'),('core.advanced_parameters.time_before_alert_account','30'),('core.advanced_parameters.time_between_alerts_account','10'),('core.advanced_parameters.tsw_size_password_change',''),('core.advanced_parameters.use_advanced_security_parameters',''),('core.backOffice.defaultEditor','tinymce'),('core.cache.status.BaseUserPreferencesCacheService.enabled','1'),('core.cache.status.BaseUserPreferencesCacheService.maxElementsInMemory','1000'),('core.cache.status.DatastoreCacheService.enabled','0'),('core.cache.status.DocumentResourceServletCache.enabled','1'),('core.cache.status.LuteceUserCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.maxElementsInMemory','1000'),('core.cache.status.MailAttachmentCacheService.diskPersistent','true'),('core.cache.status.MailAttachmentCacheService.enabled','1'),('core.cache.status.MailAttachmentCacheService.maxElementsInMemory','10'),('core.cache.status.MailAttachmentCacheService.overflowToDisk','true'),('core.cache.status.MailAttachmentCacheService.timeToLiveSeconds','7200'),('core.cache.status.MyPortalWidgetContentService.enabled','1'),('core.cache.status.MyPortalWidgetService.enabled','1'),('core.cache.status.PageCacheService.enabled','1'),('core.cache.status.PageCachingFilter.enabled','0'),('core.cache.status.PortalMenuService.enabled','1'),('core.cache.status.PortletCacheService.enabled','0'),('core.cache.status.SiteMapService.enabled','1'),('core.cache.status.StaticFilesCachingFilter.enabled','1'),('core.cache.status.StaticFilesCachingFilter.timeToLiveSeconds','604800'),('core.cache.status.XMLTransformerCacheService(XSLT).enabled','1'),('core.daemon.accountLifeTimeDaemon.interval','86400'),('core.daemon.accountLifeTimeDaemon.onStartUp','true'),('core.daemon.anonymizationDaemon.interval','86400'),('core.daemon.anonymizationDaemon.onStartUp','false'),('core.daemon.autoArchiving.interval','3600'),('core.daemon.autoArchiving.onStartUp','true'),('core.daemon.autoPublication.interval','3600'),('core.daemon.autoPublication.onStartUp','true'),('core.daemon.docSearchIndexer.interval','600'),('core.daemon.docSearchIndexer.onStartUp','true'),('core.daemon.indexer.interval','300'),('core.daemon.indexer.onStartUp','true'),('core.daemon.mailSender.interval','60'),('core.daemon.mailSender.onStartUp','true'),('core.daemon.threadLauncherDaemon.interval','60'),('core.daemon.threadLauncherDaemon.onStartUp','true'),('core.frontOffice.defaultEditor','markitupbbcode'),('core.plugins.status.core_extensions.installed','true'),('core.plugins.status.lucene.installed','true'),('core.startup.time','9/05/2017 05:00:50 PM'),('core_banned_domain_names','yopmail.com'),('portal.site.site_property.admin_home_url','jsp/admin/AdminMenu.jsp'),('portal.site.site_property.avatar_default','images/admin/skin/unknown.png'),('portal.site.site_property.back_images','\'images/admin/skin/bg_login1.jpg\' , \'images/admin/skin/bg_login2.jpg\' , \'images/admin/skin/bg_login3.jpg\' , \'images/admin/skin/bg_login4.jpg\''),('portal.site.site_property.email','<webmaster email>'),('portal.site.site_property.home_url','jsp/site/Portal.jsp'),('portal.site.site_property.locale.default','fr'),('portal.site.site_property.logo_url','images/logo-header-icon.png'),('portal.site.site_property.menu.position','top'),('portal.site.site_property.meta.author','<author>'),('portal.site.site_property.meta.copyright','<copyright>'),('portal.site.site_property.meta.description','<description>'),('portal.site.site_property.meta.keywords','<keywords>'),('portal.site.site_property.name','LUTECE'),('portal.site.site_property.noreply_email','no-reply@mydomain.com'),('portal.site.site_property.popup_credits.textblock','&lt;credits text&gt;'),('portal.site.site_property.popup_legal_info.copyright.textblock','&lt;copyright text&gt;'),('portal.site.site_property.popup_legal_info.privacy.textblock','&lt;privacy text&gt;');
/*!40000 ALTER TABLE `core_datastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_feature_group`
--

DROP TABLE IF EXISTS `core_feature_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_feature_group` (
  `id_feature_group` varchar(50) NOT NULL DEFAULT '',
  `feature_group_description` varchar(255) DEFAULT NULL,
  `feature_group_label` varchar(100) DEFAULT NULL,
  `feature_group_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_feature_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_feature_group`
--

LOCK TABLES `core_feature_group` WRITE;
/*!40000 ALTER TABLE `core_feature_group` DISABLE KEYS */;
INSERT INTO `core_feature_group` VALUES ('APPLICATIONS','portal.features.group.applications.description','portal.features.group.applications.label',3),('CONTENT','portal.features.group.content.description','portal.features.group.content.label',1),('MANAGERS','portal.features.group.managers.description','portal.features.group.managers.label',5),('SITE','portal.features.group.site.description','portal.features.group.site.label',2),('STYLE','portal.features.group.charter.description','portal.features.group.charter.label',6),('SYSTEM','portal.features.group.system.description','portal.features.group.system.label',7),('USERS','portal.features.group.users.description','portal.features.group.users.label',4);
/*!40000 ALTER TABLE `core_feature_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_file`
--

DROP TABLE IF EXISTS `core_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_file` (
  `id_file` int(11) NOT NULL DEFAULT '0',
  `title` mediumtext,
  `id_physical_file` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_file`
--

LOCK TABLES `core_file` WRITE;
/*!40000 ALTER TABLE `core_file` DISABLE KEYS */;
INSERT INTO `core_file` VALUES (125,'export_users_csv.xml',125,2523,'application/xml','2005-10-10 15:10:10'),(126,'export_users_xml.xml',126,259,'application/xml','2005-10-10 15:10:10');
/*!40000 ALTER TABLE `core_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_id_generator`
--

DROP TABLE IF EXISTS `core_id_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_id_generator` (
  `class_name` varchar(250) NOT NULL DEFAULT '',
  `current_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_id_generator`
--

LOCK TABLES `core_id_generator` WRITE;
/*!40000 ALTER TABLE `core_id_generator` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_id_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_indexer_action`
--

DROP TABLE IF EXISTS `core_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_indexer_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `id_document` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT '0',
  `indexer_name` varchar(255) NOT NULL,
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_indexer_action`
--

LOCK TABLES `core_indexer_action` WRITE;
/*!40000 ALTER TABLE `core_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_level_right`
--

DROP TABLE IF EXISTS `core_level_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_level_right` (
  `id_level` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_level_right`
--

LOCK TABLES `core_level_right` WRITE;
/*!40000 ALTER TABLE `core_level_right` DISABLE KEYS */;
INSERT INTO `core_level_right` VALUES (0,'Niveau 0 - Droits de l\'administrateur technique'),(1,'Niveau 1 - Droits de l\'administrateur fonctionnel'),(2,'Niveau 2 - Droits du webmestre'),(3,'Niveau 3 - Droits de l\'assistant webmestre');
/*!40000 ALTER TABLE `core_level_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mail_item`
--

DROP TABLE IF EXISTS `core_mail_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mail_item` (
  `id_mail_queue` int(11) NOT NULL DEFAULT '0',
  `mail_item` mediumblob,
  PRIMARY KEY (`id_mail_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mail_item`
--

LOCK TABLES `core_mail_item` WRITE;
/*!40000 ALTER TABLE `core_mail_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mail_queue`
--

DROP TABLE IF EXISTS `core_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mail_queue` (
  `id_mail_queue` int(11) NOT NULL DEFAULT '0',
  `is_locked` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_mail_queue`),
  KEY `is_locked_core_mail_queue` (`is_locked`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mail_queue`
--

LOCK TABLES `core_mail_queue` WRITE;
/*!40000 ALTER TABLE `core_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mode`
--

DROP TABLE IF EXISTS `core_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mode` (
  `id_mode` int(11) NOT NULL DEFAULT '0',
  `description_mode` varchar(255) DEFAULT NULL,
  `path` varchar(50) NOT NULL DEFAULT '',
  `output_xsl_method` varchar(50) DEFAULT NULL,
  `output_xsl_version` varchar(50) DEFAULT NULL,
  `output_xsl_media_type` varchar(50) DEFAULT NULL,
  `output_xsl_encoding` varchar(50) DEFAULT NULL,
  `output_xsl_indent` varchar(50) DEFAULT NULL,
  `output_xsl_omit_xml_dec` varchar(50) DEFAULT NULL,
  `output_xsl_standalone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mode`
--

LOCK TABLES `core_mode` WRITE;
/*!40000 ALTER TABLE `core_mode` DISABLE KEYS */;
INSERT INTO `core_mode` VALUES (0,'Normal','normal/','xml','1.0','text/xml','UTF-8','yes','yes','yes'),(1,'Administration','admin/','xml','1.0','text/xml','UTF-8','yes','yes','yes'),(2,'Wap','wml/','xml','1.0','text/xml','UTF-8','yes','yes','yes');
/*!40000 ALTER TABLE `core_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page`
--

DROP TABLE IF EXISTS `core_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page` (
  `id_page` int(11) NOT NULL DEFAULT '0',
  `id_parent` int(11) DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` mediumtext,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` smallint(6) DEFAULT NULL,
  `page_order` int(11) DEFAULT '0',
  `id_template` int(11) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `code_theme` varchar(80) DEFAULT NULL,
  `node_status` smallint(6) NOT NULL DEFAULT '1',
  `image_content` mediumblob,
  `mime_type` varchar(255) DEFAULT 'NULL',
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `id_authorization_node` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `index_page` (`id_template`,`id_parent`),
  KEY `index_childpage` (`id_parent`,`page_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page`
--

LOCK TABLES `core_page` WRITE;
/*!40000 ALTER TABLE `core_page` DISABLE KEYS */;
INSERT INTO `core_page` VALUES (1,0,'Home','Home Page','2014-06-08 22:20:44',1,1,4,'2003-09-09 05:38:01','none','default',0,'','application/octet-stream',NULL,NULL,1),(2,1,'Page 1','A child page','2014-06-08 23:23:42',0,1,2,'2014-06-08 23:23:42','none','default',1,NULL,'application/octet-stream',NULL,NULL,1);
/*!40000 ALTER TABLE `core_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page_template`
--

DROP TABLE IF EXISTS `core_page_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page_template` (
  `id_template` int(11) NOT NULL DEFAULT '0',
  `description` varchar(50) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page_template`
--

LOCK TABLES `core_page_template` WRITE;
/*!40000 ALTER TABLE `core_page_template` DISABLE KEYS */;
INSERT INTO `core_page_template` VALUES (1,'Une colonne','skin/site/page_template1.html','page_template1.gif'),(2,'Deux colonnes','skin/site/page_template2.html','page_template2.gif'),(3,'Trois colonnes','skin/site/page_template3.html','page_template3.gif'),(4,'1 + 2 colonnes','skin/site/page_template4.html','page_template4.gif'),(5,'Deux colonnes Ã©gales','skin/site/page_template5.html','page_template5.gif'),(6,'Trois colonnes inÃ©gales','skin/site/page_template6.html','page_template6.gif');
/*!40000 ALTER TABLE `core_page_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_physical_file`
--

DROP TABLE IF EXISTS `core_physical_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_physical_file` (
  `id_physical_file` int(11) NOT NULL DEFAULT '0',
  `file_value` mediumblob,
  PRIMARY KEY (`id_physical_file`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_physical_file`
--

LOCK TABLES `core_physical_file` WRITE;
/*!40000 ALTER TABLE `core_physical_file` DISABLE KEYS */;
INSERT INTO `core_physical_file` VALUES (125,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"text\"/>\r\n	\r\n	<xsl:template match=\"users\">\r\n		<xsl:apply-templates select=\"user\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"user\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:value-of select=\"access_code\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"last_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"first_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"email\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"status\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"locale\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"level\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"must_change_password\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"accessibility_mode\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"password_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"account_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"date_last_login\" />\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:apply-templates select=\"roles\" />\r\n		<xsl:apply-templates select=\"rights\" />\r\n		<xsl:apply-templates select=\"workgroups\" />\r\n		<xsl:apply-templates select=\"attributes\" />\r\n		<xsl:text>&#10;</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"roles\">\r\n		<xsl:apply-templates select=\"role\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"role\">\r\n		<xsl:text>;\"role:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"rights\">\r\n		<xsl:apply-templates select=\"right\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"right\">\r\n		<xsl:text>;\"right:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroups\">\r\n		<xsl:apply-templates select=\"workgroup\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroup\">\r\n		<xsl:text>;\"workgroup:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attributes\">\r\n		<xsl:apply-templates select=\"attribute\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attribute\">\r\n		<xsl:text>;\"</xsl:text>\r\n		<xsl:value-of select=\"attribute-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-field-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-value\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>'),(126,'<?xml version=\"1.0\" ?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:template match=\"/ | @* | node()\">\r\n		<xsl:copy>\r\n			<xsl:apply-templates select=\"@* | node()\" />\r\n		</xsl:copy>\r\n	</xsl:template>\r\n</xsl:stylesheet>');
/*!40000 ALTER TABLE `core_physical_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portal_component`
--

DROP TABLE IF EXISTS `core_portal_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portal_component` (
  `id_portal_component` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_portal_component`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portal_component`
--

LOCK TABLES `core_portal_component` WRITE;
/*!40000 ALTER TABLE `core_portal_component` DISABLE KEYS */;
INSERT INTO `core_portal_component` VALUES (0,'Rubrique'),(1,'Article'),(2,'Rubrique Liste Article'),(3,'Menu Init'),(4,'Menu Principal'),(5,'Chemin Page'),(6,'Plan du site'),(7,'Arborescence'),(8,'Plan du site admin');
/*!40000 ALTER TABLE `core_portal_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet`
--

DROP TABLE IF EXISTS `core_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `id_portlet_type` varchar(50) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `portlet_order` int(11) DEFAULT NULL,
  `column_no` int(11) DEFAULT NULL,
  `id_style` int(11) DEFAULT NULL,
  `accept_alias` smallint(6) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `display_portlet_title` int(11) NOT NULL DEFAULT '0',
  `role` varchar(50) DEFAULT NULL,
  `device_display_flags` int(11) NOT NULL DEFAULT '15',
  PRIMARY KEY (`id_portlet`),
  KEY `index_portlet` (`id_page`,`id_portlet_type`,`id_style`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet`
--

LOCK TABLES `core_portlet` WRITE;
/*!40000 ALTER TABLE `core_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet_alias`
--

DROP TABLE IF EXISTS `core_portlet_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet_alias` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `id_alias` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_portlet`,`id_alias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet_alias`
--

LOCK TABLES `core_portlet_alias` WRITE;
/*!40000 ALTER TABLE `core_portlet_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_portlet_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet_type`
--

DROP TABLE IF EXISTS `core_portlet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet_type` (
  `id_portlet_type` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `url_creation` varchar(255) DEFAULT NULL,
  `url_update` varchar(255) DEFAULT NULL,
  `home_class` varchar(255) DEFAULT NULL,
  `plugin_name` varchar(50) DEFAULT NULL,
  `url_docreate` varchar(255) DEFAULT NULL,
  `create_script` varchar(255) DEFAULT NULL,
  `create_specific` varchar(255) DEFAULT NULL,
  `create_specific_form` varchar(255) DEFAULT NULL,
  `url_domodify` varchar(255) DEFAULT NULL,
  `modify_script` varchar(255) DEFAULT NULL,
  `modify_specific` varchar(255) DEFAULT NULL,
  `modify_specific_form` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_portlet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet_type`
--

LOCK TABLES `core_portlet_type` WRITE;
/*!40000 ALTER TABLE `core_portlet_type` DISABLE KEYS */;
INSERT INTO `core_portlet_type` VALUES ('ALIAS_PORTLET','portal.site.portletAlias.name','plugins/alias/CreatePortletAlias.jsp','plugins/alias/ModifyPortletAlias.jsp','fr.paris.lutece.portal.business.portlet.AliasPortletHome','alias','plugins/alias/DoCreatePortletAlias.jsp','/admin/portlet/script_create_portlet.html','/admin/portlet/alias/create_portlet_alias.html','','plugins/alias/DoModifyPortletAlias.jsp','/admin/portlet/script_modify_portlet.html','/admin/portlet/alias/modify_portlet_alias.html',''),('DOCUMENT_LIST_PORTLET','document.portlet.documentListPortlet.name','plugins/document/CreateDocumentListPortlet.jsp','plugins/document/ModifyDocumentListPortlet.jsp','fr.paris.lutece.plugins.document.business.portlet.DocumentListPortletHome','document','plugins/document/DoCreateDocumentListPortlet.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/document/portlet/document_list_portlet_type.html','','plugins/document/DoModifyDocumentListPortlet.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/document/portlet/document_list_portlet_type.html',''),('DOCUMENT_PORTLET','document.portlet.documentPortlet.name','plugins/document/CreateDocumentPortlet.jsp','plugins/document/ModifyDocumentPortlet.jsp','fr.paris.lutece.plugins.document.business.portlet.DocumentPortletHome','document','plugins/document/DoCreateDocumentPortlet.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/document/portlet/document_portlet_type.html','','plugins/document/DoModifyDocumentPortlet.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/document/portlet/document_portlet_type.html','');
/*!40000 ALTER TABLE `core_portlet_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_role`
--

DROP TABLE IF EXISTS `core_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_role` (
  `role` varchar(50) NOT NULL DEFAULT '',
  `role_description` varchar(255) DEFAULT NULL,
  `workgroup_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role`
--

LOCK TABLES `core_role` WRITE;
/*!40000 ALTER TABLE `core_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_search_parameter`
--

DROP TABLE IF EXISTS `core_search_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_search_parameter` (
  `parameter_key` varchar(100) NOT NULL,
  `parameter_value` mediumtext,
  PRIMARY KEY (`parameter_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_search_parameter`
--

LOCK TABLES `core_search_parameter` WRITE;
/*!40000 ALTER TABLE `core_search_parameter` DISABLE KEYS */;
INSERT INTO `core_search_parameter` VALUES ('date_filter','0'),('default_operator','OR'),('help_message','Message d aide pour la recherche'),('taglist',NULL),('tag_filter','0'),('type_filter','none');
/*!40000 ALTER TABLE `core_search_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_style`
--

DROP TABLE IF EXISTS `core_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_style` (
  `id_style` int(11) NOT NULL DEFAULT '0',
  `description_style` varchar(100) NOT NULL DEFAULT '',
  `id_portlet_type` varchar(50) DEFAULT NULL,
  `id_portal_component` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_style`),
  KEY `index_style` (`id_portlet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style`
--

LOCK TABLES `core_style` WRITE;
/*!40000 ALTER TABLE `core_style` DISABLE KEYS */;
INSERT INTO `core_style` VALUES (3,'Menu Init','',3),(4,'Main Menu','',4),(5,'Chemin Page','',5),(6,'Plan du site','',6),(7,'Arborescence','',7),(8,'Plan du Site Admin',NULL,8),(1700,'DÃ©faut','DOCUMENT_LIST_PORTLET',0),(1701,'Type Actor','DOCUMENT_LIST_PORTLET',0),(1702,'Type BrÃ¨ve','DOCUMENT_LIST_PORTLET',0),(1703,'Type Article','DOCUMENT_LIST_PORTLET',0),(1704,'Type Image','DOCUMENT_LIST_PORTLET',0),(1705,'Type Video','DOCUMENT_LIST_PORTLET',0),(1706,'Type Pdf','DOCUMENT_LIST_PORTLET',0),(1707,'Type Son','DOCUMENT_LIST_PORTLET',0),(1708,'Type Actor Service','DOCUMENT_LIST_PORTLET',0),(1710,'Type Article Extend','DOCUMENT_LIST_PORTLET',0),(1711,'Type PDF Extend','DOCUMENT_LIST_PORTLET',0),(1730,'Type Actor','DOCUMENT_PORTLET',0),(1731,'Type BrÃ¨ve','DOCUMENT_PORTLET',0),(1732,'Type Article','DOCUMENT_PORTLET',0),(1733,'Type Image','DOCUMENT_PORTLET',0),(1734,'Type Video','DOCUMENT_PORTLET',0),(1735,'Type Pdf','DOCUMENT_PORTLET',0),(1736,'Type Son','DOCUMENT_PORTLET',0),(1737,'Type Flash','DOCUMENT_LIST_PORTLET',0),(1738,'Type Flash','DOCUMENT_PORTLET',0),(1739,'DÃ©faut Download','DOCUMENT_LIST_PORTLET',0);
/*!40000 ALTER TABLE `core_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_style_mode_stylesheet`
--

DROP TABLE IF EXISTS `core_style_mode_stylesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_style_mode_stylesheet` (
  `id_style` int(11) NOT NULL DEFAULT '0',
  `id_mode` int(11) NOT NULL DEFAULT '0',
  `id_stylesheet` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_style`,`id_mode`,`id_stylesheet`),
  KEY `index_style_mode_stylesheet` (`id_stylesheet`,`id_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style_mode_stylesheet`
--

LOCK TABLES `core_style_mode_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_style_mode_stylesheet` DISABLE KEYS */;
INSERT INTO `core_style_mode_stylesheet` VALUES (3,0,211),(4,0,213),(5,0,215),(6,0,217),(7,0,253),(8,1,279),(1701,0,297),(1700,0,298),(1702,0,299),(1703,0,300),(1707,0,301),(1706,0,302),(1704,0,304),(1708,0,305),(1710,0,305),(1711,0,306),(1720,0,402),(1730,0,403),(1735,0,408),(1736,0,409),(1731,0,504),(1732,0,505),(1733,0,506),(1734,0,507),(1737,0,508),(1738,0,509),(1739,0,510),(1705,0,9004);
/*!40000 ALTER TABLE `core_style_mode_stylesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_stylesheet`
--

DROP TABLE IF EXISTS `core_stylesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_stylesheet` (
  `id_stylesheet` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `source` mediumblob,
  PRIMARY KEY (`id_stylesheet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_stylesheet`
--

LOCK TABLES `core_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_stylesheet` DISABLE KEYS */;
INSERT INTO `core_stylesheet` VALUES (211,'Menu Init','menu_init.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n<br /><br />\r\n	<div id=\"menu-init\">\r\n		<div id=\"menu-init-content\">\r\n            <ul id=\"menu-verti\">\r\n                <xsl:apply-templates select=\"menu\" />\r\n            </ul>\r\n        </div>\r\n     </div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n\r\n    <xsl:if test=\"$index &gt; 7\">\r\n        <li class=\"first-verti\">\r\n        	<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n          		<xsl:value-of select=\"page-name\" />\r\n	        </a>\r\n    	    <xsl:apply-templates select=\"sublevel-menu-list\" />\r\n        </li>\r\n   </xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" >\r\n	<ul>\r\n    	<li class=\"last-verti\">\r\n		 	<xsl:apply-templates select=\"sublevel-menu\" />\r\n 	    </li>\r\n    </ul>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n\r\n   <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n		<span><xsl:value-of select=\"page-name\" /></span>\r\n   </a>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(213,'Menu principal','menu_main.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n	<xsl:template match=\"menu-list\">\r\n		<xsl:apply-templates select=\"menu\" />\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"menu\">\r\n		<li>\r\n			<a href=\"{$site-path}?page_id={page-id}\" class=\"first-level\" target=\"_top\">\r\n					<xsl:value-of select=\"page-name\" />\r\n			</a>\r\n		</li>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n'),(215,'Chemin page','page_path.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n\r\n<xsl:template match=\"page\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page_link\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?{page-url}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>'),(217,'Plan du site','site_map.xsl','<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n\r\n<xsl:template match=\"page[page-level=0]\">\r\n	<div class=\"span-15 prepend-1 append-1 append-bottom\">\r\n		<div class=\"portlet -lutece-border-radius\">\r\n			<xsl:apply-templates select=\"child-pages-list\" />\r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page[page-level=1]\" >\r\n<ul class=\"site-map-level-one\">\r\n	<li>\r\n		<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</a>\r\n		<xsl:apply-templates select=\"page-description\" />\r\n		<xsl:apply-templates select=\"page-image\" />\r\n		<xsl:apply-templates select=\"child-pages-list\" />\r\n	    <xsl:text disable-output-escaping=\"yes\">\r\n		    <![CDATA[<div class=\"clear\">&#160;</div>]]>\r\n	    </xsl:text>\r\n	</li>\r\n</ul>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page[page-level=2]\" >\r\n<ul class=\"site-map-level-two\">\r\n	<li>\r\n		<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</a>\r\n		<xsl:apply-templates select=\"page-description\" />\r\n		<xsl:apply-templates select=\"child-pages-list\" />\r\n	</li>\r\n</ul>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page[page-level>2]\" >\r\n<ul class=\"site-map-level-highest\">\r\n	<li>\r\n		<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</a>\r\n		<xsl:apply-templates select=\"page-description\" />\r\n		<xsl:apply-templates select=\"child-pages-list\" />\r\n	</li>\r\n</ul>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page-description\">\r\n	<br /><xsl:value-of select=\".\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"child-pages-list[page-level=0]\">\r\n	<xsl:if test=\"count(page)>0\" >\r\n		<xsl:apply-templates select=\"page\" />\r\n    </xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"child-pages-list[page-level=1]\">\r\n	<xsl:if test=\"count(page)>0\" >\r\n		<xsl:apply-templates select=\"page\" />\r\n    </xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"child-pages-list[page-level=2]\">\r\n	<xsl:if test=\"count(page)>0\" >\r\n		<xsl:apply-templates select=\"page\" />\r\n    </xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"child-pages-list[page-level>2]\">\r\n	<xsl:if test=\"count(page)>0\" >\r\n		<xsl:apply-templates select=\"page\" />\r\n    </xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page-image\">\r\n	<div class=\"level-one-image\">\r\n    	<div class=\"polaroid\">\r\n		<img  border=\"0\" width=\"80\" height=\"80\" src=\"images/local/data/pages/{.}\" alt=\"\" />\r\n         </div>\r\n	</div >\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>\r\n'),(253,'Pages filles - Arborescence','menu_tree.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n	<xsl:variable name=\"menu-list\" select=\"menu\" />\r\n\r\n	<script type=\"text/javascript\">\r\n		$(document).ready(function(){\r\n			$(\"#tree\").treeview({\r\n				animated: \"fast\",\r\n				collapsed: false,\r\n				unique: true,\r\n				persist: \"cookie\"\r\n			});\r\n		\r\n		});\r\n	</script>    \r\n	\r\n	<!-- Menu Tree -->      \r\n	<xsl:if test=\"not(string(menu)=\'\')\">\r\n	    <xsl:text disable-output-escaping=\"yes\">		    \r\n            <div class=\"tree4\">		\r\n			<h2>&#160;</h2>\r\n			<ul id=\"tree\" class=\"tree4\">\r\n                <xsl:apply-templates select=\"menu\" />        \r\n			</ul>	\r\n			</div>\r\n		 	 <br />\r\n		</xsl:text> \r\n	</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n		<li>\r\n    <!--<xsl:if test=\"$index &lt; 7\">-->        \r\n          <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\" >\r\n               <xsl:value-of select=\"page-name\" />\r\n           </a>	   \r\n		   <br />\r\n		   <xsl:value-of select=\"page-description\" />\r\n		   <!--<xsl:value-of select=\"page-description\" /><br />-->		   			\r\n			<xsl:apply-templates select=\"sublevel-menu-list\" /> \r\n			\r\n		</li> 	\r\n    <!--</xsl:if>-->\r\n		\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" > \r\n	\r\n	<xsl:apply-templates select=\"sublevel-menu\" /> 	    	\r\n\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n		 <ul >\r\n			<li>\r\n<!--	<span> -->\r\n				<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n					<xsl:value-of select=\"page-name\" />\r\n				</a>\r\n			</li>			\r\n		</ul>\r\n	<!--</span>	-->\r\n		\r\n   \r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(279,'Plan du Site module d\'Administration','admin_site_map_admin.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"current-page-id\" select=\"current-page-id\" />\r\n\r\n<xsl:template match=\"page[page-level=0]\"> \r\n	<div id=\"tree\" class=\"jstree-default\">\r\n		<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\" >\r\n			<xsl:value-of select=\"page-name\" />\r\n			<xsl:if test=\"not(string(page-role)=\'none\')\"> \r\n				<strong><xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n				<xsl:value-of select=\"page-role\" /></strong>\r\n			</xsl:if>            \r\n		</a>\r\n		<ul>\r\n			<xsl:apply-templates select=\"child-pages-list\" />\r\n		</ul>\r\n	</div>\r\n</xsl:template>\r\n    \r\n<xsl:template match=\"page[page-level>0]\" >\r\n	<xsl:variable name=\"index\" select=\"page-id\" />\r\n	<xsl:variable name=\"description\" select=\"page-description\" />\r\n	\r\n	<li id=\"node-{$index}\">\r\n		<a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\">\r\n		<xsl:value-of select=\"page-name\" />\r\n			<xsl:if test=\"not(string(page-role)=\'none\')\">\r\n				<strong>\r\n				  <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text><xsl:value-of select=\"page-role\" />\r\n				</strong>\r\n			</xsl:if>\r\n		</a>\r\n		<xsl:choose>\r\n			<xsl:when test=\"count(child-pages-list/*)>0\">\r\n				<ul>\r\n				   <xsl:apply-templates select=\"child-pages-list\" />\r\n				</ul>\r\n			</xsl:when>\r\n		   <xsl:otherwise>\r\n				<xsl:apply-templates select=\"child-pages-list\" />\r\n		   </xsl:otherwise>\r\n		</xsl:choose>\r\n	</li>\r\n</xsl:template>\r\n    \r\n<xsl:template match=\"child-pages-list\">\r\n	<xsl:apply-templates select=\"page\" />\r\n</xsl:template>\r\n    \r\n</xsl:stylesheet>\r\n'),(297,'Rubrique Liste de Documents - Type Acteur','portlet_document_actor_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	<div class=\"{$device_class}\" >\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3 class=\"\">\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n        </xsl:if>\r\n		<div class=\"\" >\r\n		     <ul>        \r\n                 <xsl:apply-templates select=\"document-list-portlet/document\" />	\r\n            </ul>  \r\n		</div>            	\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n    <li style=\"list-style:none;\"> \r\n        <xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n             <table width=\"90%\" summary=\"document\"> \r\n                 <tr>\r\n                     <td  width=\"65%\">   \r\n                         <a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\" target=\"_top\">      \r\n                             <xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/actor/actor-firstname\" />&#160;<xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/actor/actor-lastname\" />\r\n\r\n                         </a>\r\n						<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n							<br />\r\n				        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        				<img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n				        </xsl:if>   \r\n                         <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n							<br />\r\n							#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n						 </xsl:if>\r\n                    </td>\r\n                    <td  width=\"35%\">\r\n                        <xsl:apply-templates select=\"document-xml-content/actor/actor-photo/file-resource\" />\r\n                   </td>\r\n                </tr>    \r\n            </table> \r\n        </xsl:if>\r\n    </li>        \r\n</xsl:template>              \r\n	\r\n\r\n<xsl:template match=\"file-resource\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\" >\r\n			<img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" alt=\"\" align=\"right\" width=\"40\" height=\"40\"/>\r\n		</xsl:when>\r\n		<xsl:otherwise>\r\n             <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n			   <img src=\"images/local/skin/plugins/document/filetypes/file.png\" border=\"0\" alt=\"\" align=\"right\" width=\"40\" height=\"40\"/>\r\n             </a>\r\n		</xsl:otherwise>        \r\n	</xsl:choose>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(298,'Rubrique Liste de Documents - DÃ©faut','portlet_document_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n    \r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n    <div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n            <h3>\r\n                <xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n            </h3>\r\n        </xsl:if>\r\n		<div>\r\n            <xsl:apply-templates select=\"document-list-portlet\" />\r\n		</div>\r\n    </div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"document-list-portlet\">\r\n    <ul>\r\n        <xsl:apply-templates select=\"document\" />\r\n    </ul>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">\r\n    <li>\r\n        <a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\" target=\"_top\">\r\n            <xsl:for-each select=\"descendant::*\">\r\n                <xsl:value-of select=\"document-title\" />\r\n           </xsl:for-each>\r\n		</a>          \r\n		<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n			<br />\r\n        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        <img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        </xsl:if>   \r\n           <br />\r\n            <xsl:for-each select=\"descendant::*\">\r\n                <xsl:value-of select=\"document-summary\" />\r\n            </xsl:for-each>\r\n            <br />\r\n            <xsl:if test=\"(string(document-is-commentable)=\'1\')\">\r\n                <img src=\"images/local/skin/plugins/document/nb_comments.png\" alt=\"Nombre de commentaires\" title=\"Nombre de commentaires\" align=\"middle\"/>&#160;<xsl:value-of select=\"document-comment-nb\" />      \r\n            </xsl:if>   \r\n    </li>\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>\r\n\r\n'),(299,'Rubrique Liste de Documents - Type BrÃ¨ve','portlet_document_shortarticle_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:param name=\"page-id\" select=\"page-id\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n		<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 id=\"article_{$portlet-id}\">\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h3>\r\n				<br />\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"document-list-portlet/document\" />\r\n			<xsl:text disable-output-escaping=\"yes\">\r\n				<![CDATA[<div class=\"clear\">&#160;</div>]]>\r\n			</xsl:text>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n			<div class=\"col-md-6\">\r\n				<a\r\n					href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\"\r\n					target=\"_top\">\r\n					<xsl:for-each select=\"descendant::*\">\r\n						<xsl:value-of select=\"document-title\" />\r\n					</xsl:for-each>\r\n				</a>\r\n				<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n					<br />\r\n		        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        		<img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n		        </xsl:if>   \r\n				<xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n					<br />\r\n					#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n				</xsl:if>\r\n				<br />\r\n				<xsl:for-each select=\"descendant::*\">\r\n					<xsl:value-of select=\"document-summary\" />\r\n				</xsl:for-each>\r\n			</div>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>\r\n'),(300,'Rubrique Liste de Documents - Type Article','portlet_document_article_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:param name=\"target\" select=\"target\" />\r\n	<xsl:param name=\"page-id\" select=\"page-id\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n		<xsl:variable name=\"device_class\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</xsl:variable>\r\n	\r\n		<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 id=\"article_{$portlet-id}\"><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"document-list-portlet/document\" />\r\n			<xsl:text disable-output-escaping=\"yes\">\r\n				<![CDATA[<div class=\"clearfix\">&#160;</div>]]>\r\n			</xsl:text>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n			<div class=\"col-md-6\">\r\n				<a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id} {$target}\">\r\n					<xsl:for-each select=\"descendant::*\">\r\n						<xsl:value-of select=\"document-title\" />\r\n					</xsl:for-each>\r\n				</a>\r\n				<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n					<br />\r\n	        		<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        		<img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n		        </xsl:if>   \r\n				<xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n					<br />\r\n					#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n				</xsl:if>\r\n				<br />\r\n				<xsl:for-each select=\"descendant::*\">\r\n					<xsl:value-of select=\"document-summary\" />\r\n				</xsl:for-each>\r\n			</div>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>\r\n'),(301,'Rubrique Liste de Documents - Type Son','portlet_document_sound_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n        </xsl:if>\r\n		<ul>\r\n     	    <xsl:apply-templates select=\"document-list-portlet/document\" />\r\n     	</ul>  \r\n	</div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"document\">      \r\n<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n    <li>\r\n        <a href=\"{$site-path}?document_id={document-id}&amp;portlet_id={$portlet-id}\" target=\"_top\">      \r\n             <xsl:value-of select=\"document-xml-content/sound/sound-title\" />   \r\n       </a>\r\n       	<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n			<br />\r\n        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        <img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        </xsl:if>   \r\n		<xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n			<br />\r\n			#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n		</xsl:if>\r\n       <br />\r\n          <xsl:value-of select=\"document-xml-content/sound/sound-file\" />\r\n       <br />\r\n          <xsl:value-of select=\"document-xml-content/sound/sound-author\" />\r\n   </li>       \r\n</xsl:if>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n\r\n'),(304,'Rubrique Liste de Documents - Type Image','portlet_document_image_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3>\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n        </xsl:if>\r\n		<div>\r\n		     <ul class=\"unstyled\">        \r\n                 <xsl:apply-templates select=\"document-list-portlet/document\" />	\r\n            </ul>  \r\n		</div>            	\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n    <li> \r\n        <xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n            <a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\" target=\"_top\">      \r\n                <xsl:apply-templates select=\"document-xml-content/image/image-file/file-resource\" />\r\n            </a>\r\n            <xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n				<br />\r\n	        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        	<img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        	</xsl:if>   \r\n            <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n				<br />\r\n				#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n			</xsl:if>\r\n            <br />           \r\n                <xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/image/image-description\" />\r\n            <br />\r\n                <xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/image/image-credits\" />\r\n            <br />\r\n        </xsl:if>\r\n    </li>        \r\n</xsl:template>              \r\n	\r\n\r\n<xsl:template match=\"file-resource\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\">\r\n			<img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" alt=\"\" class=\"img-rounded\" width=\"120\" height=\"120\"/>\r\n		</xsl:when>\r\n		<xsl:otherwise>\r\n             <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n			   <img src=\"images/admin/skin/plugins/document/filetypes/file.png\" class=\"img-rounded\" alt=\"\" width=\"120\" height=\"120\"/>\r\n             </a>\r\n		</xsl:otherwise>        \r\n	</xsl:choose>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(305,'Rubrique Liste de Documents - Type Article Extend','portlet_document_article_list_extend.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:param name=\"target\" select=\"target\" />\r\n	<xsl:param name=\"page-id\" select=\"page-id\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n		<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 id=\"article_{$portlet-id}\">\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h3><br />\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"document-list-portlet/document\" />\r\n			<xsl:text disable-output-escaping=\"yes\">\r\n				<![CDATA[<div class=\"clear\">&#160;</div>]]>\r\n			</xsl:text>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n			<div class=\"col-md-6 portlet\">\r\n				<a\r\n					href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id} {$target}\">\r\n					<xsl:for-each select=\"descendant::*\">\r\n						<xsl:value-of select=\"document-title\" />\r\n					</xsl:for-each>\r\n				</a>\r\n                <br />\r\n                <xsl:for-each select=\"descendant::*\">\r\n                    <xsl:value-of select=\"document-summary\" />\r\n                </xsl:for-each>\r\n				<xsl:if test=\"document-rating\">\r\n					<br />\r\n	        		<img src=\"images/local/skin/plugins/extend/modules/rating/stars_{document-rating}.png\" alt=\"Score\" title=\"Score\" />\r\n	        		(<xsl:value-of select=\"document-number-rating\" />)\r\n		        </xsl:if>   \r\n                <xsl:if test=\"document-number-comment\">\r\n                    <br />\r\n                    <xsl:value-of select=\"document-number-comment\" /> commentaires\r\n                </xsl:if>   \r\n				<xsl:if test=\"document-number-hits\">\r\n					<br />\r\n                    <xsl:value-of select=\"document-number-hits\" /> vues\r\n				</xsl:if>\r\n			</div>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>\r\n'),(306,'Rubrique Liste de Documents - Type PDF Extend','portlet_document_pdf_list_extend.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"{$device_class}\" >\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3 class=\"\">\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n        </xsl:if>\r\n		<div class=\"\" >\r\n		     <ul>\r\n         	    <xsl:apply-templates select=\"document-list-portlet/document\" />\r\n             </ul>  \r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n    <li>\r\n        <a href=\"document?id={document-id}&amp;id_attribute=48\" target=\"_blank\">      \r\n        	<xsl:for-each select=\"descendant::*\">\r\n                <xsl:apply-templates select=\"file-resource\" />\r\n           </xsl:for-each>  \r\n          	<xsl:for-each select=\"descendant::*\">\r\n                <xsl:value-of select=\"document-title\" />\r\n           </xsl:for-each>  \r\n        </a>\r\n        <br />\r\n        <xsl:for-each select=\"descendant::*\">\r\n            <xsl:value-of select=\"document-summary\" />\r\n        </xsl:for-each>\r\n                <xsl:if test=\"document-rating\">\r\n                    <br />\r\n                    <img src=\"images/local/skin/plugins/extend/modules/rating/stars_{document-rating}.png\" alt=\"Score\" title=\"Score\" />\r\n                    (<xsl:value-of select=\"document-number-rating\" />)\r\n                </xsl:if>   \r\n                <xsl:if test=\"document-number-comment\">\r\n                    <br />\r\n                    <xsl:value-of select=\"document-number-comment\" /> commentaires\r\n                </xsl:if>   \r\n                <xsl:if test=\"document-number-hits\">\r\n                    <br />\r\n                    <xsl:value-of select=\"document-number-hits\" /> vues\r\n                </xsl:if>\r\n    </li>	\r\n</xsl:if>\r\n</xsl:template>              \r\n\r\n<xsl:template match=\"file-resource\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"(resource-content-type=\'application/pdf\')\" >\r\n			<img src=\"images/local/skin/plugins/document/filetypes/pdf.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\" />\r\n		</xsl:when>\r\n\r\n		<xsl:otherwise>\r\n		   <img src=\"images/local/skin/plugins/document/filetypes/file.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\"/>\r\n		</xsl:otherwise>        \r\n	</xsl:choose>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(403,'Rubrique Document simple - Type Acteur','portlet_document_actor.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3>\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n        </xsl:if>\r\n		<div>\r\n		     <ul>        \r\n                 <xsl:apply-templates select=\"document-portlet/document\" />	\r\n            </ul>  \r\n		</div>            	\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n    <li style=\"list-style:none;\"> \r\n        <xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n             <table width=\"90%\" summary=\"document\"> \r\n                 <tr>\r\n                     <td  width=\"65%\">   \r\n                         <a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\" target=\"_top\">      \r\n                             <xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/actor/actor-firstname\" />&#160;<xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/actor/actor-lastname\" />\r\n\r\n                         </a>\r\n						<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n							<br />\r\n				        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        				<img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n				        </xsl:if>   \r\n                         <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n							<br />\r\n							#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n						 </xsl:if>\r\n                    </td>\r\n                    <td  width=\"35%\">\r\n                        <xsl:apply-templates select=\"document-xml-content/actor/actor-photo/file-resource\" />\r\n                   </td>\r\n                </tr>    \r\n            </table> \r\n        </xsl:if>\r\n    </li>        \r\n</xsl:template>              \r\n	\r\n\r\n<xsl:template match=\"file-resource\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\">\r\n			<img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" alt=\"\" align=\"right\" width=\"40\" height=\"40\"/>\r\n		</xsl:when>\r\n		<xsl:otherwise>\r\n             <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n			   <img src=\"images/admin/skin/plugins/document/filetypes/file.png\" border=\"0\" alt=\"\" align=\"right\" width=\"40\" height=\"40\"/>\r\n             </a>\r\n		</xsl:otherwise>        \r\n	</xsl:choose>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(408,'Rubrique Document simple - Type Pdf','portlet_document_pdf.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n			<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n			<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n			<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n		<div class=\"{$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3>\r\n					<xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"portlet-name\" />\r\n				</h3>\r\n			</xsl:if>\r\n\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					&amp;nbsp;\r\n				</xsl:text>\r\n			</xsl:if>\r\n\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<div class=\"\">\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates select=\"document-xml-content/pdf\" />\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"pdf\">\r\n		<p>\r\n			<strong>\r\n				<xsl:value-of select=\"document-title\" />\r\n			</strong>\r\n		</p>\r\n		<p>\r\n			<xsl:value-of disable-output-escaping=\"yes\"\r\n				select=\"document-summary\" />\r\n		</p>\r\n		<p>\r\n			<xsl:choose>\r\n				<xsl:when test=\"pdf-file/file-resource!=\'\'\">\r\n					<a\r\n						href=\"document?id={pdf-file/file-resource/resource-document-id}&amp;id_attribute={pdf-file/file-resource/resource-attribute-id}\">\r\n						<img\r\n							src=\"images/local/skin/plugins/document/filetypes/pdf.png\" />\r\n					</a>\r\n				</xsl:when>\r\n				<xsl:otherwise></xsl:otherwise>\r\n			</xsl:choose>\r\n		</p>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(409,'Rubrique Document simple - Type Son','portlet_document_sound.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					&amp;nbsp;\r\n				</xsl:text>\r\n			</xsl:if>\r\n\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates\r\n					select=\"document-xml-content/sound\" />\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"sound\">\r\n		<p><strong><xsl:value-of select=\"document-title\" /></strong></p>\r\n		<p><xsl:value-of disable-output-escaping=\"yes\" select=\"document-summary\" /></p>\r\n		<p>\r\n		<xsl:choose>\r\n			<xsl:when test=\"sound-file/file-resource!=\'\'\">\r\n				<a href=\"document?id={sound-file/file-resource/resource-document-id}&amp;id_attribute={sound-file/file-resource/resource-attribute-id}\">\r\n					<img src=\"images/admin/skin/plugins/document/filetypes/audio.png\" />\r\n				</a>\r\n			</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</p>\r\n		<p>	<xsl:value-of disable-output-escaping=\"yes\" select=\"sound-author\" /></p>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(504,'Rubrique Document simple - Type BrÃ¨ve','portlet_document_shortarticle.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	\r\n		<xsl:variable name=\"device_class\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n			<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n			<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n			<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</xsl:variable>\r\n\r\n		<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3>\r\n					<xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"portlet-name\" />\r\n				</h3>\r\n			</xsl:if>\r\n\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					&amp;nbsp;\r\n				</xsl:text>\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<xsl:output method=\"html\" indent=\"yes\" />\r\n		<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n			<xsl:apply-templates select=\"document-xml-content/shortarticle\" />\r\n		</xsl:if>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"shortarticle\">\r\n		<p><strong><xsl:value-of select=\"document-title\" /></strong></p>\r\n		<p><xsl:value-of disable-output-escaping=\"yes\"	select=\"document-summary\" /></p>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(505,'Rubrique Document simple - Type Article','portlet_document_article.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n		<div class=\"{$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 class=\"\">\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h3>\r\n			</xsl:if>\r\n\r\n			<div class=\"portlet-content\">\r\n				<xsl:apply-templates select=\"document-portlet/document/document-xml-content/article\" />\r\n			</div>\r\n\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"article\">\r\n		<p>\r\n			<strong>\r\n				<xsl:value-of select=\"document-title\" />\r\n			</strong>\r\n		</p>\r\n		<p>\r\n			<xsl:choose>\r\n				<xsl:when test=\"article-attachment/file-resource!=\'\'\">\r\n					<xsl:apply-templates select=\"article-attachment/file-resource\" />\r\n				</xsl:when>\r\n				<xsl:otherwise></xsl:otherwise>\r\n			</xsl:choose>\r\n		</p>\r\n		<p>\r\n			<xsl:value-of disable-output-escaping=\"yes\" select=\"article-body\" />\r\n		</p>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"file-resource\">\r\n		<xsl:choose>\r\n			<xsl:when\r\n				test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\">\r\n				<img\r\n					src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"\r\n					align=\"right\" />\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<a\r\n					href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\">\r\n					<img\r\n						src=\"images/local/skin/plugins/document/filetypes/file.png\"\r\n						border=\"0\" />\r\n				</a>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n'),(506,'Rubrique Document simple - Type Image','portlet_document_image.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n		<div class=\"{$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 class=\"\">\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h3>\r\n			</xsl:if>\r\n\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					&amp;nbsp;\r\n				</xsl:text>\r\n			</xsl:if>\r\n\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<div class=\"\">\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates\r\n					select=\"document-xml-content/image\" />\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"image\">\r\n		<p>\r\n			<strong>\r\n				<xsl:value-of select=\"document-title\" />\r\n			</strong>\r\n		</p>\r\n		<p>\r\n			<xsl:value-of select=\"document-summary\" />\r\n		</p>\r\n		<xsl:choose>\r\n			<xsl:when test=\"image-file/file-resource!=\'\'\">\r\n				<img\r\n					src=\"document?id={image-file/file-resource/resource-document-id}&amp;id_attribute={image-file/file-resource/resource-attribute-id}\" />\r\n			</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n\r\n		<p>\r\n			<em><xsl:value-of disable-output-escaping=\"yes\"\r\n				select=\"image-credits\" /></em>\r\n		</p>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"file-resource\">\r\n		<xsl:choose>\r\n			<xsl:when\r\n				test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\">\r\n				<img\r\n					src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"\r\n					align=\"right\" />\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<a\r\n					href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\">\r\n					<img\r\n						src=\"images/local/skin/plugins/document/filetypes/file.png\"\r\n						border=\"0\" />\r\n				</a>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(507,'Rubrique Document simple - Type Video','portlet_document_video.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"{$device_class}\">\r\n		<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n		</xsl:if>\r\n		<xsl:apply-templates select=\"document-portlet/document\" />\r\n		<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n			<xsl:text disable-output-escaping=\"yes\">\r\n				&amp;nbsp;\r\n			</xsl:text>\r\n		</xsl:if>\r\n\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates select=\"document-xml-content/video\" />\r\n			</xsl:if>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"video\">\r\n		<p><strong><xsl:value-of select=\"document-title\" /></strong></p>\r\n		<p><xsl:value-of disable-output-escaping=\"yes\" select=\"document-summary\" /></p>\r\n		<p>\r\n		<xsl:choose>\r\n			<xsl:when test=\"video-file/file-resource!=\'\'\">\r\n				<a href=\"document?id={video-file/file-resource/resource-document-id}&amp;id_attribute={video-file/file-resource/resource-attribute-id}\">\r\n					<img src=\"images/admin/skin/plugins/document/filetypes/video.png\" />\r\n				</a>\r\n			</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</p>\r\n		<p><xsl:value-of disable-output-escaping=\"yes\" select=\"video-comments\" /></p>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(508,'Rubrique Liste de Documents - Type Flash','portlet_document_flash_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n    <div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n            <h3>\r\n                <xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n            </h3>\r\n        </xsl:if>\r\n	<div>\r\n            <ul>\r\n                <xsl:apply-templates select=\"document-list-portlet/document\" />\r\n            </ul>\r\n	</div>\r\n    </div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"document\">      \r\n<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n    <li>\r\n        <a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\" target=\"_top\"> \r\n            <xsl:for-each select=\"descendant::*\">   \r\n                <xsl:value-of select=\"document-title\" />\r\n            </xsl:for-each>    \r\n        </a>\r\n		<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n			<br />\r\n        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        <img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        </xsl:if>   \r\n        <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n			<br />\r\n			#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n		</xsl:if>\r\n        <br />\r\n        <xsl:for-each select=\"descendant::*\">           \r\n            <xsl:value-of select=\"document-summary\" />                 \r\n        </xsl:for-each>  \r\n        <br />            \r\n        <xsl:if test=\"(string(document-is-commentable)=\'1\')\">\r\n            Nombre de commentaires : <xsl:value-of select=\"document-comment-nb\" />      \r\n        </xsl:if>   \r\n    </li>\r\n</xsl:if>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n'),(509,'Rubrique Document simple - Type Flash','portlet_document_flash.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n		<xsl:variable name=\"device_class\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n			<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n			<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n			<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</xsl:variable>\r\n\r\n		<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3>\r\n					<xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"portlet-name\" />\r\n				</h3>\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					&amp;nbsp;\r\n				</xsl:text>\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<div>\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates\r\n					select=\"document-xml-content/flash\" />\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"flash\">\r\n		<h1><xsl:value-of select=\"document-title\" /></h1>\r\n		<p>\r\n			<xsl:value-of select=\"document-summary\" />\r\n		</p>\r\n		<p>\r\n			<xsl:choose>\r\n				<xsl:when test=\"(flash-object/file-resource/resource-content-type=\'application/x-shockwave-flash\')\">\r\n					<object \r\n						data=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" \r\n						type=\"application/x-shockwave-flash\" \r\n						width=\"{flash-width}\" \r\n						height=\"{flash-height}\"\r\n						align=\"{flash-align}\"\r\n						classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"\r\n						codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0\"\r\n					>\r\n						<param name=\"Autostart\" value=\"{flash-autostart}\" />\r\n						<param name=\"Quality\" value=\"{flash-quality}\" />\r\n						<param name=\"Loop\" value=\"{flash-loop}\" />\r\n						<param name=\"menu\" value=\"{flash-menu}\" />\r\n						<param name=\"allowScriptAccess\" value=\"samedomain\" />\r\n						<param name=\"movie\" value=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" />\r\n						<EMBED \r\n							src=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" \r\n							type=\"application/x-shockwave-flash\"\r\n							width=\"{flash-width}\" \r\n							height=\"{flash-height}\"\r\n							align=\"{flash-align}\"\r\n							quality=\"{flash-quality}\"\r\n							loop=\"{flash-loop}\"\r\n							menu=\"{flash-menu}\"\r\n							allowScriptAccess=\"samedomain\"\r\n							pluginspace=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\">\r\n						</EMBED>\r\n					</object>\r\n				</xsl:when>\r\n			</xsl:choose>\r\n		</p>\r\n		<blockquote>\r\n			<xsl:value-of disable-output-escaping=\"yes\" select=\"flash-credits\" />\r\n		</blockquote>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>'),(510,'Rubrique Liste de Documents - DÃ©faut Download','portlet_document_list_download.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n	<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3>\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n        </xsl:if>\r\n		<div>\r\n		     <ul>\r\n         	       <xsl:apply-templates select=\"document-list-portlet/document\" />\r\n             </ul>  \r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"document\">      \r\n<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n    <li>\r\n        <a href=\"document?id={document-id}&amp;id_attribute=48\" target=\"_blank\">      \r\n        	<xsl:for-each select=\"descendant::*\">\r\n                <xsl:apply-templates select=\"file-resource\" />\r\n           </xsl:for-each>  \r\n          	<xsl:for-each select=\"descendant::*\">\r\n                <xsl:value-of select=\"document-title\" />\r\n           </xsl:for-each>  \r\n        </a>\r\n		<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n			<br />\r\n        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        <img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        </xsl:if>    \r\n        <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n			<br />\r\n			#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n		</xsl:if>\r\n		<br />\r\n	    <xsl:for-each select=\"descendant::*\">\r\n        	<xsl:value-of select=\"document-summary\" />\r\n        </xsl:for-each>\r\n    </li>\r\n</xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"file-resource\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\">\r\n			<img src=\"images/local/skin/plugins/document/filetypes/image.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\"/>\r\n		</xsl:when>\r\n		<xsl:when test=\"(resource-content-type=\'application/pdf\')\">\r\n			<img src=\"images/local/skin/plugins/document/filetypes/pdf.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\" />\r\n		</xsl:when>\r\n		<xsl:when test=\"(resource-content-type=\'application/msword\' or resource-content-type=\'application/vnd.oasis.opendocument.text\')\">\r\n			<img src=\"images/local/skin/plugins/document/filetypes/text.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\" />\r\n		</xsl:when>\r\n		<xsl:when test=\"(resource-content-type=\'application/excel\' or resource-content-type=\'application/vnd.ms-excel\' or resource-content-type=\'application/vnd.oasis.opendocument.spreadsheet\')\">\r\n			<img src=\"images/local/skin/plugins/document/filetypes/spreadsheet.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\" />\r\n		</xsl:when>\r\n		<xsl:otherwise>\r\n		   <img src=\"images/local/skin/plugins/document/filetypes/file.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\"/>\r\n		</xsl:otherwise>        \r\n	</xsl:choose>\r\n</xsl:template>              \r\n\r\n</xsl:stylesheet>'),(9004,'Rubrique Liste de documents - Type VidÃ©o','portlet_document_video_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-xs</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-sm</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-md</xsl:when>\r\n		<xsl:when test=\"string(display-on-xlarge-device)=\'0\'\">hidden-lg</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h2>\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h2>\r\n        </xsl:if>\r\n		<ul>\r\n			<xsl:apply-templates select=\"document-list-portlet/document\" />\r\n        </ul>  \r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n    <li>\r\n        <a href=\"{$site-path}?document_id={document-id}&amp;portlet_id={$portlet-id}\" target=\"_top\">      \r\n             <xsl:value-of select=\"document-xml-content/video/video-title\" />   \r\n		</a>\r\n       	<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n			<br />\r\n        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        <img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        </xsl:if>   \r\n       <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n			<br />\r\n			#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n		</xsl:if>\r\n		<br />\r\n        <xsl:value-of select=\"document-xml-content/video/video-file\" />\r\n    </li>\r\n</xsl:if>\r\n</xsl:template>              \r\n\r\n</xsl:stylesheet>');
/*!40000 ALTER TABLE `core_stylesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_template`
--

DROP TABLE IF EXISTS `core_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_template` (
  `template_name` varchar(100) NOT NULL,
  `template_value` mediumtext,
  PRIMARY KEY (`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_template`
--

LOCK TABLES `core_template` WRITE;
/*!40000 ALTER TABLE `core_template` DISABLE KEYS */;
INSERT INTO `core_template` VALUES ('core_account_reactivated_mail','Bonjour ${first_name} ! Votre compte utilisateur a bien Ã©tÃ© rÃ©activÃ©. Il est dÃ©sormais valable jusqu\'au ${date_valid}.'),('core_expiration_mail','Bonjour ${first_name} ! Votre compte a expirÃ©. Vous ne pourrez plus vous connecter avec, et les donnÃ©es vous concernant ont Ã©tÃ© anonymisÃ©es'),('core_first_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive Ã  expiration. Pour prolonger sa validitÃ©, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera dÃ©sactivÃ©.'),('core_other_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive Ã  expiration. Pour prolonger sa validitÃ©, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera dÃ©sactivÃ©.'),('core_password_expired','Bonjour ! Votre mot de passe a expirÃ©. Lors de votre prochaine connexion, vous pourrez le changer.');
/*!40000 ALTER TABLE `core_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_text_editor`
--

DROP TABLE IF EXISTS `core_text_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_text_editor` (
  `editor_name` varchar(255) NOT NULL,
  `editor_description` varchar(255) NOT NULL,
  `backOffice` smallint(6) NOT NULL,
  PRIMARY KEY (`editor_name`,`backOffice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_text_editor`
--

LOCK TABLES `core_text_editor` WRITE;
/*!40000 ALTER TABLE `core_text_editor` DISABLE KEYS */;
INSERT INTO `core_text_editor` VALUES ('','portal.globalmanagement.editors.labelFrontNoEditor',0),('','portal.globalmanagement.editors.labelBackNoEditor',1),('markitupbbcode','portal.globalmanagement.editors.labelFrontMarkitupBBCode',0),('tinymce','portal.globalmanagement.editors.labelBackTinyMCE',1);
/*!40000 ALTER TABLE `core_text_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_password_history`
--

DROP TABLE IF EXISTS `core_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_password_history` (
  `id_user` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_password_change` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`,`date_password_change`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_password_history`
--

LOCK TABLES `core_user_password_history` WRITE;
/*!40000 ALTER TABLE `core_user_password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_preferences`
--

DROP TABLE IF EXISTS `core_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_preferences` (
  `id_user` varchar(100) NOT NULL,
  `pref_key` varchar(100) NOT NULL,
  `pref_value` mediumtext,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_user_preferences` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_preferences`
--

LOCK TABLES `core_user_preferences` WRITE;
/*!40000 ALTER TABLE `core_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_right`
--

DROP TABLE IF EXISTS `core_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_right` (
  `id_right` varchar(255) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_right`,`id_user`),
  KEY `index_user_right` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_right`
--

LOCK TABLES `core_user_right` WRITE;
/*!40000 ALTER TABLE `core_user_right` DISABLE KEYS */;
INSERT INTO `core_user_right` VALUES ('CORE_ADMINDASHBOARD_MANAGEMENT',1),('CORE_ADMIN_SITE',1),('CORE_CACHE_MANAGEMENT',1),('CORE_DAEMONS_MANAGEMENT',1),('CORE_DASHBOARD_MANAGEMENT',1),('CORE_EXTERNAL_FEATURES_MANAGEMENT',1),('CORE_FEATURES_MANAGEMENT',1),('CORE_GLOBAL_MANAGEMENT',1),('CORE_LEVEL_RIGHT_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',1),('CORE_LOGS_VISUALISATION',1),('CORE_MAILINGLISTS_MANAGEMENT',1),('CORE_MODES_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',1),('CORE_PLUGINS_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',1),('CORE_RBAC_MANAGEMENT',1),('CORE_RIGHT_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',1),('CORE_SEARCH_INDEXATION',1),('CORE_SEARCH_MANAGEMENT',1),('CORE_STYLESHEET_MANAGEMENT',1),('CORE_STYLES_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',1),('CORE_WORKGROUPS_MANAGEMENT',1),('CORE_XSL_EXPORT_MANAGEMENT',1),('DOCUMENT_CATEGORY_MANAGEMENT',1),('DOCUMENT_MANAGEMENT',1),('DOCUMENT_RULES_MANAGEMENT',1),('DOCUMENT_TYPES_MANAGEMENT',1),('CORE_ADMIN_SITE',2),('CORE_EXTERNAL_FEATURES_MANAGEMENT',2),('CORE_LINK_SERVICE_MANAGEMENT',2),('CORE_PAGE_TEMPLATE_MANAGEMENT',2),('CORE_PROPERTIES_MANAGEMENT',2),('CORE_ROLES_MANAGEMENT',2),('CORE_SEARCH_INDEXATION',2),('CORE_SEARCH_MANAGEMENT',2),('CORE_USERS_MANAGEMENT',2),('CORE_WORKGROUPS_MANAGEMENT',2),('DOCUMENT_MANAGEMENT',2),('DOCUMENT_RULES_MANAGEMENT',2),('DOCUMENT_MANAGEMENT',3),('DOCUMENT_MANAGEMENT',4);
/*!40000 ALTER TABLE `core_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_role`
--

DROP TABLE IF EXISTS `core_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_role` (
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_role`
--

LOCK TABLES `core_user_role` WRITE;
/*!40000 ALTER TABLE `core_user_role` DISABLE KEYS */;
INSERT INTO `core_user_role` VALUES ('all_site_manager',1),('all_site_manager',2),('content_contributor',1),('content_contributor',2),('content_contributor',3),('content_publisher',1),('content_publisher',2),('content_validator',1),('content_validator',2),('content_validator',4),('manage_spaces',1),('manage_spaces',2),('manage_spaces',5),('super_admin',1),('super_admin',2),('view_spaces_all',1),('view_spaces_all',2),('view_space_validation',4),('view_space_work',3);
/*!40000 ALTER TABLE `core_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_xsl_export`
--

DROP TABLE IF EXISTS `core_xsl_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_xsl_export` (
  `id_xsl_export` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `plugin` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_xsl_export`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_xsl_export`
--

LOCK TABLES `core_xsl_export` WRITE;
/*!40000 ALTER TABLE `core_xsl_export` DISABLE KEYS */;
INSERT INTO `core_xsl_export` VALUES (125,'Coeur - Export CSV des administrateurs','Export des utilisateurs back office dans un fichier CSV','csv',125,'core'),(126,'Coeur - Export XML des administrateurs','Export des utilisateurs back office dans un fichier XML','xml',126,'core');
/*!40000 ALTER TABLE `core_xsl_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id_document` int(11) NOT NULL DEFAULT '0',
  `code_document_type` varchar(30) DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  `id_space` int(11) DEFAULT NULL,
  `id_state` int(11) DEFAULT NULL,
  `xml_working_content` mediumtext,
  `xml_validated_content` mediumtext,
  `document_summary` mediumtext,
  `document_comment` mediumtext,
  `date_validity_begin` timestamp NULL DEFAULT NULL,
  `date_validity_end` timestamp NULL DEFAULT NULL,
  `xml_metadata` mediumtext,
  `id_creator` int(11) DEFAULT NULL,
  `id_mailinglist` int(11) NOT NULL DEFAULT '0',
  `id_page_template_document` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_document`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (1,'image','2017-04-29 17:22:51','2017-04-29 17:22:51','asd',6,1,'<image>\r\n<document-id>1</document-id>\r\n<document-title><![CDATA[asd]]></document-title>\r\n<document-summary><![CDATA[asd]]></document-summary>\r\n<document-date-begin>29/04/2017</document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>1</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>115858</file-size>\r\n</image-file>\r\n<image-credits>asd</image-credits>\r\n<image-htmltitle><![CDATA[<p>asd</p>]]></image-htmltitle>\r\n</image>\r\n',NULL,'asd','','2017-04-29 05:00:00',NULL,'<metadata>\r\n<creator>Mairie de Paris</creator>\r\n<subject>lutece;portal;xml;java</subject>\r\n<publisher>Mairie de Paris</publisher>\r\n<format>text/html</format>\r\n<language>fr</language>\r\n<rights>Copyrights (c) Mairie de Paris</rights>\r\n</metadata>\r\n',1,0,0),(2,'pdf','2017-04-29 20:10:18','2017-04-29 20:10:18','pdf',8,1,'<pdf>\r\n<document-id>2</document-id>\r\n<document-title><![CDATA[pdf]]></document-title>\r\n<document-summary><![CDATA[pdf]]></document-summary>\r\n<document-date-begin>29/04/2017</document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<pdf-file><file-resource>\r\n<resource-document-id>2</resource-document-id>\r\n<resource-attribute-id>48</resource-attribute-id>\r\n<resource-content-type>application/pdf</resource-content-type>\r\n</file-resource>\r\n<file-size>99135</file-size>\r\n</pdf-file>\r\n</pdf>\r\n',NULL,'pdf','','2017-04-29 05:00:00',NULL,'<metadata>\r\n<creator>Mairie de Paris</creator>\r\n<subject>lutece;portal;xml;java</subject>\r\n<publisher>Mairie de Paris</publisher>\r\n<format>text/html</format>\r\n<language>fr</language>\r\n<rights>Copyrights (c) Mairie de Paris</rights>\r\n</metadata>\r\n',1,0,0);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_attr_type`
--

DROP TABLE IF EXISTS `document_attr_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_attr_type` (
  `code_attr_type` varchar(30) NOT NULL DEFAULT '',
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(255) DEFAULT NULL,
  `manager_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code_attr_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_attr_type`
--

LOCK TABLES `document_attr_type` WRITE;
/*!40000 ALTER TABLE `document_attr_type` DISABLE KEYS */;
INSERT INTO `document_attr_type` VALUES ('date','document.attributeType.date.name','document.attributeType.date.description','fr.paris.lutece.plugins.document.service.attributes.DateManager'),('file','document.attributeType.file.name','document.attributeType.file.description','fr.paris.lutece.plugins.document.service.attributes.FileManager'),('image','document.attributeType.image.name','document.attributeType.image.description','fr.paris.lutece.plugins.document.service.attributes.ImageFileManager'),('internallink','document.attributeType.internallink.name','document.attributeType.internallink.description','fr.paris.lutece.plugins.document.service.attributes.InternalLinkManager'),('listbox','document.attributeType.listbox.name','document.attributeType.listbox.description','fr.paris.lutece.plugins.document.service.attributes.ListBoxManager'),('multiline','document.attributeType.multiline.name','document.attributeType.multiline.description','fr.paris.lutece.plugins.document.service.attributes.MultilineManager'),('numerictext','document.attributeType.numerictext.name','document.attributeType.numerictext.description','fr.paris.lutece.plugins.document.service.attributes.NumerictextManager'),('richtext','document.attributeType.richtext.name','document.attributeType.richtext.description','fr.paris.lutece.plugins.document.service.attributes.RichTextManager'),('text','document.attributeType.text.name','document.attributeType.text.description','fr.paris.lutece.plugins.document.service.attributes.TextManager'),('url','document.attributeType.url.name','document.attributeType.url.description','fr.paris.lutece.plugins.document.service.attributes.UrlManager');
/*!40000 ALTER TABLE `document_attr_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_attr_type_parameter`
--

DROP TABLE IF EXISTS `document_attr_type_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_attr_type_parameter` (
  `code_attr_type` varchar(50) NOT NULL DEFAULT '',
  `parameter_name` varchar(255) DEFAULT NULL,
  `parameter_label_key` varchar(255) DEFAULT NULL,
  `parameter_index` int(11) NOT NULL DEFAULT '0',
  `parameter_description_key` varchar(255) DEFAULT NULL,
  `parameter_default_value` mediumtext NOT NULL,
  PRIMARY KEY (`code_attr_type`,`parameter_index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_attr_type_parameter`
--

LOCK TABLES `document_attr_type_parameter` WRITE;
/*!40000 ALTER TABLE `document_attr_type_parameter` DISABLE KEYS */;
INSERT INTO `document_attr_type_parameter` VALUES ('date','defaultvalue','document.attributeType.date.parameter.defaultvalue.label',1,'document.attributeType.date.parameter.defaultvalue.description',''),('date','currentdate','document.attributeType.date.parameter.currentdate.label',2,'document.attributeType.date.parameter.currentdate.description',''),('file','extension','document.attributeType.file.parameter.extension.label',1,'document.attributeType.file.parameter.extension.description','docx,xlsx,pdf'),('image','extension','document.attributeType.image.parameter.extension.label',1,'document.attributeType.image.parameter.extension.description','jpg,jpeg,png'),('listbox','value','document.attributeType.listbox.parameter.defaultvalue.label',1,'document.attributeType.listbox.parameter.defaultvalue.description',''),('listbox','items','document.attributeType.listbox.parameter.items.label',2,'document.attributeType.listbox.parameter.items.description',''),('numerictext','size','document.attributeType.numerictext.parameter.size.label',1,'document.attributeType.numerictext.parameter.size.description','5'),('numerictext','maxlength','document.attributeType.numerictext.parameter.maxlength.label',2,'document.attributeType.numerictext.parameter.maxlength.description','5'),('text','size','document.attributeType.text.parameter.size.label',1,'document.attributeType.text.parameter.size.description','50'),('text','maxlength','document.attributeType.text.parameter.maxlength.label',2,'document.attributeType.text.parameter.maxlength.description','60');
/*!40000 ALTER TABLE `document_attr_type_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_auto_publication`
--

DROP TABLE IF EXISTS `document_auto_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_auto_publication` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `id_space` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_portlet`,`id_space`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_auto_publication`
--

LOCK TABLES `document_auto_publication` WRITE;
/*!40000 ALTER TABLE `document_auto_publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_auto_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_category`
--

DROP TABLE IF EXISTS `document_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_category` (
  `id_category` int(11) NOT NULL,
  `document_category_name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon_content` mediumblob,
  `icon_mime_type` varchar(100) DEFAULT NULL,
  `workgroup_key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_category`
--

LOCK TABLES `document_category` WRITE;
/*!40000 ALTER TABLE `document_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_category_link`
--

DROP TABLE IF EXISTS `document_category_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_category_link` (
  `id_document` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id_document`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_category_link`
--

LOCK TABLES `document_category_link` WRITE;
/*!40000 ALTER TABLE `document_category_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_category_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_category_list_portlet`
--

DROP TABLE IF EXISTS `document_category_list_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_category_list_portlet` (
  `id_portlet` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id_portlet`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_category_list_portlet`
--

LOCK TABLES `document_category_list_portlet` WRITE;
/*!40000 ALTER TABLE `document_category_list_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_category_list_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_category_portlet`
--

DROP TABLE IF EXISTS `document_category_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_category_portlet` (
  `id_portlet` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id_portlet`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_category_portlet`
--

LOCK TABLES `document_category_portlet` WRITE;
/*!40000 ALTER TABLE `document_category_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_category_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_content`
--

DROP TABLE IF EXISTS `document_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_content` (
  `id_document` int(11) NOT NULL DEFAULT '0',
  `id_document_attr` int(11) NOT NULL DEFAULT '0',
  `validated` smallint(6) NOT NULL DEFAULT '0',
  `text_value` mediumtext,
  `mime_type` varchar(255) DEFAULT NULL,
  `binary_value` mediumblob,
  PRIMARY KEY (`id_document`,`id_document_attr`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_content`
--

LOCK TABLES `document_content` WRITE;
/*!40000 ALTER TABLE `document_content` DISABLE KEYS */;
INSERT INTO `document_content` VALUES (1,43,0,'boton.png','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0À\0\0\à\0\0\0j\å„\0\0\0IDATx\Ú\ìıy”m\ÍU\î\ß>÷f\æ¾O’@`\æÁ€\İ\ËeWUƒmº\Ü.»\n[€…\Åd»„‘…dmŠj¯®Õ½ªÿğªZ«k\èvU\ã¦Ì¤’l3\Ì`…)[P`#!¡šõ\r\ï½\Ì{ö¯ÿ¸÷f\ŞsNœˆ\Ø\'\â\Ü\Ì|\ß	È¥\ïe\Ş{NÄ;öø\Û\"\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,c\ËX\Æ2–±Œe,cl`!ÁB‡e,c\ËX\Æ2–±Œe,cÏ‰Á\Åğ{­“\"òš¯ıZ}÷\ÛŞ†/1ı\ÓÚ¾â•¯\ä\Â\ËX\Æ2–±Œe,c\ËX\Æ2v\Ñ\ßx\ãa\ç\ï\èw«\ÊK?\áø­\ßğ\r†çü¸\ZÀx\ãûo¿\\?ù“?\ßğ\r\ß\Ğ\æ|\çÿş_}öê©Ÿz¢y\ê\ãeu\çı÷t±Š—±Œe,c\ËX\Æ2–±Œe\ÜF#\ïÁŸ±\'~]6O|öS\íÿğ\ßş\Ô&Ç¸ıÚ¯ı\Ú\æ-oy;şÌŸù{\å+\å±>.0\Ş(‚¿ıò—\ë\'|\Ì\Çğ¿ñ\ïşŸ~\îÙƒ—\ÜyQóP>\ÙVú)­ğUğ±bòQ¹·9o\ïo„÷\Ú»§M{_ˆ“%1z\ËX\Æ2–±Œe,c\ËXÆ­ğ\Ü\Ú\æ\éf­Ï¬Ï¬Nš§\Å\äQù€	\ß\ÑŞªû\ÕöL\Şr\ç·¼÷¯ş\è?|\Ø\Ì\×|\Í\×4o{×»ğg~\à\ì•òxÄ·\Ú\Ä{£ˆ~\ç+^¡?ø}ß·9üış#tõ;?\â\î\'˜®>G€\ßw±¹øŒv\ÃO±¶ıH\ÜY¯W²jVB31R(”\íÿSH1[\Í2–±Œe,c\ËX\Æ2–±Œ[:TDDU\0Dvÿ«€@U6\íF..6\"”\Ú4¿Õ¬ğ«\ë\Õú…üYµÍÿ\Òû}\Û?û\'ÿ¸cg}Á+^±ú²\ïû>{¥\Ü^s\é6\ZÀx\Å+^\Ñ|\ß÷}_{\èøš?õòO4i>ç¼µ\Ïj7\íç˜µŸ¾Z­NW+•MK1kÅŒBRÄ¬5€\Û\Â`\"b{Z¨Š. X\ËX\Æ2–±Œe,c\ËX\Æ2nù0Š\Ù\Ş &ED\0RD”„¨6\0D¢\ÚÈªl6&›\Í\æ‘jó\æf\ÕüøI£?­\Òşø7~\Ç¼5e“-p\ÅñM\ßô\íú³?û\ãø¦oú¦ö\Ê\èıÓŸx!\ç/·Ö¾p\Ónş\n\ÜiV*›IÛ¶Ò¶­‰ª©L†\íb\à.c\ËX\Æ2–±Œe,c\Ëx®\î\re5£©RÌ´i\ZmšFV+•vcb\äƒU³ú—\Ú\è÷¯\å\ä¾ñ;şÎ¥1üº×½®ù}¿\ïsøº\×}ù­ˆ\n\ßxCğµ¯ıºæ›¿ù\ë\r\Øn\ÎW~ñ—¼¨YµŸo&ò|óè®š\Õ]Rd³\ÙHÛ¶¦ªffªªX\İe,c\ËX\Æ2–±Œe,c\Ëğ\ÆfÆ½m\Õ4®V+D6\í\æÙ“\Õ\é?V•¿\Ûnšú¶\ïù\î÷Šˆ‚?ÿ\ç¿N¿\å[¾¾½\É»©\"¾\î\ë¾N¿ş\ë¿\Şö^‰W}\á—|\Öjõ\èµÖ¾\\uõ\"ˆ\È\Åf#l\Û-Uu1x—±Œe,c\ËX\Æ2–±Œe,£¾A,¶Í¥F\Ó4\ë\ÕJ¶\ĞI›÷®µù\Í\æô[\Şğı\ßı\Óc¶\Üb\0G\Æ\×|\İ\×5\ßøõW^ƒÿü?ûS\äÙ‹óÿ\Ë\Å\æü\å\ë\ÕZ\Ï\Ï\ÏeÓ¶¦\"\\Œ\Şe,c\ËX\Æ2–±Œe,c\Ë8¾1l\"X5œœ\È\Å\æ\ÂÖ«“¸»>ùÿıÕ¿õÿdÌ¶[\àƒñzİˆÈŸ\ß!Š}\Íö§¾ğ\â\â\Ñ×´mûŸˆB\Î\Ï/DD6\"\Ò,F\ï2–±Œe,c\ËX\Æ2–±Œe\Ü\0cX¤‘\Õ\É\ÉZ\Ä(M\Óü£õúô¿ño}\Ç÷‹ˆ|³ˆ®D\ä\Õ79ú&’x\İ_øúMí¯µ\"\"_õ\Ê/ş\ã\íyûÿ¤ğ¶F9¿¸˜µK´w\ËX\Æ2–±Œe,c\ËX\Æ2n¨!¼-\ZnN\ÖkiÁÿÖœ4ÿ¯¿ş\Æ\ïùû\"\"¯û¡ù¦¿ö×®=-úZ\r\Ê\×}\ÕW5\ßô\×ÿz+\"ò\Ú/ı¿\ÓDÿk\Z¿ŒByô\èœ*b¢\Ú,ü´Œe,c\ËX\Æ2–±Œe,c·`˜µ&¢§§\'€@ øNûK\ßò]\ï—ú6\às\É\0\Æÿò†7\àÏ½\êUögÿ¸³ş¸ÿ\íFşK…¼\àü\â‚b4Q,†\ï2–±Œe,c\ËX\Æ2–±Œe\ÜJC˜­(ôd½†Q>Ğ¬\äÿsñö÷ü•¿ù“?ñ\ày\ÃôÏ½\êU”kˆ\İ\0~\ÃŞ ¯zÕ«LD\ä+¾\äş¸Šş·\à\ß{tq±Et^\"¾\ËX\Æ2–±Œe,c\ËX\Æ2–ñ˜\ÂÖ¢iš\ÓõZZ\áÏ™\Øõ7¾ûÿ~\ß6|,\r\à×¼\æ5Í·~ë·¶_øŠ/ºû+û\ïEøµmk²9?_j|—±Œe,c\ËX\Æ2–±Œe,\ãñ3[œ4M£\"‚ox\ßFÿ\ßÿ}\ßû\ì\ŞF<\ÖDm\ÅW}õW7\ßü\Í\ßÜ¾ò\å/û=O4ò=\0^ñ\èü\Ü6›\r±ú.\Æ\ï2–±Œe,c\ËX\Æ2–±Œe<~\èf³13\ãºi>û´ôw}\Ú\'ÿ«7ü\ï|÷W}õW7ozÓ›4‘™\ÇaXûµ_ú\'_½i\ÛÿI€\ç=º¸Ø¨\Èj\á…e,c\ËX\Æ2–±Œe,c\Ëx\îÙœ®\×+!?´jš¿ø-\ßõw_ß·o¥ü•¯yMóm\ßú­\í+ÿ\ìW\Ü?}öƒ_\ß4xõƒGK­\ï2–±Œe,c\ËX\Æ2–±Œe<·­\àmmğÓµ´-_ÿ\è\îó¿\îóo<½·!oü\ç_÷ºæ›¿\é›\ÚW\Ş\çÿöT¾kİ¬~ÿÃ‡—Z\ße,c\ËX\Æ2–±Œe,c\ËX†È®6ø\ìì¬¹h7?\Ù<’/}ıÿ\Ğ;÷¶\ä­1€ÿø\Ë^¶úû?ò#›/ÿŸû«õ\é÷5\r>ı\ÙÕ›Ÿòl&\"b+.c\ËX\Æ2–±Œe,cË¸\Õc{¼ù\ÃL6w\ï¬Wm\Ë7o.½\â\Ûÿ\Ş?üÅ½My\ã\r\à—½\ìóV?ò#?¼ù\Ê/úŸM•\ï¥\ÉG?:?oõ†¤<›\Ù!Gˆ0vÿ\r…`	R/c\ËX\Æ2–±Œe,cË¸¥\ÃhB£·­vI\nÉ½=Ä|cŒ3kOON\Z¨üL¾\èÛ¾÷\ïı\ÔŞ¶¼±ğ{\Ù\ç­şÁüğ\æµ_ú\'_Ö¶\í\ß6\ãó\Î7›V\Í5r»ÁªX©Êªi¤Y5\Ò@Å¬•Mk\Ü\Åm+\ç\ç\çòğü\Â@n–c³Œe,c\ËX\Æ2–±Œe,\ã¶\rˆH³nš“““\æt½DlšFš•ª˜\È\ÆZ\Ùl6Ò¶vi3]·Al\ÆödµjTñ¡¦işÌ·|\×\ßı‘½y\ã\à×¿\ìóV¯ş‘\Ş|\å—}\á—Zkol7\ízcf\n\èñ	·5hUUÖ«•œœ¬…frŞ¶öÔ‡ºxÿ‡Ÿ:\æÁ³\Í?ôTûÁøÑ³\Îi¶Ñ‹\r!bl[\Z)\\‚À\ËX\Æ2–±Œe,c\ËX\Æ2nÕ \Èu	X	TUEW¬W\íw\ï\ÉG¼ğùw\îß»\Ç\çİ¿ß¾ğyO\Ü999Y¯šfuÑ¶¸¸¸™ˆwY²G·ˆŒ´•ª6«\æB}\å·}\ç÷\×\ŞÖ¼1ğû¼\Ï[ıƒş\á\ÍW~\é¼L÷|Ó®ÍŒ8²ñkf„*NV+999‘v³iŸz\æÙ‹\ß|\Ï{\Ï\ßı÷¶¿ñ\Û\ï\Ù<û\à¡\Ù\îÖÕªŠŠ\ê6\r\0P`1|—±Œe,c\ËX\Æ2–±Œe\Üò±naL6fbÛœh®\×ò/|òüc?\ê¥\'ó\âñ…/x\Şı\Õj}Ú¶\í\é\Ãósi\ÛV\ä\Z\"\Ã$MUq²j.Dù\'¿\í»~ğGö6\çµÀû\â\ä¯ü¢/ølŠşÃ‹vó¤™\Ù1_3“\Õj%§\'\'¢@û\ÔSO?úµw½\ë\Ñ[\ŞşGø\àSº\Ùî¼¬\Z¬V«}®;ûŒq\ÇbŠ/cË¸\ícV9Æ…¾\ËX\Æ2=k\Ï\Í\Ë\år–\n!¯ş\ÍFD\Ú\0«\È.4¼\å³m\êóf³Á\ÆØŠ\È\æşÓ‹O|\éK|Ú§~\Âú\Å/|\ÑóL\ìy\íú\â\âB\ì\ÈQ\á¬\ëfõaˆ}\î·}\ïşT\r`¬¢É¿\êU¯j\Şğ†7´_ùÅŸÿ;IıgF{\éù¦=Z\Úó\Şğ=;9cû\à\ï~\ÏÓ¿ò\ëo½xû»Ô•¢Yœpµ3x†.nı\ÙãµŸ\ì\åb©CB•oó\n\ÎBÁJ,g¸”ù\Ëb\Z^Ç‰Zxñ:i\Æ\Û\Æu7Y\áÂ‹7|\ØVv\ß\Z\ZòÀ0ˆ\Ğ|lô{@`3\Ã\Æ\ç\ç\"\"^üü\'ş\ÌOş¤‡Ÿò‰Ÿpzzºş˜.<¿¸\Ñ6\ÒNV*ôİ€ı\áoûú¥½\rzt†$	\0ü³_ô¹\İğ\äŸğ©\ç\ç­\íù\Òğ=;Û´Oÿ\ê\Û\ßù\ÔÏ¿ù—\Ú|\è\é\"\ëÓ“i\Z\0,ˆ\î^\ëa\å\ìY\à[rg\àZxg1€—q#\ïÿ[\Èx\Ì#|c¹Kn\Üı»À‹ü:¿ä­¦#8J!\Zm!b\06€0e\ï\rb3\Óó‹\r6mÛ®T?ô»>ù“\Şûşßµ¾{vöñO=|ø¢ó‹‹\í;±\Çf\íú\ä¤òWZœÿŸÿ\æ÷ş\Ã\ß\ØÛ¢S\×L<ºø¿ø\Åxò\î½{gf?¤«\æ÷\\\\l6¬\æ]»\0\îİ¹#M£|\Ë[\ßş\Ûÿ\ä§şÕƒ7ÿÚ¯¯\ÛM{r\ç\ì´99YóÀH\î^¶¼5uq.\Ñß…¯K„,t+÷ ,4\\\ÎğB³\Åø]xq\×BÃ	’\r\ÉUK®…Òˆ\È\Şp5„w6OVj\ëõ\Z¢¸÷®\ß~\ÏGüü/ıŠ<û\ì³oûÄ—¾ô\í÷\ï\İ;\Ùl6O´­	\0›u¯5³\Íj½z±´øƒŸô»\Ïwşú{~{ó~\äG\ä¿>’Œú¹Ÿ\Û|\Û7|Cû|\Ê\Ç~\Ó\É\é\é\ç?xøhƒy_’\Ä\Ù\Ùîœœ<x\×o½\ç]?úc?ñ\ì¿ûµ·\İi7\íÙ³S4Ú\Â£÷\ÆV>oX^Ó¾\Ğ\à\Ø|¸¸–ó»¿5\Ï\Çı}\Î0\Z\ÊB\Ì\ç\Ìù\åcL\Ç\0R³7ˆ·z&¸‹\nc„Q€g\ëµ¸÷®\ß~\ïGş\Ü/ş²¢µ÷\éŸü	¿Aò%³£\ÉÎ°k\ßõ\âb³9==ù8}ô\ÌGÿÿ\ßoøşú¹Ÿ»zû[\Ş\â\Ş6·üš×¾¶ùş\ïú®ö5_üò?wrrú—<z´\ĞÌµX3RUq\çÎ©µ›‹wı‹õ¦÷ş\ä\ÏıÛ»›vskø\ê™\n·û\Â]¢¿Ë±D^\\\èv{	¸\Ğp\áÅ…f·W¥Yø\î¹JG>gh’«Vd\İ\Ö\ÇS£¹‹Ÿ­×­(\î¿\íİ¿ù±¿ğ+¿ú\Ì\'}\ÌG¾\é¥/~ñ\Å\Ãó‹\Ü\â \Ï\r€MÛ¶w\ï\Üı}¿÷3>\í\í\ßÿƒ?ü³¯y\ík›ŸıÙŸ\ålDı+\ßò-ú_¼öµö•_ø…¿»]\ÛO´í½–\Ä\\¹\ß$¹^¯q\çtıÁ_y\Ë\Û\Şù/~ö\ç\ï>º\Ø<\ï\îB”œ\'I¿Z.\Å\0~N^¼//Å…5ˆ¸\Ôş.÷\É\íW˜—\Ú\ß\ÇÚ²ZôÁÀñ9IC\00Uœ+‹®L\ä\áùùé¦µŸñ‰û¿¿üü\ág>ø\ìƒ?ü\Ô\ÓO\Ä.²<OpT„\rÀf\İ<\Ó\\\èø¶\ïÿş»·QsŸ¡¦@Û¶òµ_ğ\'\în`o\0\å	¶\í\\…\Ï$)w\ÎN±R¼ıG\ì\'\ßùúg^,‚\çß»sfB\Ìeü\Ş~A¿D\ãw\ËX\Æbü.\ÊóB³E\'Z\ÆÂ‹\ró\í.´­¶­‘ÔŒ\ã#qg½~t÷ôdõ‹o}\Çÿ\é¯ş\Í\ïø´ö\Ù?ô\Ò½ğT}q\íÉªØ¶\å‰\r\ì\r_û\ânÛ¶.\ì’\ì\è_y\Íkšÿñ¿ùo\ì\Ó>óÿ§“õú^\\\ÌR÷k[\îß½ó\è©?ı\æ\ïÿGÿ¬ı\Í÷}\à£\î\İ9\Ã\Ê\Ëa½\ÑW\É\"ğ®Á\0^F).j\Ö%\Ş+g>,|´\Ü\'·^a^jSş9t~Ÿ\Ã\Ñ\ß>\Z\nì­\Ò: §\ëõùùfó\âŸù\Å_ú¸“\Õú§\ï§\Ê;?ø\ìƒO\á6%º~]0 ³\Í\ézõ;\æ£\çı\å¿üW~\äW^óš\æ\ßd¦BgÀ_õ\Õ_\İü/\ßü\Í\íW¾\âelµ>û«\ç\ç\ç-¶ß­º3c£Š\'\ï\Şığ¯¼õm¿øƒÿü\Ç_Ğ’q\çô´\İyğ8\Ö\Ç@<.\ÊJ¥S½\Ğ`\áÅ…n·”€ø\ÕÂ‹\Ëù]è¸Œ…†·› ¹\Â65:«\×.Ep\Ò\èÚ¬õ\ïüô·¿ó]\ïü£Ÿõ\ïÿ\Ä\Ó\Ï?e³Ùœ\ÎQX\Û\Ú\é\é\Ùgÿ¾\ßùI?ı7ÿ\Öwş\ÊW}õW7ozÓ›Xƒ°üß¾øK\Î~«}öM6Ÿq~~nº\ï˜\\\Ñø]¯V¸w\ï\îûÿ\åÿşso{\Ó/üòGŸ¬O\×MsÑ’x.\ÖùÓŸù\Ø\Óğ1‘uKúó\Ñùp¡\âş[¨°À5\ÎÇ‚şü(Ë¼m\\w“õ˜ıù\ÆK¹%úœ€ÍºÑ‡òPyúÁ\Ãû/|\â‰ıµ\æOşü»?ô\Ì=ó\àÁ‹ b\â(¿Í´\í\ä\äD[kñ#›»ÿÁ_ş\ï~¸;p\Ñ)\'\'ñº×½NE\Ä>`¾\îd½şŒóóó¶¾ñ+<99Áw\ï¾ûŸÿ\ä¿|Û›~\á—?ö\î\Ù\éZUeü\ŞBõb¾Ë¥±Œ\ål,¼·¿‹ñ»ŒE,.\Ä\\\î’e‡fò«‹\Ö\î8\ä0÷\ïœ=õ§Ÿş\İùÛ¿ó³_toı\Ï{\âş;DD¹5‚«\rU\Õóóóöd½şŒØ£¯\ÛÙ®Ó™ôõ¯½¾úÕ¯\æk^ùEŸxñ\à\â·¶½¿KE®f\0›ONNp\ïôô\íÿ\à\Ç~ü=oy\ç»?\á\î\Ù)eK <W\ìı]ÆŒKô÷è¼¸Pñ\Ê~[\Æb\0/ğbt\Èı]Ì«\ç–¼D\Ó\Ê)¤mš\æ!ö™B\ìÁ£ó»km\Şı\Õ_öŠ\ØB^ö¾§ş\ä\"Á@´i^\ßYÿ\Şo}\ã÷¾õõ¯=^ı\êW\Z\ÛÑ—o\ÚVD„›ÿ\İJõI¶-\ë\Z¿\Âõ\É\n÷\ïœıÆü³\ï[\Şù\îOºw\çl¶\ÆrX\á»\Ü\ËXˆ¸H‰e,|´Œe,\'b\Ë]£€Ò´m{;\Ğ(z\çô\ä\Ù\ãGıµ\ïø—6ø¡\çİ¿ÿ\Î\Êt\ÍH°²m¹R}ró\à\â¿\îlX¿²ø\å_ş\åÍ·û··¯ş\Â\ÏÿO°j~ô\Ñ\ÅEmkP\àyw\ï½\ïŸü\ÄO½ı\ßúö¿wç¬½¦öF88ı\"\Ì-\Z\çŸÀ(?\Ù£\à15\Ş\æ\ŞX{\ÜiXx®õZ–8Oÿs[\Î\ß\Ñ\Ï\ï¢)\Ş|:ò\ê9\Å{y\äsùÓ±8\Ñ\0Ú¦\Ñ	ªˆ=¸\Ø\Ü9iš\ßø‹¯ú\Òô?ó§ŸyöÑ‹€\êO;]¯•›ö?}ı÷ÿ\Ğ?\ÚÛ².“Ä—|ÙŸ\Ò;›§ÿ·•6Ÿuñ\è¢ES‹»\0\à‰{w?üoú¹·ü\Ü/ı\Ê\ï¸{\çr<\ë÷\ÒØ…ˆ¶$„l(\"¤¨•\Û\0?DLLp›Oôr1\Ş\ÒaVŒıì½«â¨™#œ\Æğ½»\êrn³,²l¡\é2æ²·ın\á\Õe<Wh\Ì?ÁK»†;#TvE<D\ÚH ›U\Ó<ô¼T{ğ\èü\îı;§¿ú_ş¹?ı“où­÷~ùù£‹\'ª¶H2¶\ë\Óu³±ö§¬\îÿÁ\ïş\Î\ï°\İó#\Ø\Ç÷•¯|e ı³\â®®VŸõ\èÑ¹©jSò$¸w\ïÑ¿ù\Å_úµŸû¥_y\éİ³\Óc¿”´·‘J‘†fº³3`—`\"\Ğ\ÇE\æbNbj¹R5ŸşqŸ¼\É\\|4Ñ\Å1l\íYšM_N\rĞ…\åL/Á2n\ß]³¿\ËX\Æc\Í\ï>ŸWV/>¶\í8K…˜ˆ\íÿ\Ì8Y™ñDr\çk¤\Ş9=y\æ\Ã\Ï>ø´¿ò\í\ßó\ì_üŠ?ó]o~û;^\Õnû\×Y·¢yô\è\ÜN\Ö\ëÏºûğÃŸ\àG^ù\ÊW6o|\ã\Û,\"“\0~\å½üòG\Î=j¥’L’÷\î\İÁoş\æ{\å\ïı³»svvzGE\Ú\Ü\Ş\èU’‘+’j\"J3PD…”]Ÿ+€;\Î\àc\ái«\Çcu¥@=w\æ&\éuÓ˜\ß.\ÚÔ²Ü¥f«¿¯X8t\×u˜p\ÛY\Ï;yp,\Îy¼\İô¸ó6\Ãk‰½Ÿ‹\Ü\n\Ô\Ì\ÓÀ °]\ßÎŸV>\0°ñ\Ì[{úÁ\Ã\'>ı\ã?\æŸ|\Ù\çÿ±\æ-\ïúÍ—\Ñh@%ÿ¹Y{rzÚ€òO¾\í{\à\îm\Úş\Ç\àW½\êU\r€öË¿ğóş#‚ÿñ£‹\rQ\Éø53\áá³~óıøO®NÖ«»k‘M;Ÿ]E{\Í\ÖF6\"¢f\Û£]7\Í\ÃÓ““§N\×\ë‡\ëõú|\İ\è£fÕ´j[|-„¤\êÀYk2\è\Úz‰j‰¿\ë‘kh†8Éº†\Ô\ï\íª9\ï`5\ÆÈ´\ßÂ¸\Ä\Ò+^™G\á±ş]kl½\Ç;‰8\\‡\Ä\íZ¸>^Á<¯«\ìp¢{5p\Z˜\âNÌ»E\ì¿Ğ‡h\Ã\r1†i<\çY¨PA7\r5-˜\Òdÿ²÷5VL>\á|‡¤\âmÃ„~9\ï\Ğ	\ë±rn=v†\Ú\ã3KıN ¤RZe\İX»¢°\Ùl6\'[\ÛHTTD#i\Ï$•B…\0\Ğ=Yx\Ñ\Ú\é\éª1:(a¤\Ş;;}úÍ¿ş®ÿ\èM?÷oş\î\ïü\ÔOúw¿õÁ§>s—	\\!\n¬Í£‹®Wÿñ—\á\çıG\0~\ìU¯zUó†7¼¡\ZÀ\àşA¾\á\rou\ÓüEU\0fÕ¢¿\ë\Õ\n\ë¦yúüÄ¿x\ê\á\æ\â…w\Ï\ÎÚ¹úü\Z¹2\ã	i*\"Úš))¶^¯y\Ş\Ù\İ÷?q÷ô\Ãg§§\Z\ÕV!\Ö\Z”BˆÙ\áY\Æ\ç½\ÌØ¥”œeú¥M!mm\Â#gö2\åTHQÕ…+n\Z!\È\Ókšø\ìJ>Î±Q3_b\×\âU\r¨J\á\ÜvaAÃª\ëºà¼±\î\Ó\Ûú¼B\ßJ»\'¡¾L¨pP—^œŸ÷\àš#‚\Ş%ÉŠô›`3\Ì!dœŸB\\~?0³\Î@\×1]¯!\Ú\Úw¶\\o\Ì\ì¯\ç]GYW\ç,°\Ş\ã.\Ç\ÒÈªYŸ¬ö6H®\Î/.N\Úvsv±iOIiT\Çñ0¹\r*6\ÂV0ˆ¶€`\Óò¤iğ\È;ï³“õ\æüoÿò~\â\Ç~\Ì?¸w¶ş\èg}ôüZõÀ03U4\ë¦ù‹\"òc{\ÛvTğ\ìúşÚ«¿\ìÿ>7›Ÿº\ØlšZûOR¸w§ıWÿúß½\ãg~\á\Íw\ï\İ9SÖ¯û%I5\ã©\ÑV\"\"³\"\í\İ;gxÁıû¿}ÿ\Î\ÙS\êfcT³V¹¯}3tœ—&Ÿ\×æ¹ª÷>óŞ…ó¯\Ñnk·_®¡\ä1mb\Ïk/¥¢$ó+i™—X\\6G÷œ&\"ñ•¬6ƒgÚ±®EÀú!d¯±\ì¥ÀµD´Ê²™œül\ã—S\Ödµyÿ\Zt\ÎA\ÇYW„\Z\Âõ\Æ\é9IºZm\âM\ÌÉ\àQ\×8{ÿò\Ê¢BVU\Z	#\×\ç\çw\Ï/.\îšq¥\nJ:’A@[\0¶jôá®”4{4\0Ÿ½¸8»{rò«ÿ\×?û§å­¿ù\Û_ffD=\Üa®W««\Õg¿ş;¿\ïgö6\îşğOÿô¿„ˆˆm\ì«V®[[üŠ$\ïÜ¹ƒ\ßz\ß>ô3¿ğ\æ“;§\'\r\É\ê\Í\Ö\ì\ÔÈµ°-¸\ï\İ9yß‹Ÿ|ş»\ï\İ;{Š$7›¶¹hm­»\ã®D \Í\ÕF[\rKH»\İ(>\'\å)­aÇ¶VV\Ïs……\í\ßr\\„K \Ô{a¨™Õ¾\ÉP´Mu\è\åU=\Ê2»\ß\ç8Ÿ\æ\ìQ0«rÂœ\n¢|˜%\×\Ò%:\æl\åtC‰~1:\â¸ü^\Ë\à›_\éü\Í=iÎ5\äPt\Õ9¬\Ëcw`\ÙÃ³òôœ³\Ò\ZS\æ¶\n\Ó\Ù©5\Í\İö3\Äÿ	¥•\×p^J\Ä,!ˆ9­F\â@¢5Û£O]\Ü==û\à\éú\ä\éG\ç÷\Î/.\î›Qw†ğ\Ø\ëA\Ú\nnLx\Ò4\Ïz\ÈÜ’¸³^?x\ê\ÙŸöCÿü_¼ı?şŸõo\Şı\Ş÷ÿ¤Rğ\İÌ¬itµ\Ù\ØW‰\Èk÷6nh; \"ü³¯ú‚\Ê\í—D\äEV)€œ¬\×?øOÿ\×\ß~\ßû?xzvvZ5øKR[³S’+\Ù6?nV«æ™—¼\à…\ïx\á÷\ßo\ÖÊ¦m›„\ä˜^‘\Ø¿õg5´\ä=0drwUy¦d(»\ÜDT“,ƒ’2\îtf›C¤„\æöE\ØdY:B+V\á“\Ñe\ØËŠ*0AÁşYŒ\Ñğˆ¹š˜h2”h×…ò¤ªi‚ \Í^ \0`\ZQLAF\İĞ±\ëŒ“\âÁV\â!—3l«\Ù\î\Ì\Ü\r\à¸v7GH<%­ÿ7ºÎw}\É/“»3|»b6F˜wŸb÷%œk\È\Ú\0\r\Ç@0b†ƒ«÷«\Ú\Ó`c¢L1oM¦°«\æc\'gY\Êô\ìû%gQ6¦\Ïi|Q\èH¹\ß\Ø(\Ø\Z\×\Ï>zğ\äf\Ó\Ş\İ!4G—d$NW\ëgW>ğf\È©?z\í}şÿ\Êfı\'Ÿ}øğ´*4uû ÷\Êóõwş\Í7ü\àû7ÿ\Ò\Âù_ğˆ\àô\Ñúe\ëfõ\"k\Û*\È\Ì$\å\îÙ™ü\â¯şÚ‡û}XV\íxd\äjcv‡dCR6\Ö\âù÷\î¿\ë“_úÑ¿ğüû÷\Şw~±\ÑMKQncÀı-Z\í\çò\0;~\èüü\à\ç\ê\Ìû‘Àvş-İŸõØ§cô\'\çÿ\ï\Ü\ëğ\ZÜ·\Â¿Šan—zŸ\\uò	ÿô7{\ìs0È‘Á\Ï\ïÏ†Rxøƒ\äÿ^\ïdÅŸÍŠùd’Štxv&ÉŒy\îc÷ºaŞö~‚z\"]S`ı½\Zx¤E\Ä \Üş€2ø9”³\Ó4\æ<2Ë®-ı\àgªÚµo3X3œ±±3¾•	ûm\ÂQ²¾<¥~\ì]¡;=t;wŸJMò°\àx_Ş¤p¨‘¤ô)\å=·\âÈ¹ª!£ª§ñ/\è”ùø²\Ós³~¤RšòÃ¾\Ş1Ë½Ó™\ë\ß]t\ë5\ÙL\Ş\Zµ\Ù<qv÷ıwN\Ï\Ş/\"­	£Ì¡\07›‹³Mkw¼ğZ±\ê\ßû\ì_ø\ä?İ¬Vµ<°¶m\×\Í\êE§\Ö/\ìl]9Hn_şr“üAn.øÅ€PT‹_n¤œ­\×òá§~ô¦_øÅ‹\ÓõjU3ôkf\'­Ù©ˆXk¦\0.>\êE/z\ëG<yÿ½›\é¦İ¬şÀ\ê~Á©R1B\àüíŒ\Ì\ì\é[¡*\Ò9³Ÿ™òŞ…\æ«Uw©\ìK0T‡@KÍ§BŠØ¦\Ê7z\êôÓ´’[|\äi9;#\ÃÕ£2Š\çƒùw¾ñ<p‚÷İº\Ì9O\Çü|•7\Ç„7Š“´ôtPf:¾d^Ó™q\Ê\å´d\ä«S°#&hÌ˜ÿ…tó¤¾W(`\í6¬p¦_gu!’+ğ*)w\Ö\'Ï¬W«óg<û‚Ù™\"’ µö„Bmô²&89Ó–¢wOO¼\ïCşô7ıü¿ı\çŸşiŸò<õÔ‹µ –*	\á\æ‚_,\"o\ÜÙº$|ı\ëU^ıjûó¯ø¢{\ÈGÿ´{dyöø\êü¯ÿòMøÅ·¼\í\âŞ3Ô²[³S3[‹[³¦išg?\î#_ò\ËwOOŸ>\ßl\Ö\âMÅ©v¬ÿ¶Y\Ó\ÛrSpªÎu€ü{T9©4°Gv\Í\Ğö41”r§ğ^M…œ½5Ì€f7¼ı\'\Î\ß\"\æ¨-Ş\álañ>\Õ-\ä«a82\ÌÑ»¡zz÷qö–Œ•n\Ê\ÖT¡6s<´·¤\ã~\Í\âü\ád\İn’\Ì\à±Á©¬>ÿ–|Hşùğ\èmóD{W¨©À\Ó\Ï>|şy{q\ïÀ>Œ\ÔbgS–\0×ªr`\á\Æ\ì\Â\ßxİ—}\Ño}ø™gÿğùEkªÅ±/@Ÿ9\Ã\ég~ó÷}\ï\Û÷6\ïJD\ä\ë\Şô&|½ˆÈš_¸\â\ê\Ş\Ã‹Á¯\Ì(ggkyÿ‡>tñ–·¾ı\â\ìô¤¢ñÛ™q%\"Ö¶\í\êt}ò\á\éGşòzµ~t¾¹X‹€\ZV80÷I\ëúUx\ÈzR£…qŒ•Xù\ÙL*L1„±”7°€¹\ßQ^q\r\"şgx¦Áôö`\×p©_\í\ØT1f\Ât\Ê>³:Õ—¯„#q§¹ß–§\ÄUhO\è2~\Çk³öiBX¾²l/\nò3û!\áò^Ÿ¯@\ç1L½}\â\0y(¢+q:dö6¸&=\è8vöŒK@m¯XH\Ğ)`GG¬Gmz%ıUœ{\ŞõiÈ¤\ì‚\å\É;gxú\ì\á\Åùı]tv\0JnC \ÈE»¹³nVl2\æÓ¦9\êÁÃş™ı\ïø÷~÷g¼ÿü\â™J9 \Ú\ÖÚ³;\'÷üBù«{›w%\"òõ\ßø&\"\ØXû\n²yˆœ¬N\ä\ßşò¿ypn\Æ{ªU\à¶mÏŒ\\‰À6­­îœ¬?ô	ó\ÑoV\Ñv³¹\Ø÷°B@I ·\Ó\â$›\"\r\r°j\Ö;¬¥\Ñw\á°Ø\Â\\\'û\nT†µ_™8ü¬\è\Í\r\Öş>qVmº†.‹œ³@¶\ï€`\èÑŒY\çaô¥	Úº.ƒ˜*SA\İ82?f\ìjŸ=­t¦°“£\é\ÍÀTi<?Lİƒae6qD\é[$E$m8øO§ğb\Ú6,r\Ò8¥\Ë\ÔL,\"Ï¦SG1}\ë;2(ğ\ìÄ>’¹¢ùÂƒ^ù€¬õŒ˜Ë¸¬&D± —»“ù`\ÒlöŸLK©F_o˜¦\èe\êºƒ%…\Z®š\ç}®<¿\0—4›Ì™˜ü-\æ­gš\Ü\Ü\é¼\×\ÑWkŠ^Û’¸vúA\Ø\Ãóó\'\Z†|#T€\"Ò¶v\Ö4\ÍC@’FpK\Ê\é\É	\æ\ßüq¿÷w}ú/Ÿœ®?ûü\Ñ#Q-³JUDh”\r\ÚWˆ\È7\ìl^iö{\İW|\ÉÇŸ?{ñß·Ö®d[13yOö\Ñ\ß~\è©ö\'\æ\çŸYŸ¬kl0[\ã\ŞøekÖœ¬šg>ñw|Ô›WnZ\Û4ñ¤dI\Ú\Â5]üñğ$?’ñƒ‘Ÿ-ÆƒH\ÑOoN\Ì\Â+šuT~“…\è¥›M¡a|G\í‘œ£\Ë7dĞ ü<x˜\Şa\ØNİ£cqõ\0—E\n±B\Æ\å\Ã%¬\ßù\Õ\ä\å\è\æ3²Ú¤}+2;!=\ä4•û\ë™!rS¿\\À}F§øb\0†]n.”œş»	nR\\û}Mr:©’\ä bš\È\áq\ÖU\ÔTnBthš0[-˜r÷pú\\*ğ_•>ôAg\ëõC#õ¢mO‡\0²M“\ÆŞ°mj@‘k\Õö\ÙG\ç\Ï[A\Şù±/}\éG<<??+q\0`$hòQŸıY¿\ç\Û\æ\çÿ\İEDõ/ı¡?´uù<¸øœ¦Á™µ­•n\È>úû\æ_{\ëùy\Û\ÚJ‹c\Ê4\ãÉ¾\æ\×Ì´Q}ô	/}\É/¯š\æb³i¿\n:š3]·\×\î\Ä9\âŒıÍCª\Ô-p\æUV¼˜u“xl@\\3\Îu\\n2\ÊY_\ÈE&\ÌÎ¿¸\Ê;o\Û.\à\è5?Ÿ\à6ğ÷gn9¯]\Ç\Ş\Ü@9Z¬›\ÜÊ»¡5\Óûgg<iV\Ï\Z‰€$xğ{ˆhk\í\Ù.Á8J´–”\Óõ\n?ÿK¿ú¼m½^\×8 °¶µ¦Á\\|ˆ\È_úCHW¿\ë%/\Ù\æmo.>{µ>•G›M¨T\Å5šu#\Ï>x(o}\Ç;\ÏO\Ök±²\Ôg’²Ş˜\î\Ó\ïH\á\ïx\ÉGü\êÓ“gm6+Û¯\êş\0û\ç\ÒUŠcşs\áÆ²nò²R\éÖµú\İ<•iTo\î\0\æ\'š$Ec \êÿF‘B`½§„S?\Í{pBQ‹³l¨×€<Ÿ\ny€OC£m˜4\Èz7k:Õ¹B„\'\İv\ê\'“~Vhª9î„½û\È\ä0¢tc–˜\Èf\ÈÍ‚gpBr\Û0ø8«\í\n³.Tº™Ç±@\æ$\Ï&\è:\Ö ¦}xä¸\ä5N¸kº‰°V¸ÜŸP€\Ì\î\Ë3,Eu\0,\Ù=\ÉO\å-y& Fu\ï‡\Æ\0&‡wyÍ‡\ìŒ\\ºgT$2ºÜ’qÁ»\ãt\È\Ñtj:\ÎO¦	\Ô\ê™F	˜uk†ûw\Ï>øá§ŸYo\Ì\Ö:\ì„§mÛ®š\æaj«\ÕjóÌƒ‡/úõw¾ó-õÒ\Ü<sq±*MƒU[­VÊ‹GŸ-\"\ëw½\ä%\Ô/ı\î\ïn\åş\ëj­}\Î\Åf#beÆ¯™\É\Ù\êD\Şş\î\ß\Ü<ı\à\Ñ\Åz\ÕÕ SDÛ¶=\Ù)\ÉÜ´mó\Â<ù\'\î\ß{ÿ£M»\Ê,½8‚—3ş\ÜRGY4\Õ˜•d—ğùß•\èù\éÙ£™ö~Ä—n]k:7™&­süzşDŠ\ê†\Çñæ¹\ß~úı‘§\ÏÙ‰1»\ì\Ä\Ü×‰M\ï\ÍøtEQ\\\ÏøMo°SÏ’[:|\Æo)\ÅQõ<\Îú¬º\Æo\é\ä)·~\à8ûyT=ÿ¦E‹\Ğ\îİ»ûş*4¶9IY™ñ$\Åb*b\r\äô_ÿÒ¯¬\×\ï\ß¿eli¢›XkŸ#ÿó_\×/ı\î\ïnW\"\"¯û\Ñı„‡mû™&*ª¥\é\Ï[—Æ¯½\ã\ç*0`ß‰~\Ú\ãÚ¶=İ…\Ímc¶ºwvòşy\á\ßy~±Y\Ée\É\nFÀ\Ú8\0•¬s°9ôU	òŒº½ºÏ·c\ÔÆ\ï-¢6ı¨¬\Ã\Í,¤’\éQ¿L0 \îcóA¾\Æ1&$}Y›\ÆÖœ‰o)¯2&ujÊ‘;\nZö±\ßJ™# :5y+\r³3“–5Ø›˜\Çİ®&\Åa[†\\1\è\é1\ï\Ä\ÌE\Ş^&f¦\Î\Ï\Û\âp»£%†VmÖ@qDE\ãFk£óVuO\Â{g_\íNñ—S\Ğ\ÃpI †\ä”_Y;Vô¹¬\Íi\ë(\0øDÁœ\ç7 \í\Ú\"Ÿ§Õœ9S¨\Æ\ä_«÷#\ï¿\ÒL°R=?;=ıĞ³¾\à0JK?7f\'khC†nIœœœ\Ø;\Şóxú©§ß³^¯_ò¨KU\ĞnZa\Û~\æ\ë~ôG?\á›D~m%\"Â»øıú\è\Î\ÉÅ£G¦Eqf“\Óõ‰¼ÿ\Ã’\ßø­÷œŸ®Å¦7T¥‘\'¤¬D„&›—¾ø#~]„Q\Ã÷ÀqFN0N¯\ß=UÆ¤v\ËeBTô 9k¦W#Ğ¹µ‘õ0\Ğ_\Ê{jÒ©¨\Óoiüã™¨\âE\\P·G@!†÷ŒÁ‹‚\ã\×\0™¡Ä²p+XA¬x÷E/´\î÷Pi\r…EŸ)\ã,\Õd†…óK½‚5z¸«Gö¿\Ãb\ã”¸\ß#\'³±‘Ş£\äšPQ‡›¿j÷.f\ÎEpŒ¯˜Ã·¾¦\Ñ\Ç\Êô¶²NÓñu°Â”\ç9;õ¼\0‚\Å,_bÎ©¦oı)ú#g›Á˜™\Ş=]?{±¹¸s±\áÕƒ\Ú<À°Ü¬myºj\Ğ\Ævµiš\Ö\ßó¯ÿúû\ïg~Æ£G–\îRk­­\Î\îœğ¿_ö°lø®šF\ÎU[)\È\ã2999‘\ßøµ·Ù¦m7g\'kL­ÿ…ˆnZ»L}n\Ûvõ¢\ç=\ï×Ÿ¸{\ï\Ã\ç.VP\Íë‚€¤£\É\Ó\Z÷İ¥}\\OX\İL;r[R–§\è\Ûñ\Ä\Ğ\å\\\İ#\ÛWRlf	ˆ£8k\Â\î\äı{/A3-m!Y‘#=ş²\Ú?±\ï\×\å³\á’BÑ±hq½\Å7!\äø^û§DOdFş\Zo9\Öÿz˜Aj\à¨	…®}2\Â\nô\ÌÔ·9l\nd.ˆ”C_N2ƒ!\ÄÌ±½JSS;Ì ¹FøA”\Ï\â³q^\"&œ}´š\Ü\Îi\Ïun.F\rd6Ú¹\ÊL°\è\à Rg£7\r|».AŸ,©¢¨œ.9˜Ek0v.\nıK\çä‹0>“œ¥ÿ¥¨¥_InKNe\Ä\ëP½’’‹>tBM¹„÷\ZŠw\Ï\î|ø©g9\r$kµı¯P¨F;Qè£±•˜WŠ\Õ[ı]g¿÷3>\ãY\Õ\æ´To‡j»j\Z•\rÿCù[+‘‹\Ö>s«¿šJA\0Pim#¿ñ\Û\ï¹P\Û\æCOš07­í„¿Ù¬µyğ\Ò½\à7\Ú\ÍFE/©\Ò\Ó\Ğ7Tü¹˜\Æ\Ëu\í:—\Û[’9]©è…˜P®qs! \ÙY\ÓO`9?\Ôó\Ğ1³»ƒ‰\Üi°s\äôcÄ‹	™”Ù™Ï¦?¥>›Ã³Äœ³q\Ìl¤/iÀFf:!ûY,ptä¼ƒÙµ\î\"\ÌsT\ë\é\ÃLû«\âQ¾J9oœh\ì\å\Ñ##Z¢ş}C\ÂCQj\ØpNÁ\"\Õ\"—©\Ş\Å\È\ï›ºÿó­*\æ{0\"Š$2¢¢<\Ê>£ğ¹óğ]g³¨²:™A–p÷fL²\Ê> –\Ëd\â¾…\êUC<Rñ	qAÁF>p™\ÙBY¯ô\á\Ézı\Ì\Ãóó\'tL&Km\ÈõZ¸`\ì³XŸœ\Øû?ü\á{=øÀºY½à¢½(\è-\"fºi[ÁgŠˆ\èW|\Å:³vóÉ¤	µÌ­²nT=\Ú\È{\ß÷ş‹““µ˜Mº¾H²1ò²µQk†>ÿ‰w¯š\æ¼\åt»&\Éq>ğN¹–\è\ï¬ú\×~’\Û88\ï\Z\İíŸ\Ğss•=~­^\æg\îò6,¼vV‘#„İ°~–7v\r\×\Ë,|\Â-hƒGÿ¦\ã\î\äP]Ÿ÷u¸ö\Õ\Ş\Ô\'\\?g°ô}¸Yt7ÿŠ<gÔ–‹sÍ¿5œœ<­¸2h™XW\Ûò$öH¸i\í\ä\ï~/W\'\r\Í\ÊôLª(ib\íæ“¿\â+ş\Ğ\Ù\ê\á\Ï>jm|	\ZJ‰ıkf²>=•_÷o\Ê3]<qv*-§\ÒñŠ(&¢km¾\äOşV\Û^xE`u §\îóS5\È\å/?FırœN2g‡R}\r\ì+Äœj€y÷€˜}‹Á\ê|\Ä.Ÿ²\ìù\æ\æ<\ïF2\ïH\Ï{UôQ\é¶\0Ò¶&¼\æ,^J\ïC}ƒ·\î>´\İ8G¨/M…p‘k\rn%¡\ÔØºY5GP¢mğŠıOyu£%g#ç¸²@¢\î,=oCU*ò\ät\Ş.1\çü™‡]Zz„}Àô–P\Ù:qz³\n˜(=\ã…Y(­ªª#/ZL—\Z1\Ç\ZL«•¯\ÖÍƒó»¯T™*I6$ VÀ rú®\ß|÷‡>\å\ã?\æBUOJ€ŠJÛš°•—\\|ğ\ì£Vk\ÕO%\í.*\à\å6M#\ï{ÿM(B!ô\Ç\ÎlG\Ëo\Ú\Õó÷\Ä{OW\'^\\¬4s£l\nk>¯\æhnw‚¥\îo¼\ï\Èfx\î”¥šX¬;W¤$;ñNĞ¢\êŠ8N\ÉGq‰.8ó\\}YFM\ÉƒºhjX	ş%\êœ\'\'šÙ¢˜·\àw,\Ä]òœ$fµšF\êU¡F\â\Ô4¥\ÌQ>\Ó)‘\Ô\åpw:µºÁ\è\Ô\Ú	$De\"sAR0kƒo\Ñ+2\ä“O€T]\Ö\Ä\'8\å˜Õ¦~«Ù¹nG&õ;;\n]M¹(FR\ÊøØ¦2Œg(AÑ„¾srú\Ì\ÅÅ³w¯5\â\í\ÑÍ¸n\Z´Aw…\Öë†¿ñ÷´f\0œ¥õ…‚w×ªŸº¢\áS\×ë•ŸŸ!@«ªlÚ¼÷ƒÜ¨br6Éµ\\e©À\æ…÷ï¿§¥—1²\ärqf\ï‰\è\Í,\nò¨\Î\à7FÙõh¼¹¦Ã€#\" 5J7pš–û`e°5±ƒ\n\rX—FLD2\çHy\å‘kyë¿ƒ™\Ú_\é:œ‘Lú”\á\Òh2x\ê¶g}ş\Î\ïË©š-+¬Áo3°²\Ğ`y4+YMÿ€¡Û¸:MA\Ëõ\è˜‹\Ã\Êûšp\Å‘\ÓZ9M^9ˆ\Ëø§D&]K”/ñt:\ÙbŠ\ësn\ZI?\Ô6C„½nÄ˜ó\"[kºV=oTÏ­\åi†‡ƒ-¹\ÒhX\åÁƒ\'›\ÍÅ‡Tõ‰‹¶¥N÷Ä 5³““½\Øl>u¥‚OY©\Êf‹ª\\óhIùğSO[£*\ÆIÚ²\åj/l\ÌL×«\ÕSOÜ»ót»i8s5ƒ7L 1\Ö\Èñ…ùÏ\ÎwªodIé­\Æ\èuüúe\"}€•³\ÆB\è\Âù\Ï\Â¼ZSØyH)-§kÏ¡<Íˆ7½XÏo‘{ö€Gy{9¨™’)“Z»\\\ç1u·	ª-W‹e\ïü\Î1\äµM” s\ËWòö\ÕûKf–\Ê\Ô\æÚP	æ˜³ü™2G]U?o¬y\\\'\Í\'\Ë\ÈR¶`\ë\Õ\ê\áƒöüLóòU`”U	F›f%\Ï/\ä½\ïû0^ú‘/’‹‹‘¢~Àj+UmŸ²¢ğc[33L}¨‰\ÈI\Ó\È\ÅùF>z\Ô6ªSš–sC®x… J3[=ñ\Ä\ÙW«\ÕE»Ù¬¥iú``\ÊY£q±š\Ñz™3D|ªW¦_\ç\\„—}|X¹^y\Ş\İı%*É­,s\é(•ušŒ\Ğ!S\É\Ñf=D²#H¼™\Æó¼²¡v¯\Ñ9\Z!^1\Æ<\ÑctÉ•E.-¼Q\İ\Ş\Ü\İGfğ\Êá³ºŸ¹L\ê\É\Ä$\å\ÔLOOÄ¿…I*\0ú{kQ=l°Œ 0\é8T*\él¼Q\r¦\Ø ±·0ümfÔ›HJ…\Ñû\É;2Gf\ìàº“[–½\ìø\Şd}“ƒ_fe\ÔE¢\ÅQÁi«\Ï\å*0÷©\ÛmŒğS¸\å=\é¢y3	Zb\Şy¡»”)9}\é\\\í™\è¹\Úg\ÅB\ßRhPÄ¥c\ç™o*\Ö$Õ¿\"Œ\Ù:f‹Ä¼\Ô\Çw´ \é\"¡ˆ\Éz½zôğü<7˜Û²\×`;\Ö}ŸÕ‡~J>\æ£_R¾3´fB\áÇ®Dø|nI’À\ÍÉ‰¼\çıó\Ífsº^O\ÙĞ¸\ê\0›û÷\î~ˆ$­iB\á3e1•kU\ÃK\ÌZ\Âb\\ôúµ˜s	\Ö\Z±–c“%Xôf\ÕŞŸ\Ú\Z[Hd*™O\ì+¬\Ô#2\Ì\çœ\0<E‡\á<\æJrô e\éA™À6¨p˜½‡LÀ$^)T\Ç-\èüX\ZG\àˆ/`úa\ÒÀ´Î¾\"#\0\ÎI\ïpöòšÑ§ñøFË˜|\Ê\ÎW\Z@©4\ÈÏ”^^õ–$H†\rÖ£{Œ5t\0ºˆô.£TV¤:r\Å\Ç;ş0B~/s&úõ¢T1yGYM™0i1ô8\î§\nZ7á¨™˜\É`&8iô\\€\r·E\×iv AŠ²¹\Ö~ú\é§²\ÕU‘ı{©ˆğù+¡Ü¯AÙ¦Qyú™Ò¶\Æ\æ\Ò:+ˆHª‘z\È!h°¹÷\ì\éM»Q­UOn“\Ú\èóK\Ó+S\é]º\n\Ä=1–Z£Ï¢0·~\'SA\Ò^J{\Ò¤.\Ùˆô‚Ãœbò\éƒ—ğP‹b†pLyÏªOfBÁ˜\íE=š‹(«\îk\Ş\ÉP7,\á:wos<»½\ìN¶y¥\Øğ6g\Ü\áY0FÍ„\Z`ŒF.…Õ‹ıvxfs\"ö“n“X$“Q=—y©c†V\Şı’dt&§”a4\'=Ï‚\Éu8M»s}I%\È\ÂW\â\È\ÕR…/\Ñ\ç\0V\Ş^Gñ\è+1Za<u$KNòğ!ó¥N;è©O\ï¼~¹\è¿\æ\'B#/`ùùq\ßú:\r\Ì[\Ó\í=9Fˆ­V\Í\Å\æb“k¬\ÂÈ¦6AûR!ø\ĞSÛ´¦µ\æN¹¿¢\È}RDU‹¤P9\ß\\\ìv>Ç¾ı+\rüf†¦Á\Åzµ>·¶\r§:c¢¿¬©i¾kº½µY‰½‹P±ÌŠG\Ä\ÓşoŠ\Âml_Y\ï<.?Ÿ“xC\×Æ¦¸;˜(\ÛF6:¯\íIvK¨)øg\è\î™´bPJ…\Ô4Gy|?\Ú`&I\Ş/LÖ¿\ç-õ,tv”\ÏË¤«\\	Ş§ÿü\'’D\Êh„Àº«¯\'G\Z³¬:Ë¢;\Ëù_\0¦uiË‹v1õz\äM6U–ƒ‰¸S. \ç\ä_g\Æ}-ÑœG\r\ß\ã>ÿ\È\ÔQ<sg\â÷8Nö\Î`_Q¢\ÇÁK™…z¼2r\ï{¼÷Îˆ7“M\Ìsw3u\ÍÙ…¨9uG\n@p\\\\wóm@kDšpŞ†*>z¸2nÕ†&SU\ì‚9÷Wy\Â*A=˜\ÙdR³W¿n\"8[<h\Z5k\Çûƒhoû“\\\Ô\Èõ\ró)Fî«š`Wœ¤£g¯—\Ñ@-.r\éh\æRÒ´®L\ìw!JT\ê¦t•U®”+Êœ=9;\Ï\Ñ=\íş&—^ˆ-a\Î\î\Ïu¼,m\Óüi\Úü\ë@ñ\×9—±†ï—¼\ßf£ƒ\Ïa\Â\Ì\Ä(¨´±\æ8¯C±Šˆ ı/ ª\ÇÛ¶Œ¨Ÿ•T–§\å\ÈWk7äˆ›şİŠŒ\Í\ÎH…ª=\æ”\Õ‡š/­	<“{†\ëD‹õxdw\Ç#\'Ì€Ãš\ÂºÃˆ6\nH\è:©\ÌLTD.Zƒ	1!À\Z8\Ë&yb%{54w€r~±Ù­\Ã\Í\ä ­_\0u£ ´\"²’a@UfqSv\ÎW¤\ç\Üh\Ïd”²6%\Õ2\0³oWû§	\ë9Bû§m\ÄZ=_*\ï@\İùfl$Q·ñ=MS!b@\ï¥F\Å\Ã>C+µ{\ã\Ù\ïÁ\ÚÀ\Ü,\Õ\Ğ3\ÜO\Ñó+\Ö\ÍBa-\åw8\ÛüøYµ¶@\æq\ì\ÊXpM&£\Öt\ÌE>†\êXx²\âMmQx6y\Ú~\Í\ÓÂ§Ô½™¶\æ=òƒë¡¸Õ—\Ç\rŸ¬7N\Ë\â#\ĞN¹XF“‘7LB\Ì\ç¯]™\î†É‰\ês9)†rŒ¸\0Ñ±\Õ\è\Z@.s\0\Ä6­¦ò™ˆ@\î©\Ø]\ÎE–Í¦¥\ìP¿ü;C\Â8¼ WM³Q\Éã·¾\à5 ¬\İğ¬\ßÇ”*•‡\ÍO£™÷‘Xv\ÕKs»&Ş¹}2\å\Úy\ÄM£\É\ã(…y\äY\á\î£\İÆK(¹G\à\ÜBşGñ[®]ø\ã\è™F¼ù;[™&´\Ãk‘­¨Š‰»«g\Ø\ï\r@\Î\Í\Zm«\ì	)\"xb%\"§\åh\à*\Ê\Åf3E3 \ÙM€ß†]\r\Ú`£\n“¦¡^UM]£2†\×cš\Îº	]¹®vL?[\0 ğ›¢\â))*¦4y¦G[³øH;e°¸h’ŒºšyVºezÀ.\0\Ó5\ï\Ä\'ÙCmWµ\Ù_®‚“008’V\n\ë¤y\í:\Õ\Ş)X\í¥\Óv8ıLÕ,¼\\”O\Û!:,¥e\rœÅ¹A)d©A—~J®°\'‡¯\ê”y\Éß®@B¢;\Z}«Pß±D1\Ç00…û€¼›¢d¿§\Ä¥5#œ–†¦c\î|\"Ñ™ƒI\0%«\Ğm))\ÙÕµ=\Ñ.L˜K2ß™ş;9ğY&÷:&(½q8òÜ™\Ãùj‚\à^E?_„N•ù\nğS,wI\ÎN‡\ë‹!\Ñ\ZñÄ®\Ôs‚Á\å\â\í+¤Ë£	«D‹mZ\'\×\íM”`û-3B¤½‘\ÓJ\n\Ç\éJª\É0vÀ •\îMC`pª;L“>¤\î\"\ÇwZ-½:xE\ÕYôTR†!\ãTn\æôy×¢{)‹T\ï€Ç´\Çœ…2‘{\İ\ÙLwR¿\ãŒ<:­\È\ÔÒ¬*\Î9z—¥	&ÁµŠ\Ú9%SŸ†9\\\ÌLŸFI™0g¦¹w/|Ï³\0\Åj\Éñi1\×RNv0ı\Öm}T*\'²Êª©gõ$9\à\äu¯Ì\Ó\áZb_\È5Ò¥«\ê†ó¨òs‚¥\åœ\n¹§şw};Bh\ê\ï2OÚ€\ÙÕ†¸¨\ÆdÖ¬ü^\Éõô/JA%\êm4~C\Ïvlw;¦I½®°OEH`iÁ\'x`]\ÇI“Õ²Ew¼y\äd¬C^\ß\éJ{Ym\âJ&#YI©bé¾­‰º‚‚\é”œ\é¦w«^«Z\é\å#üš\ã\n}`úúˆ\êVÈ”²\×#$Lø»U~g®NÁ\ë•\Ø\Å\êÀ¡¤µ\ÏlüV£WñDö2	Y}ór½\å>“\Ø\á8\È#ğ÷Ä§ \â9Š\í\"9\Ãc±s&\n!óœB¿¼³q|à½œ„•À{ø2iP‹õĞ!úâ¤†›3¥¿¡\à\é¬mœd(Uú³ö@‘\È\Ê\â¥ö¡8-:\ètğih\ás°«~ÄŠI{B§?ßª«\ÓğÈ”@z%,\êª+\n£L=\É6¢\Û0/\ï\È%•-\Z¢\ï™L¿™\àpZ‘\ÙF˜K3	\Æ\Ú\Ù`@\Ì\Èw:\Ép•S4/Ã½‹s›/\å]$ep,·\á+\ÑÍ‘<%r©l+lù\\£ó€mu\æi(N€~Fv…˜Õ\ÃMŒ’hq^E†W½Ë|w§»\Z	xÀˆP\Ô\Û;[\Îù\Îd;X1¼=²­ùÀ\Ô21\nò\Ü1€ºÛ„&‚\È>3À¾\ê\ï8}\Ü\ÏGz\ÚÕ†Áùşk\Âs˜/,g“\å\ß1SÀyv¬ÃŸú³\Æô\ÔÂ·%Aõ™†®†S™Æ¼¼\Z\Ì1sXÜ+’¼\á6¡\Æòõp}\ço\æM\å\Ñ.‚ŠL“t$jÏ¹t\Û\ìø\ïôvE¶\Ú=²X÷“œ›œ¼iÛYcöŸq\ÜIT\×3š\":\'Ó¥\Ã\Êo²l¸ğ¾¹qˆ\n\n\Õ\Ùú}±¾µ‘é­‚/™T¯,²\îf\"`91p@®¥lôptQ¿œˆp\Ğol†<[SÁ€&d/¢\ìP\ÔbV&#¥µd§dš<¾\Õa™D\ì¡˜q¯p\èé‰3SƒBŒg1\ì\ï\â¾Fı®Â’~c\İOñPúy\Í\êóöö:Y\ÓC\èœf¸VG\ëjc½Œ\Çx#\n¾Åˆq…\Ì#(*1)şw%7§\ÖS2²G\Ç<‰6‚c‘Ó®)’>•\Ì?j\Ì3†Á\Âz\ã\ì3¢\Ã}Ê£1°­i\'ˆ#NE%\æ\ÛÊ¹(\'@üZ«¦î¬ƒ,L\0¿±(\İ\è6\Ñ‹\É`8\ç³\Óú\Æô\Õ\îiû‹\Ì?‡N*%N\Ò\í*1ªŒ\ædò\äöƒb06‡µ\Ü|jˆH‹ò÷=\'\àh´B!	\ÅŞ˜¬‡…	>‰ŞŒ\Ãs\0«k·\Û\Z^/\Ç!\Éı\é\ÔN\\\å\à\ÍºSf\êT,¤\ê\Ò\ß1\ZŸ¼—\Ãt\êHø\'Q[«¤S;«0\na!‘/ù¾IP–º\î¥\á­D¦ø‡BŸRø¢\ÏJ\ÚT\ÌğIªC)©\Æ\ÈW\ì¦\Â2\Úƒ aJÊ©Ÿ¡\ä·o\ÂD¾€;}:mì™†b\ì&“\Ø™sö§Oƒ¥\Ç#\Ìòüf“Y6_]€°‰Iùtò/ò,©R€­\n\á\åCIœ\é|,À1]*¯Luj\Êj\Ş\ŞÖ}Á‘.\r_\ny\ÇĞ­6\İxy\ëPŒnÃ£ô\ï¾! X±?© \×,õ\ßv(â™¬\Î+:+¡(nø’%N:XzDv²‘ß \"jlİ±[\æ¹a\×*O0\Ç~@)£ö\îğne\\N‡›˜ù&ò\ÖT4r¼	ckpŸ(3ˆYL\àé‚š\Ç\æ¥r”‡\ê{\ÆkI½E\á—1\ë\ï3ñs\Âm\ë­:§Z0_\Ú,«Múˆ\éÓœRÂ˜0O¯y\ã\'€‹A\ædŸ&\ê¬×Ÿ|OuÜ”\Z\àG\ï³V\"lt\ë\ÉMFûbQ \ëJ\ê\0W³²h©\ß6š¢\×L™ \ÔWk÷„\Z\Ğg~‡\â,\Ó}©˜‘ú«n\îGLa™Œ+AgÆ£\Ç\é$\Å9À¸—sa´¦\Ë‚\Ëp²\ró<\é\×ğ*,u\éLI\0µ•·o²ú¼Qü¼DútQË¹`ú4<89_fqaz]>k‡KJ³„¦¤O\'®†”>˜\â8\İ\È rQ)€l+#m7™²³|¬‡˜wK¿–šôPÃVj\Ó\ÔQN•aÁa˜V(\Û\çFË–kp>\ßmw ß§š˜\Ì\Ş\â\nZ–œ÷ÜªË¢«ßµ&\Ğ&\Ãø\Õü“EÖ50;\Ğ_cqô—uEk$.DZX¡ò)B2óe¸\'­µ…q\r…Ond†2^·«tõ:¥\Z\Ñ,V\Ça›ğ´uY\Æo©Ğˆ¶˜«B›ù¼ŠÖŸCa„;c4•Ib¨ŒYw­õ€ŠŒ\ã\İ;\Î-‡+\ê·a«Jk\Ú8/ÔÇ¤a¹\Û³\ïñ4´[.“\ÚG;«[t\éWøtôY\å\nt\ç\è³KX“\ã4ˆ’@1\ïş£HÀ2\"\ç8ª¨§\ÙcŸ\èü¾¤Š¸€C\Ìy†óş’2É‰Àa\ê©Ø¥‡s\ê‰22›û@—œ{·+›\ÎzØ•%%×•\êºF€kA4$\r\æ+\Ç\Úğ™\èr,\Ée-\nÁ\\\Ú\é2ƒSøW\ã\ç=—\Ñ\å\ØP:0[Ê±\"\ïvŸg.!2Š%N“\ŞEÈ±“RC\×e8–ƒ\Æ(<Ğ‡\Â%(\Ç,c?\è«fE\Âf\ÎÒ‡x%wQ\êe\Ùi¦qšf49\×\Ôv\0nY|BœPoŒ)8-®^\Z9†¹YªÖ¨\ã\ßÊŠ)\í˜\Æõ\Ïp—œjV\ĞQ@“®g˜ø\î:X\ÖG\î2T\×Ô­0€±C¦ô\ËhÁ_½;¦cı\ZXÀòI[I}¬Í Q\ZKWò]¦StqòI`“’\ÓD‚=j\'R3\İ\éÔ•„§®T«(ò\Éş²¥\ËG\Îc4„!\Ç\ê¼BÛ~\n«n\ã\ê&R\å]d˜i‰+¹€\'Á\ìK:ùWS”Oö\Õ\ÕË¿„e˜\ç\ÌEù—\ÏFö‘Á•!\Öß‘\äù‚‡OGœ9q¹á‘šnòd\å9ô›Z\êKC©­&\íeT‘\İ%õ™\è\áƒU\é§>ÁD—\Úw\Ø4¥\É2¦R\å2gü¾ \Ôş\Û\ì«BeÊ¹ùÀŸ.v#ÀQH\Î2\Zğ\êÚ‘™sq³\r\à=\é4Ë±\áy.P\ÊÎ‡©È´j\'§öI\Ì^sŠ{\"Ò‡\Î9Ó¿GVJ“,ĞŠtgü\ßtª÷SR\Ê\é\ä\İRo ö\í«Ì—óe‹b\Öÿ\'gH\ã#ª\È\äOÉ¼\ï\È1ZP\"\ÊS\â¦\àO\Í)É†\Ñòmõl&X~¥zg)ó²\äqôÏ\Î=\Ê	\Å\Æ\Î\Êš\â:2KÂ\î–AL=#úkst\\>‚*\İY­\Â\Ã`V<úi\Ğ\ÑÁ\'\Õö\Şì¤»[2fğY¸ôø\ÛVYp\Ó#À¤6‚€<\Í6§jƒ_¡X…\î\n;ô˜Xùû!\ÖñN\ìhŠTz¶Gø\Ø\à$sYÂ©‡w\×ğ¹Ÿ\Æz\ÒÀ\Ü\ÒlJ‡–\Í\Ò×§4k\ÎS\0¹\àó„ìª¨]Z”2U·=lüS<´vıt!\ÑP\ÆğJ€qe\ÈDy•\åü*\Ô`¨!l¹M\\ªƒ™K£\"Å fˆ\É\Õ0úÂµ\àÑoj\ËÁÀD33\à\×}½!p¤k\àh™W\\+›M†¬cä°‰F³ø\äLN*‘\\k¢\çñe¸)|\é\Ò\"5\Îlnv:¼V§fö#”C\Ô\Ğ÷¼`\ï\á¨\àwO!rX½/\Æb\0¶®\ÙI,ˆlA-6®\Ş\Ë\İ\ÒúØ¶À 6ıˆ©Ø”^ù–K¦Gb’\Ñ1\ZÓ›ûx\ß@ª÷\ïU­\âV\ÈPü4Ÿ\Ä]Ô±f\ë#f\\\"¢\\v‚Wl~(5\Ç\à\ÈhGHyaÌ¤Ÿb¶SXB^\Ãf—\Úş—U|Y\ÖQ\Åcz*Š%5i…\äsB¸\n]=,\Ö\Ó6&õ¨ó:°\È÷,\Î	\Ş[À’¾,\"o\â\ÈS¨,98÷Y_\Õyü	\\ö†û¾“€ñ\ë{#\Õ\ê4~­&5)õ±\ãg\ØğÒ¦\Ë&Dã˜€i\ä\Éğô\Í	\à\ãz\Ï|\İSŸ#’‘‰‰~\ÑlEy6\às\Ö\0>”-D º•d\ÊË)^\É+G-^\ê/\Ú¯/¢\åÖ­Ë¤2\è£_R¬;k}1©…ôe\Ç\î\ÂöciC9\è÷\ä”	i\â‘H\0ù¤;‡f\Õ\ÍN\ä\â\à|2;ów\ØF¢É¨ š¶£–£«58\0lÉ“b«tn\âôö\á\04c]\Îs\0—2¦Ì˜\"ñ\î1«}jf\Z\Ú\Ø6»P<‘n7ahü±Zt\éÏ˜ª9\ëjL·)óe:Ôº¶\ã€H:\é¥m*!\0û,=•ekfüplò\æı%»&kN°9¯‚aº\"ºzP¶­˜¢q\n^\é6\å÷Xµ\×d\İ/ûı\é\İË˜2\æ¸?¦ô|`µ¹\r^J!\â\ä3¾¥\0<opC\ìZ\İ·\×\0\îkv|À–ú2jğÃ˜1G:51K÷%\ìtp®#ˆ\"¯”utX\à2xcM\í%?\æ›.IùŒºØ™Xc%~v]!,»=‘tN9\Ö_ó[\ÎyÄ¤$EÓª¼¿P\î\r\n&be&\á¤[!…¶\Óû‰3µOSZ,àµ€‚\Ñr’\Î\ì\Ù÷d(§\"1”“‡*\Òô;qœ\é§\ÌĞµgDr¢dÙº3]º°R?õ9L/\à+Q>\n°es\ì=‹\ÎS™\à4\'\ÓÈ\ç~\æ(Y™údñ\r[W.ûŸ\éMZa\ä¬ó~1¶ró\Ç\ê6LP%Óµ:»1>wLuNrŠ½j|\ï8\İŠ%zoG\İ}E\Ê\Ògzu}‹#\Í\Û(\\sJ\Ó\rs\Z²·qnôp½CJ\\>\Ìó\æpÏ°rWºÿúzM^S–¤•òO†~\íÕ¨1a×¼\ç£)\ÜÅ›—q\'x\×3¨šp\ßÁ½Oµ\É\Ò\r•y“v+Ÿ¥\é\Óa\ëª\\4«s%ú‹YØ¨\Ñ\Ş\Ëù‰ROúÂ™ñ™´\îdç’¼­”*w\ZÒ„\Ú^\ÎR£7Ÿ7Š\íş×§øKsSşoN^\Ì\Ñõ½j±1½\ÖwL8\ĞW\È\ï>•¥š+{ösx¾ùj8¼¯Kö=‚\ì\Ì:»n\ëT\Ë,f–§Aa;§A6+=kôr‚V>‹Á‚$\ï™\İ\çº/\r„rb=f\é´ZP Gƒ\Ïøı›q\ÆS’\ÊÃ«L\'COô‰\ê`¥Mš\ãû>Å¡¯Uù~6\Æ\Ù9}I\áI\Ë\0\ÛÊ°\Öèµ¦\ËnHõ=sp1X°B]›\ÎrŒŒ2\Ú)fK`¯œmxR3@\áŞ³®L‚¨‰•ö;zF{i\ïôF ™\Ó<À±p\ÂQ3k—\ëƒiù<\'¾“^Œ<ğ-\ßh¸{›×yX\"B\ÚÜ¡\àyºU\ë	²ö\Zyó\×|†:IÊ£“®ùOH±½%»ßµµ\íöñt§¼h\ê\Zn6şI²JÏ ]ó&X(pEŒYŸ÷xCN}\Ézp<q£õÿ^\ê‘\éˆÀ}c% œiFZÆ¯\ÇWx\ãEÀ8;‹œ\Åı\Ñ\ÆBW4—­I¨Ö­#  \ÛDÇŠJ\İğG*µÿeô4O&\ÓWb\èa\'\Â\ä:‡œöN”rüt|\ÇÅ²¦\Û\'û”óVf^ÑÆ¶\İ\ÉÊ–\"úOF/\êV0ğ\Ş3K–8.‰d\Ğ`\Ùİ•ğk\Ê\Û3&¶cÀ®š|\\¾^et­ñ\ç\æ§\ã†R\n\ŞÍG\"ch\ĞIÀ(É¬¥¦òmj-\Ë`\î{i–ªVE˜ÿ\ì Â…A%!ö\ÌaMzN¾RY\Å\ç|®¾¼\Ğühq\è¼\ç\Ô§˜¨~Mq:\Åv’F\'^_³ \é”c(ú_`Ê®vL¯2ò–• 2Ù·\ÉS\ß&`”I5ˆœyN\ê[\Ï\ZN\à#¸{\\3\Òrk¿#Ö‘\Ù\×\ÓÆ¢\ĞÁrC†ôƒ¨\ãµ\á\r¯\n\à<®ªÏ¬][\ìz03”\Z¿¨L\â\æ\ïû³»qó³#\Û\é\å\ÖÚ{G¯¤¸a\ç/müV¨]\Ä\ÍZó\01	\×{²*Ğ€\×O\Ó#\é³\Ë\Î\Î\×.ÿËº\Õk>7\Ñf;º\Ü\å\ãG\Ã\ÎX\İ\Ä}\İ{“\Z\ÛF\ÌTŒ´k=UIº*‚RX\"ü\ÔôEŒ£­rR+Š}\×T%Ša}\Ô0§¤ó\n›(>dXñ\É\äfDu\ïI”t‡Ë–}%t;-\ÂB\á°>Ø”\"“ó)b\Ñ5_‹xµ\Ô\ÉSµLL¹J¦¡qN\á\Ôpa´\Åf		ß¬I1ñ§8\"õx\á]¸%R\Æ`Æ¡\Å`«\Ç\×\è¶%Y\ÄÕ»»E£“P\'£[}\Ïd0sZ‚À„“›†©­‚\çÈ”¹=/ÿ»¥ŸÔ™\àX\Ç ô‹T«Vm+g\ë¤#ÿŒõZ\íX\\\ÙI·\åñ\éj”\n©H^\ê³ø	}Vˆgi‘\ê‰\Ã\'?4»<\Ã1q7Ì¬¼T‘“\Û\n;ô6À‘Ã†\Ò4>+‘>\ëc9§6¢!\î@¦ZY\æ\ãµp\\\ìJ@¸\Ñ«·w\ZË§v\"‚!‹9rğ\ìğC™šF¿s!|\Ø5j\ØS„\Óı\Ú\í,N\î\Ã}€YÂŠ\áõ\ét\Ño•…\Ó•\ÆônE\ß\Z?{™2Á²¦Tœf¼5bO\àÈ²~eO+CEµN Y\Z:Uey¸¬µ‡\İ\ïm\î¥ı¹\ĞK\Å\Äf\0ƒ\Ëx^	 —¥û\×K‡\î´s\î	˜™‚\îQ±“N“9€ùó\ìz_a~Õ–ti¤‡x–zVk¿¾2A\ÛG\åV|\Äo\Öû\ØøX¾\Ï\È\Ê\Ñ\à@\Ö;ò\å\Ò\\\Î*û\ìO—_\î\"O\È\Èy;\nƒo|$\İ9R€tFQJ¨†5Qwt?J$@\í<\è\ÎR#\Ó÷#x\ËÁ“À94\ÎQW’\æ¡\ã\ßË\ÎL\Ş:ÌŸF,´T\Ø21ß¢\" aY•¹\ËSN˜4\É\èe\íi|¡c\âÜ›\å¦A\Å\Ü\ß<…q÷Œßºœ´!Cø³\ŞTbï„¼:&\È\Ùxñ³\åfjŒ>Ğ¦ğV=‚n\í\Zˆa–}÷gL±\â\\\ä\Ğb¢_’qªk\ZH^\ãn])%#²\åyµÎ®	Ÿ8“y\ß\\Pi«wˆ-›\"K²†Â¼\ãK\Û\×zÎµ[€GI—\ÆT}v1€]šLp\ì>\05T\É:[·s\Ïcrû‹±€XI~eı˜\Ïqj´;&¸0½EG\ØP\ë¬Ù²Œ·\Ä<Y Adj\àÈ¦£\Åy\Ñ\âr	\â¡W1\Ürd\Ù?¸•GO\Û\å~\åFC²½”o\çM\Ã70ó\Ï\\Ÿ\ÍFÓ§\é™c\ÎGÔ—•\ÓeWV?ƒn+~ƒ9x^r/&\Ù\Â_eŸf4\Ø\Å™08_t\Ø¾V±¨ü¹\\k\Ë\îƒ\Ä\Ï1¸³®À¼\ÌÄª¥\Òq]{iˆ\â=1ß»\ÇÒ¥CóC‘~\Í\ÉÄ©›.\í’l”\Úø)\å¼r­öÀ´9\İ¬\æ\Ê\è“/¦ö™U\éT;=š2!V¸À\ã\Û\ËI÷\Éş9^a\â4\ï^qUC\æ(³›¶\ËÀDInPÈ¨\Ê;¾:¦Á\r\çh>\Å\æ0¿1r‘M\ß` ¨¡™¨yÀ\Æ2ÿ\Ï\ØB\Êû-gÀ{úø\ä`™kiX†¢}\Îëš ZB\Ò\Şó-=7¾\nØœÍ‘ -†ì›¿Rò+‡`\ë\æ\Ù ¨]x¦xò!P\îh\Ü\Ì\â¬J™¥KH^>X\Ø\é\Ş\æ9ùT?§»\0\r\Ó‘öõÀq£2MßT S36›¦\èe{Ä’\ÃúxZ\Ã%jŒ~ˆ\İ$\È\È,%¼W¶\Ó\\ººW¹\"u¹\Ï9[rÈªV§\ï\nRŠÌ¾q¾g0+c”Q)\èU\Ø}±.\nwy›7\í5\'ZÌˆ\Î\ê\æÆ´G§fN¨!-\Z\Z:%+Æ¯\\ğiK®›f\ïá›«ªDŠ7	\äˆVô-@®\ä\áM˜\Õ~\'n	n\Å$j£Q\×8²G@²\Å-8À¸\Ék\æ‘Ğ§y3ùûZ\Ï\ËüıIy\ÎGU¾Á\rt\Ö\Û\Ü2\á\æ?o6A\åb†E\à†¯\ë\Ùk–}Àn!?\×\Öy‹e\Òm¤\á\ÍAñ¿ñ\Ñ7>\Z w\Íİ¢\îl¤R\î\ëT’?\àb\ÎA\Åô\ç\Ão#²&~§!¥ñ92C<(\ë\Óm\Êw,êŸ\nE\rÊ£\İ=Î˜˜œ„Jò•y‰\ŞÄ¡)iAœÀjg	„„,ƒ\ÑV\Ï~ô»\Ùf?o\ì\É\ì‘rA.\ÃH4tp¨s\ç\ÌDúô”ºº ™\î±M™ŸÂ©Y¦\ëPÁ\"N“P\Î\êA +¾¬(›\Ã\è’5#\È8\àK= 8]uÈ„	õ\ÅI\Æ(z^r=]>	G: o;¾óL2\Ç/^³\ëy&\Ùg…>#¨¨Ÿj \Ö,\ê[\Ì\é?—\Í.\ÃÁ\Ìmó\\fH¡\à\î\È\Óò\Õ3«\×tl=\ä\'$Ø¹~SUŒ—““\n \ë÷\Z\îÿkÁª\á\ÈPi¸ı‰\nÉ´2¸Y\Ûø¦[™RœIø8¢‡z…\ß7¥}¿\Øp\ëˆd	\å(\n’…pe]s´€@…\ëğwES†‘‹†–«´¡ıF\ç„1Œ%>[¡úğ(Y{<Az‡¶£D\Õ\Ñ\ãª+ct\Í6\éø#\'\'\Õÿ\ÜD\nhgû\ÒJš\Î	ˆ™>Wvò\ĞÙ‚tkü\È9\ÎW¶‹$n@G!ì™¨\æ%/Ã¯—’\Ë!\n#\ë[V\è­Y“JS¿\ÚRŒâ‘›ˆ¬²\ë$\Ğ|FMÉ¹°¢Í„Œ\è=‹\è\Ë\Æ\ë\àsÑ¨qY~†‘Ëƒ1ª{‚‚\Ï‚m\ì\Éd,ed¾3_yA/\Úe#+«–ø°;F\ÆÎ—+À4ûñ\Ïx\Ä	4}4‘W¿_`\Ë\åxƒø\á IÎ±\0j-Â‘ûğ9;nz˜Ww\ëq³—¨Ù€C\Ç!\Ä^8iE\Ê:.V2PORaú)—”C\à\Úø¢Œş8\Ü~ô•óN?ø!u^z„B\ê3Z™d6£•ê½µ3\ÛjM{\ë´ù¢nV&X\Ä“²+‹7)\ÇLÆ(•`°òÿ¬¾–\î	”\è\ÌË‚ ·kX\â¯8š ½„(}_§58iÑˆ{bf\İZDI†-\Çò\"Q:[\r\Ï\êˆd>3\Ó;Do£¹Xu\Ú[\é\ß\Öe®\ä4Š\ì\é\Zı¢ÓŸM\å1KA\Íö1¤k°“n¥\Ü7o[ó4?#\Õ\Ô¶\ß|˜H¸¥T—\Ì/!\Âyz›´+‹fØ¦3À÷\ïƒvİªmK0!1,9ÇŒ³\Ôy\Õ\×){¨4\åzc\ë¥{Oø÷¨)›3jûF\ßJiŠ¬”\ë)÷\ï;ã½¼b\éU”\ÕTÂ¿O•Eyı¶<,{_NiMÿ‘\ê\\o[›,V™W\â\Ü&\\¨½\Z\ïó10=°ôgl®‰D©\âO‚+<“\î+Qk³7k\Ópğ,\Ô=Àµk®¶N0¬F=qMYk+ oˆ¬\ï}­\n)B\Ó\ÑTú¹Lû/\ÍV“\â.o–M9\ØZ$‹¢\îÔ¤)–ªœ\ém¡¾Vñ\èpo_Ó³\è\Õdõu\'N\ï\İ0\ê\è“[R{H|D\Ò©}¾š~DD\Ì\âz\\\á„Ğ«I_ù\ÄH±C§÷û\ßY¡ö\â]\'—ñ•\íeY\Ë\ê\Â\ZÏ \Û\r;‡FjgGr\Ù\Ğ\İ&”\É\0.{•‰5÷\Çd3\Ó\ä\ë\ÊJ0˜\î®Mw|VS\É×‰\Ú\à«ó\í«¡#C0¶w\×l:£uAƒy0Ÿd‰\î\Ò=\Ø?`<\ÏÜœt›²·É­€Ó›A\äP7[4&>m¡†›©·M\0\Äğ|\Û{ÿ!O\nz\ïšD5ã„“Ë˜L\Ê?\â\éh1«\Ê\É\ËS­\ØøXÀ±\Ñ\ÈaD(É¾<RD¾º\'\Ù\ëA\×\â5›[³z[ì’‚q\ÌM`\â—*õ£\Ç^ÔUa`e\ÏDn\Õ_=o@ü:©Àµ£W“\æh\î)Àe§nM\Î|˜±Fu¬yÒ>]Yñ(\Ï\Ã\Ì\ç³Q\Ü/ƒ\è r\ÎL\å+¹º\"\â‰^‘©~Î»\Ï\ÕO¸¿\ØÇ!s\n\ïõÀ™÷\è2ˆœ\ÎÆ™3°³S\Æ\Ô@¸\éb(š¢÷n‰\Û.Ú¿¡*\Î\Øe\nP\ìb\07Šº\åmF•\Í<‘\Úqœ¸\ZPk\äøs\Êú\Ô/0r?«\Î\'\ØP\\¤Ñ¬C \Ì¦\Ä‹#\ÕG%m\á9:µv!G&r\\\0OHˆÓ‘²‹ Ç´ ®„IU0G\Ê05Ñƒz¾­\ì,rÀk\È<#A¾¡WO6|à ™:yi¿n»üº·©}¯eJ!t–§™_· X(jJ”\Î1ş\Ïh·	!Ém¨+Á2sI‹\Ğ\Ç\ÙC±s\Ò^qY=±cqø“A3õ¸A\ç\İÀ¶\Õk\Ç\Ñ=ó\È>\Íı\ßi&U\Ì}>£|Õ¹g£[pqW£Š2\n®U\ÏVFZ.N\æÿL\Ú9ŸŠğ.‰i¨Â±\è^:È”\ÓòŸù«½\â¤ó\äó(\Ô¸\æ†ˆ£Mw™—\È`F„cYw4\Öb\0\é\Å\Äe\Z[(E`…@\ê\É2\Û\'Y\Ò,ñ§S,†Á…\îjMÄ´7,ö}pş@QSî»½?E”{£#\ÚT2¸ f—c\ã4KF\È\Ó4Kˆ‘Tş\Ù\Öø\Õly„\ŞM94ˆ»¨«”\ìG\'\ï|^Õ¸£¥÷;¦fy‡õ­	óYnZ|wÿ#)\ÔQ°«u\'Ò©>…Ü¼_f\Zø\İ%>«—\é\ì\0”ú,4\Çõ\Î\î\å\Ø2:\Ş\0®\Ã€ò¤O¡ K–\"€7\Ë`¯L1Š¬YfI#*º–^Iû©X<R\Ó}\Î450\Ï¶½ô¦K3¨•¸ˆÀ$Ï¡£ú3#\İp­ñ\ÅRº#rgO<°\É9\"¡.<zs‡v\ÓJU&\Ò\Ò8Œ–Ÿ.=:/ø\Û@\Ò\É\\.döSº‡Ä£?u\ê\Ø\Ã7UQ8-µ*Eˆ\Ë\ä\ä†\Ê\íÇ‡\ï6¹]\Ãnß¤Wwõ¸n ¼‡–\İ\Ü\ÆÁy\Ï\'L3ğ\Çg\r\Ú\r‹G–[¼kDÁ\ç`\ÎÁÿU¿\ÎÀû3§*q+w[Uºórˆ\×\ÆoœM5ò/7×¼û\Êy\ç\ÃÇ—›\ã\ÆF€)\"\rD\Ğ\ÊmOf_\nyu<p\ÂhšI\ãQ–Œ\ÒZ/pS“¨“\ì\âE+Ü¹:~S\Í\Üc\î>Ã°G\Z\áh¾®C¢Ÿ½uªhŠ7ûû0\ïÓ°ñE)K§>0\0JÀ­Ğ·¢\è­J‡q¹S\è#üÁó0©:\îE\×÷\ì¾(-ô\Æ	[‚\ê§Pç€»\"·W©¢\Ï	:¯d‚1	…IÀQ:.B\Ğ\Ë<L\ÛÿÌ©\Ñ^\Çõ\ÎhºQ Äø\åE/Û¢\Û\í\Ö[nÉ´XD\ÂOd\Âi\\-ó5ø=rb\" ·…HË­á‰\Ó\\Sw\Ç\á\Ó8UG\ï­\ÄW™L˜R\Ç\åcYI\Ë\àø\Æ>š /\éº¨Y†º®2ŞŠ2\ÔWˆS\0Ğ£ó¡‹P9Š¬\èğ¨™\Ø\ËP¹`LkB;&&,\â\è/\ÓJm3¦˜ñV\Æ\Ô\Ş\Ãö¦«·^²÷¶\ÄôE†³B±´Aš8\Z\Ùl‰®\0z(;¨ó½±5Ö…C}ŸH`ú8²¶·’¡¹k¾[Èº´fğv©w›&\ï§uö`okö’X°9N\Ç8®2O‹y­·\Ç\êX£æ­±n\ZŠ“¸´°9¿;º.7@¼·\å¬\éO\"³4+–R…œ‚y\ÙpfèŸ¹T€Z\×@ø¼Üˆ(\Î5\èwZFX\ÎÀ\Ş,‚)£»³&†‰ó©C”\êu¯³0/J“Ò‡`Àº+û\\\ïIÕŠÀ°\Ï>\á°Psœ™4ı\Æx+…¸o^»¦J÷YlV„<U‰2ID\ïw?R+\Ó4(8ş¶ùd¡L˜S/¢yó‰\Í+wBV8²?G@£\å\Ë\Óñ\ZUQ•õtFJhD\ç\Z9¥ePo\rJ¡S-j²&\Ø\Ê!\0N2š‡ Š˜œM´¨aŠLŒ¾ºM2\ìø\Ì!«-#…É‹\Î)\İE®\ÌJ¯vƒR\Ò\Ù\É\ë`ô\îI2½«ta²p¸FÈ˜‘w\äG‹3˜j\Ò>\Æ\×D-¸s¾\ÓY\è5úˆñ\ÃqQ\áÿ rö8q\ï\Ù6Ù•*™)7%:m¦[§\Â\êt÷œ%\áˆ`TnÄ³,e)\ĞI³	\éÓŒã´Œ\Ğ™÷+dZ\Z;Fq(úI5–w\è\Òcú_D &\Ò\î$0\äF§B\ßxl¨‘F2°=¬\ìø\çQ«+º\â+k5\î\ÓHÑ²Z‹Á\ì\Ú2‚öü¨4÷¢\í–ü½ \ã™\ë—kómš\îš“e( ¨q.“	BV-Mÿa-´Ô¦Y°3>gä­¬55\Ş\É18»\äO¤\İ\İqY\ïÊ¨@©ŒÌZ¶FƒJ_¢…ósoÎ+_Ÿ¶¨şÎ¦l®l«#ô\İÄ ÷­,~!&©¹}½†Na‡97_Ø¤IU ’\îæ±‘?n<\n4vòF\éõ)R×¯$\ÛjhšKF¿otm¸\î²Nÿ\rd}Ú‚\ÇAk-	»›qhCT§\Ú÷OĞWUó¿=ei,ò\ïG\ÑWæ‚±-¯?·\íO¦ˆË­?¦ô9\Ü:\Ú6‘Ì„ƒh2‘\ŞpD;V šfºaYGy‹s¾w«\å	$Ş²)†\è\Ë,”cE\ÂÉŠ³D¨vL®¢¿\èNı \ÇC=¶3“]&\ÃhñşÚ¡\Ãm\çùI>•©ƒ;\îX‚×¼ƒ¸\é\0yË±\ë!ğv#âƒ¨\"3dÊ˜å”‚t\ÏÕ«\Ü÷i¯=\Îe\É\r\ë>s\Úf¥.^Œ!)#O/\Z„1\ÙçŸ„mKÂ•±y-ñğÆ”?p\äÏµ-!§\Ü$J©2^é³˜³\ÏCN\ËË™{{\ä˜\ï¢4\ÃòR<¹ƒ&¹-.û³Ş’ŠÔ›b\0\ÇÁ,W§¡\Í9hIE°\Ã(ñ’\Î\0/KY9\Ñ&‰\ÏE2K\â0nPD\éš7?¤Ó§}„\êM+\íõ\r¥\ÃA\â\Ûş*J\ãS\Ğ·\ÆgN%af‹®qWJ¾1\Ï0À³¥^ƒÀˆ4\0-A‰t/RQvu8=\Æ\ä5_\Î!¼—,qh$AÍ˜ò\Ã8	\ÓrZu¨ü`4u0O…K¶¤òeÿ&`‚\é¶(\Ù`[,Ø¹ğu€pw ‚m´°\n!\0¦\ï´	4òñ{÷ndO9N\ÍY³\İvo\ÛR\ãŞˆø\Ä\ÖB\Éó}u–u\àÿv{qºE\æğOw\æ¸Cr\"Æ¥‘9\Ê\ß\ĞBt‚\Ì5¬\è¢;‘ñ>F¬\âtüš=(—<\îgfyU\\|€)[3İƒ\à	\Ó µü\\\ï2Å›\Ãó3€\Ç†m\âÀ\âsø§r\Ò\Ï\Í\ËQ~Iu\Ä>­8E¾\è±\ÆOqxY[ºj¶¦<\á¬Ošµ\ÄQOG¡q*|\Ä\Õ]R\ZÕ·|oRM²Gi>¾&R€T5d$¶…#&ŠÁ\Ãk…Qş€6„\n›ø”5{\í\Ã!\ÍZ—F\r¼¶\Ï;*­¨˜¸K	I‘/öFZ\Î\Â÷\Îr\Zkc›A0‡·|€[¢\Ãõ¦P	%#.–\Ü„ko@3w\Ò%©\×Î‹™vP~$GoŠG\Å0\Ìûn\Ü‘†\Ê*³K\ÊJ>Ç¼ywüu\ë6€ND[db/8H\0´tÉ¤\ÄJû»´¯Xrò!§·G4*„ßœ2§8\0W‘\áA±<Ÿ C \0v¥\'Á}$¸D³ ‘¢\"\Æ?§\ÄYA\\‹*(\è±:s\íù \ÑÄ©¼™“óyAÀ-Ä€µ³.ôdš«\Ã\\ `=µ‘s—Œ³p\ßòB~eö\"Z9\Êş®—\ëV\É¶zZ±†\ÜM6-ñda¸Œ\'0\Í\Û(‘›\å4Bòp–\ÈPYÔ²u\å¤Zv€|bi\ïöpfSeÕ®\äjo¿\ØS\Z—s\Ñ#\ËmCº—\'!LkÂ™\î\Z\nÏ‹<+\Ó\í’9§13£Wlt+Æ« ¬ò˜À…‘Oó¿!”\ÂvL°«œw™\ë;(c\éú\á\ä))·²9ö4™\é\é#\äşL^o\Æ\Ôó­7M¶Hj›+‡4\'\'\äĞ¥]\ß\åÒ‚•ù€¤´fù\Z\àig|>«òªğ«+hwSš…\åï»¹Ó¥2ü,¸¾5MiEC–Ó±®<°ú2i\Ê\Z›‚ıhKi\Êrº‚(\ßWÖ§k„Î¥¬1…\ê¥u¨#œŸ)€x\çÀÇ±\ãªw’4hq–¼ºñ3´q…hª\æ²\Z’yA¨Œ²DûŒO·/–|8\Ì,*š˜•ê‘¿4†\Ú9©#h\æp2ÿ mü§û{Ë½¹&H\r\â  —&\áH-#x}L±R¸}%Œ~:Š0…\È’œóo\ã(\ÙEû\ŞøD„\Îlş¥f\È4üò¸8\ä;8ºĞ³¸ƒ­\Û®9uy+lN\ãa¤]ZdN\İ¶~\ë¯\ïygM\ZŸNHN2Ÿ\ì.÷ün¨k:œO’\îp\Í)-\ç5t\Ì\Ò\nf0™\Èq°\ÍS¢\Å#\á*°o\ä@Öº\â$®•\Ñ,µ®5Á\É\æ\ä#õ\ì¢7ò£K˜:J«ùk’1.v\â!\n9\Ç.\\øó¸Œ÷uœ-\ïdøõ8\ÒøedyY7\n¦\Ú#‡üÍ™º\Ãrğ:d\Ğ\èğQ÷K¤…l—FQ+<\ÍRg;Cr÷¯ª¼/\å¥4\Ğlœımzc\Ï\ï*¸ùğU0Ç•ÂŠ\Ëÿ\rƒ]u€]¥\î\"›\ê0QÇŸzfOÀ¯\â 4.\rÅ›¢¦:ñ\ÍòO-ò\áQ‘-\rsÄˆIÀ‹¯—\Ñş¶…\æ<|²K\àbL-\Ü!\ì²\â\0¦\Ê\â96\ÏCWL\ÅÀ%\é\ÒÑ¾‰ıG ›»\ÕG\Õez·ò&t\Ê\Ø\Ë\Ğm\æNø\Üó6Ro\Ì<\êDÈ¡ƒÏŒ§Z’_™i\ì\å\ÕC\å$ğ©/­°¯qtÑ²\İÈ¬ô:EŞ°‡\n\áN\×#Ó»\à\îEª §—/\Çõ‚	\r@0P–O\â\É>\r\îY2\Å{ĞŠ7\Ã\Ñø2Š‡\nÙ•Q¾²\Ü\Şxø \ÙoJ\Î\å\Õ$ u\å\Ñ)\r\Û\èM“\í\Şw:”‘¬l»…ôŠ¡·	\é­M/šY\×kği¤Ç¥dyg\Ä#°D\ìĞ¨Zzt\ÖıX\è\Ñ\Ä\æ[ƒ\ZNLQ8ª\Ñ|]p6@™6\"±q\âÁÒ©^ùñ\ÙñºÓ»0T5µŒ\ÒÅ³W¹ş¡…§§v\ÇLuoIÀC\ZOŸN÷¸t OWaa\ZJö\í\ØY‡“_Nšğ°O\Õi\ë5Ÿ¿Áy\ÈV\\ç­\ç™{:\ê\Ûg\\‡\ÛZ3ğ<Xu\ŞMF\ë\å\Ù5\Õ5\á~\ÜuôR\Å<\ç*ë¬ tÏ®G1\È\êİ’J™…\Ğ\é\ÑÁ3—\İyiFVÒ£²\ëv¼\é\Ò\Ö,½qAr-¹Å^ô·(EüfG€In=	]\çR\Ò\á¯\Î\Ô;\Z\È\0…q&#£\"tò*H¿ª‡}e.N\í»\à¶Ê½f\Åº¼\Ô\ß\Ú\Û)^P¢\Ã}Ø¦¥`@©}\ã{f\0&9\ÃüH@¬L¨¬Bı¯;Œ\Ç,M\ã¨\Ø\Ísrh\ßb\Ü\æ=£\ç\Ì\àq·,±®8\ØV\Ö³Zyx\Ïù\Ú\Å‘\Ø–¬i\×¬¶jdøC\Ë	\00¦\ËI€_ñ\Ë9¶\ÚÀe	ç˜³¦\Ã?»|™Dªq1£ÌŠª‚k±K—nüdXm§^*m)!ğşy\éœUO\'˜VQ;²!\ï\Ì\0¦\å(© x4~^¤o\íPø\×\0Óš\r<+gq\ÌÚ»˜¬ƒge\êñ\×g¨?Vğ%\"€\É!:@\ÂdB9=e¡c©»;\èùjnnñG%û\'\'\à‰MÑ‘\"ŸFr#3Œ +?o\ÑH¤\Şü–†òHf½{UP†.\Í#\é\Ò@]šôwn\\ªı„s¢s?#…‰<\\·ö\0ŒAtñò7Ÿ@N\n©+Zœc\Ò8eû õ>~ˆ \ZI…N€!\ÈA\Æ3ÿ+\r·\ê½o,-\ì@¶icz\îN\ÍU9õE‹\á>=½\ÉP¬’.­N‚¶ÅŠ6¦´&@\äÛ¬Ê›u-2…Á´ê¶ b±2GgFG\ãÓ²\nDñ”eÍ±\'¬üü`¬q«\ã-°€¯\Ã\0\Î\'‹¶˜c\Ï@w_\Ü! •\ì²®\ï™6=\Ù\Î\"\Â\à\Ã\äiNyH=E¶R\Ã>B6=#%=\Õ\Õ<¡ä‚“Ø€o\0\ßBšô80ôœt\álEƒWö_lQ\Ó¼\ìHó\éÌ‡W”b€\î\á´\ì1\ì~ô`º©G!ÈH½\ê ‚\Ê<€#?F*b|p†˜ß–at^\Ä\Ø&tŒU\æ0w\ÑkôygøA7úô\ÔC!Kñt\Ø\é¡3\Î\Ë39y\ïƒòNGÔ˜q9”\í\×È£­…\Şp%[»ô\ÊóE‹+\â3® sFw-:œûe\Írü\î¸IPü¢ûdş8)‘\ÏN€>¤\ím›†µ÷K\éU97’Li\Ù¨+Ğ³,\Ù\Ü\ÓJ\ÅÖÂŸ6„	“{%\ßAUÉ‰†‰Ë¦TP³I÷#uŒ&¹\0¢,c\â€ÿ™¨”I>½CdD·ü¢8¦\İ|\Ã#ÀJQ¥hfš¥Á›¥¾1‡}5¡ Ÿ£s³\È\Ø\éNŸRz\ß\×C\ÛÚŠ\ZQJ,‡\Ç9LÌ›²i\ÉÓ–\Â÷¿Jr\ïF\Ùex[SÅ›\ZşßŒ·J![¬\èş£:\à[	\Ì\êlH$:”Ÿ\ì\å>2HƒJ\Ä\ï\Ímúôx#û©]è·†™¬ºM¯\î\0nYnú#C‡cwZ\æM‚\ÑL¦‚\Ü\å^\Ú\àì ¿¦$ÿ˜ó\Â¦•\rÌ–a)·ùk,O®1\Î{=F‚ƒó‘tU\Æ\å@\ç\ÃÊŒVF3ô¤QFbù—¼Ü—ºC\Ë\na³¾#\äJ*m\Ã\ßõ/\\fk\Ò#b4\Ù\Ì]eºopexM:n5¿Ü£:À´,WS\å¨\ël²J\èt\Z%K$÷÷ğ\éS`ZS\ãË£b«Lk¢ƒ\êğz\îÒ“\Ê>´qú\×\"a0{gnz«øK Jó£X˜»z \n¶Œc²\Zmd\Êöˆ›Hnş8¶7»¸@‰‹‹\Ø\áº\á?E”1ªaa¥»§»=÷\ßYr˜D›\Î\Ù\Ò\É.‘	•±NŸ\ÎT\ß:;\é\Ê(\ï5WŠü\×OŸ\æ”ê°™% 7-‘3Í¨ös\İ\é–(–´Òƒ£…Ol¨û\Õ\Õ\Ó“\")\çñ¸\\r¨\Ô ˜N(»	eZ	(,«pmùy+…\ã7 X*…»\"IK\è‡\Ş*Ÿ±‡\á:\îT¥s\\ôÀøª§PÓ™G8ø¬¾ œ‡ \Ş#g\è5|¼}8¢Â¶À“4qB@d˜ıòŒ°ó/f-²T\Ã\Ü@3‘÷\á2‚\Æ\Ü%ô_—¬\éL\×|\Âû-EJ8.±O“¸WDST\é¥O[oÔ°?C87&%Ñ™šO¿½û¯/‹<4!N§É˜r\Î~ú´\ãbBab\Ì\Ğõ>—–MQ:Y|œ¿4\æ\rrn\çÔ…!ò\ã™³g\ì\Ã\åVù\0#m¨¡…K!&\×½*Pj\ÖR¢¾¾r\İÌ…l Ñ·! \'\èÓ”^\Ä\ãJ‡\ë\äâ¼“\0\×B\"ú”l)\ç?[½gô\à‚2\Îf\n\Ø\İ\æ\0ÿo“«Of™\Æ\Ğ\Ø9\äToƒ\Üfõ\'˜–û|\"!C`ª¥-w¢\Ñ\á{1z&\Óp±LıŠi¹\×\Ó\Ó\ãúlğ,87uJ«%D\ïK\ÎÁ{\Ï)x¢{¡\É\èû²\ÛTMBˆ]» \ÈP\Çkûİ‘J_½QÀ ¬;…ˆO®\ne!v•ŒöfÀ_kŠ(ƒª>oµD<z\ì½]ôtw5ù\ØP8+ˆ½b§\Ó\à —Å‘\Ü2õ|’xMõOF¤ó›“Ò‡\é\Z#{<´\Z\è˜\ÎÆ´ø.G®1\ÔhnÁ­œ\Îİª¡o“´¨Q\Å¾z¬\à‡\Í==#‚\Â24Ä¤”\ÃL\Ì:\íHd\éG\Ù\n‰ŠfûVŠ8-\0\íØ™g´n’“\ZŸ\Ä\Z…²I’_Î¨¦L\Ë\r\ßk\ä6UlœG\Ö\ÙQ-\ìFŸ#?{QÈ–	P•\Ü4EB^ÀyÜ¼\ÓJ‚p.šY\Û\î\Í¦¿×°ó\ÂC\Éyœ´\í\Û\Ó\é\ÆG€÷ #zX\Ï\È\ê\é\å\åuõ¨ôœ®rJrb\Ú\Ü\ÂüB‰Š\ä-®“q\î3¾@IiG+\ZB]3ú;ZX>õ=\Ån€¢\Ü\ÅtÁ†€I¨x\î³\ä~úÛ\Å{”b.L|N6€	m°0n$¡gè•€œ¼X\ÄxR»V9O<|?Æ_7Mr\Ğ{D\Ê\ÃJx,!s<ˆ\ĞÁ\ÖcdNÄˆœ\Ì\Ğ\Ó@’\Âr\"˜1O[›PO<ı®\ëó\í\Æg\\Ş±ûY\nJù$Û‹2Ÿ–«w11-\Ô\Ğƒ2%Å¥œ$)8E¶Ì·\×ut\àBEœf7~ğFVs\Öz”^\ÛeNŒ_‰D\îvÁ7\Û\0Æ–› ]1­½\ä²]T.Ï16\á¨\r\n´n€o\ç-˜\î<\Ğv\ßÿøp~*\Ãt:O\'}qs…ö³\ï|=Rk]8šz2\ÓJ¶\Å\Õ\0”…5ÿ\ÄGø\ä€>ºÈˆ iw>9\ím<ğüÛ½=\ÈT\0¢Š\Ø0Z\Õ5\áÁ¼@dXˆıc’\å=\è}UG	Ò‚É–5Z‚\Î+\æ\"¼If\ìx\Ò^lk»®D»¦D:5ri=²¶°CO³ù7”ª€ş>ğó-Ñ*_mfD_\n1\Íw\Ğ,\rS\"]9\ØU\Ëö\Ó<\Û\Â\âlHA\çDU8$©FŸ¥\Z\Ï÷\É.b™¾Œ8W8Êˆp#\ÌC’\0 V*Z\ÜkƒtE!\Òxz\'úš©(hHó\ë\×9@¤t\Øñ\Êj„²d+ŒC0f¤\Ö•\äo67s¹\Å\Ò\ÃL\à\ÕYq\ÚlMpJ2#´\ÄI—¾\Äf5pÄ³Ÿı\0·“.qˆ3 \à\'‚„e\Şg\ìñû8ß»4\Ø#(óö\ÉfŸßµ¸iJ–\È\â\è\ï\Íg^¿ñ[JŸ7\ß\æY1¢\Æo©nŠ \êû§\Ì\×\Îy\×#7o!´i\×dn$\Íõ¦\Î\Ó\Ñ/»‰¼‰\Â÷\×\èEŒc®ú6\ÜvV›X¶O¨.yóVhœ\á\Ö}/g–\×q\Æy\\™p„\Æ#P\í¶\Ù\r^\n\Ô?Ó—ıxi{“#À€ˆ¬°2BÙˆ2„©Ï b\æ\Ë\Â ı\İj€+Ş–7‡1Z6?~c\ä²ù„¼@S\éÈ¤q—†ƒ-;,\Í\Ş\Ëòe…æ§—T\íd#¢\ë~³$^Y µ\Ïw‚\Ñ7#|b\é_\"Œ‘\Õ$°¦—®­\Õ|>I!V\ZŠ ËV_Ş¦WFÀY’2¨S\nEĞ²*~5~~p\Øb y­5¶×¸”	ši\äÚ˜m|¯8xV˜&©$Xv\r)ŒğJhùwØŠ©\ç•\Æ ZœU\î\éM\Ìc¤\Å\ßp>»\Ù\Ãl\Æ\Î\\ş©ğ/9AY´¤\Ãà¸ÓˆE€ei\İ-Ä²ınl\ÈA\ã¡\ØL¼/	”\à4®uÆ£­\Ìw\ì\àò´ŒC&›L\Ô@M\0ÿITO\"\è\Î\ÃXy\í\ë8\Z\ê4’((X˜•ÀQ©Ô÷¢\ÅI §ht\Ò\İo°h¤\Õ\Ò\Ñ\á°,\í\Ô0J\"¢`>c2 HFAÿŒi‚\Æ\éŸ\éBy\'§–6HS-ù\Ë}Û¥÷¼lC\Z\Ì\ï/‚’HQ	…(³!|itF_I(­0XÆ9w=õ\0¦©Ê¦\ÖÉ“™\àc]L\æı+‹­~l¢\ê1>G\rTsO\İd8¿\Ïk`w\Ï#P\ÖşŒõ\×É—‹ˆÁ¥h\í* \å\İiñ‰\î\é…ğòE3ûn“¢#\\_(!õk\Õ\Õhõ‚‚E#\Ù\éĞŠIÂ¹]\í½6\0\ßf\ìüGk\ï\ãVfœÿ\Ç%cò¸Z!¯\âØ‹H<Á¥¢#Æ¦¡\\HS¹H\Éñ\éÀóŠÊ¹;¨\Ë7˜d\Ë-°›qu\\\Ë€6ÀIr†…u\Ï3<‚³ßºô&¬\ÈuùRÈ¤´¿$°H¬\Õ·>D{\"¢›\0Ò°¸Lş¤c‘š±‡{=\ÛBf}L\âX\äú½Z\Óh²­emM7eûh\Óz°W%‚¥-µ‘T\İ£µy\Şğş®D#nŒ\Út]¢l\ë$`oñö;û8K¨^#{´\í\Ë6\ä¬\"À-øl\ï\\C¬ˆi$\n¾?«ˆœ\ß\İ\Ë\Ç\ß†\ïD®ÌŒV}\ï:»ı¤qU Æ¿±¹\ì\å_FM<¯¬O¿XĞ\Ó\ä#ªsF\Ä\0\çöD„S\Ç\\ı\íœv‰;q\Ğdª9\ê\ìAôödŠ\Ï\á²ı5\æ#2˜u@šò\ç\r‘–q0h‹ók¥YøÎ‹Fmi?,SH&\Ø;;,\Öe\\ß·\Ë\è0Æ–DŸ\ë¼Foƒ˜{‡˜\È5\Ï%d\Ş÷$„;\Ë\Â e>\é›j\Ïm\0O0‡`\0v\êJ#X.¾{&€X›­ª\â õj~\Z-DMq:E NĞ¢A\ê%½Bº›8Ú³sr\ã*õ)`¯\âSjCL¥\0ø–&Á=\ã`E6…õÁ\\¬vM‡4\Íh—\Üp/2Aq—šKn\Â\Ä3¸‰\ÑKŸ\Î\á\ÓØ–$€«4W!Nµ.Áxj_Ÿi`\ØV˜\Ì6²1j¼„ù\é®>#)\ßôœ–Db@x\Ò—û8ğğ$Œ\Ï]ÇhFÿ\æ!\n`ôŒy2À’N˜	\0a~ c@0¥\å1l}Ò§\Ãù3{p¸Ïš\\\Óû\0\"\nz®\İ?#„\è\ÅC\Ê	\Z\è¸\é\äÒ¾ó‹½[27%\n‰&½3Lœ\è\é\é\ÑyV\n2ºO–D\Æ\ãL™N“ñy¥\"ÔƒJ‚2ûF3‚OÊ¤\èŠô¶§\Ë\ïöC8\ÅPW©PDJ6ò\ìc.}\ä\äÍ»\×t\ËÆoƒ´‚–FD\Úˆ\'=oºOh\àBª\ï&\Ì\ÇÕ—\ÖM‚Á,‹²S¦€m1á”˜\âê‚ƒ\æ\é\Ç\Ñk¨%·\Õ\nù”Na9\ÎF]5\Ò\êŸG¿w\ÍÒºDú	\ây”ª\ã2û\æz´@²\nMŠ‘\ã\àšS\00\Ì\Ò\Ëçƒ¢L\Ãzı\éw$\n¿_Ê—u[Z\ê¨C\ä@D\ÚkÒ£\ÆÖ”,\0Kõ¯eù>O‘¡SÄFL¾¶6™+<`zqŞ´I¦[óø49ôp’zXJƒşQ¸hÔ¸²5ò\îv\ÂaB\Ùù½\r%¿G5€1ı£*—(\rRD­\r\Ä9\ècH¶¼A\ä¯=°„²C#Ù˜áºšNJ*ı<KºTš\É%=,`>r	C]1î´ƒÿR\Ñn_h¥ˆ‘f\èe\Íh‹t\éˆ\Ö+¾¸\nˆvö\Äüùg §5Rï™¶G±pyR²’À5\İ@q\ìF8Àyc½’u|˜¾è¼€[ó‚\Ë\Ò\èuœ.ı9!~¨ƒ\Ñb§¿_\Éf; 	Çš¾]\ZŸñ\ÃˆXgeòğ`ş©›À°X‡Y¦*;+\Î\â)\äYgÑ¦™¦Z Z\Ü?oI/\è9%\Ê\í\ÛÁ\èY¨ÿÈ©[¯®•\Éc‚P&O/“È£OSü`Z’\Òs¿¬Œø}»­\'Fj–\é™Úl@­-˜\Ö\é\é\à”t\ÖL<:\ì9B\Êf\r†ú\èy9ŒDÏ™fR³\Ü÷m©Ü„?Y_2\Z÷AOo —¦9Õ»½\è°9R\"\Ñ\Üoei$:Œ	F\Âñl\é\Z\æ\ÕT®­³t@ù\\<ÁµT\Ï\r”w—\Âÿ²kh\Ä\âKA\Ğj>¸\åË’Bu¾pÖ’ :Cª¹7\æ\è‡E\ç~…\í¥`v©5÷<ƒº³`.\rP‘W:PÜ€F:(YB\é‰\"\êD5J™°´¦­º2¦\×=ÿ#10\ËõšúûRº)\Í\ÌuöÜ€C\Î\Ø#½O¸®›\'|,À¯hÀ\é\çU\Şu\ìƒª\çrKÒ¥o|\nt#\Ûğ\Ô\Ù7T;„‚M	D*‡\éÏ‰c£i\Ç\Ï8@	\áGH`\ÜØƒSÍ·`º4\ÛZğ\Ü\ÔCc \ídšS\é\è³\İvÚ®™J\ìq\ã/T\ÒL‡e‚n]tPoLñmj`¾}µac†¤v¯¤®-VºßŸ6\Øs\Ø+F\×ô¡Œ;\"†9q‰´E\r\æT¤´?‡B<}€]!‘6ä¶K8tN’­\Z\Òşü$\rbb0Ù\"UOJ´2Š\Í)\Âæ¡‰ÃšD÷Z<\æd¡³\Çƒ\ìJÏ™\Å\Ğ\ÉŠDÆ²X\Øz%§T†Q>‹€[ˆSÜªkJG@\"=\Ú\r¿Fˆ™Eñ4HYúD¦\ŞAMÉ­tNhY$Q\ß¦\Ó\'@S­\nÀh¨S\Ú\01GLC$b$pZr£\Ã_`*%< s\à‹^®’!ZK]\Z\ÎÊµ\â-\0Àš\Ó\0®\â\âAÆË½mõ)ib\î%10\É\ÛDZD‚MLı²§£x7\Å\â\æ§\ÏXÍ ò´:Ù¦`vV\\W\Ê)\íšzŸ×\å\Ø\Â%U¤„ó„Ÿú—R<¦\ÓJT±•ò\Ú@M\ì\n\'P\'\ÉL\ÍÁ¹¦@ºtZ‡³¢9¸¹1˜\è\ØL|„l‹/¢:õ‰šO3Za\rš\ÆwQ\àyƒFSoDl\ÑújG\\\êv\rp\Ü@\Ó\ä\îö\éÌœR°Ù¸ñ›ZSZ®\Ö\Çaa¡4\Ïk§Q\ãW#÷O\Ù=8q8Ó´:o!“¥güNÛ…š(;u\ï\nw¦Ù“ù¶¥{\ÎL\É=\Ö\æ[\à\è»zû\àJ|\Ü\\b{\"\æ\äÀ\â\íœ\í8”@\ÇÀdùbi\Â\ê;Ó’Iö½\ÈP¦‘\ŞöP”²²§†sh‹g!Õªcq†‚šÒ«‡\æy–ğZ\×ÃŸa° }]GşŒa\Û\é\Ì{oú¢\Åhmì¤»˜_S\0Ä—\İA	€õ\Ö	!Å—\ì2œ!\Ù\î†Y\nõ¯0T\×Y\È.şÆ®W \Z\Õ\Õ>%\Û3\Å\èÜ‹R\"ˆ\Ïa‘…\n\Z2z7meŸ]`\äa;µ\Ş3&$\á¨¡?\ëñR„™H\é½d2dĞ”y€b£kB¿ùRõ¢\ß{œ\ÌĞ°A\é£³40½b!¯cÁX\Öhî‹¸\Õ³\Ñ\Ù\×\Æ.\Í2:¦S$û‡’•!Ğ¦Q¾\âşt%‘\Ó`eœA†ğaµĞ’u¯%E¥~µñzbX<‰\ìÀ~%fŸ;4C<£¤g 3÷†IZ:h\à¡g.‡H\î\Ì\Ö\Ï\\óI†\Å\Ù7\ît€$‘˜£w\Ç^ŒDSı\éôO1l \ï\èLnv>ôO–)}v\Ñ\Ó\éRykNECPP©{#I/…+lq\Õ7rT™B‘2:4A\î6õ¦\×\è‰ûù(D\0u^KtyòjtX\Ø^µ&ûd’xœ)£‹oar®E”i\à_6òw/#—\Æğ¯¢y¢½®<\İxıXµ¤Rf~©Ó\É\ë\Õ\Ê!œGc€”[ôÀú\ÍC¤·¨\'Æ­ªNªSM\0\Ó\å ‘\İ#ºÀrK\0ØŒr|ª\ØJf‹^¨€Ç‹øA\ê\Â\ê°g«9Ó©«IƒiI.\ã¡\ŞV&\Í¤;®¶“\èûJ&•\Êø) ê«¤#™]š%;8C\á±\Ë74Uu¨.–\àö&\Ş\ĞH\êVI\'ƒZ\ãş	2n[£¤›h\0\ãŠ=[ˆ4\Ì\ê\È\Òh¸µşÈ”£\äRtZGp«Tii3ğ	Z\ÒÕ¿Á2²ñƒÁ r—\è\äw\ÆmOk\Ğ\Ğ/?5šœr|c«Ò‘vC‡(e<‡B8¨2eŒÀŠn\Ş-Ö€Œ\r˜J‘ÿ»5\È0Z\ë\é\'W\Ú*\ÄC\ç\æ<E]\Ú\Åh˜ß‚^U$ù¹ÿ…@\ÄxL\é\n%½3Å›9\ÈF_Š\ÒX¿§²û{=˜©–\ÆNxb/4Ê}9Ç®Ó¥d!/\Ã\Ãh94@\Ü\Ì\ËY\ËŞ‹1´tj¡G\Ê\Æx\Ù\İ\Z*µıj+\"M7}““\r‡\á2ú€\ÙI¹f\"\Ò\\Eú>š¯\×j¨\Ø=C¶²cA¢\ËOä´®SNzÆº50§•7“² Y±|ğ\"N\0^c‡\ŞM=ƒ¯2İ±Œ\\U>\ÏÅ„º¨œXB¦‡‹=©cŠ\ÑF´5Î´[?q—•ın9cM\Zd<,õJ\ÌğZú½=ğ\å­\Ù@\n²Q\r\Ë:K~AW\ÇÏª5ª®ğ\î\åŸX†!§;á‡Œ½4™—¡\Ş\×#À©’†À’\ä\Ô-}¹Š\'…\Z£›>Y\æô\ÙRy‰’\è~Ãˆ\"=~\Çğ…&!\ÇB\éÒ…27¡ƒÓ¥\ãû\èüJı/Z^¡`¼Š\ÌÜ\0ö¨€ğ3x6B\Ñ7z4‡-S‘MDr\ëh\ÔANºBBX§~ÕŠ^\Ù;Li=ŸŒB/f\î\ß=\0\Ì\Ê}<li\ÅlE†g\ZZ®+K+ÀM¾\'‰†Z¡ß¸KB›ƒ¶z˜\Æ\äD6|€t\ÎPNn:Ï´W\Ï#\ç£Ş»<y\Í\Ä\é*5Áa\×s0¹¡X„-{¿\\Mò‚sh\Â\áOfò\0!\ÆH—ù\Ä#\ÆL¾“.\'}Ö@#|9<)81]oztR q\ìXO\ìfô+<\Æ0\êœıı\åMä´ó0mÇ’3\ï‚\Ò-ª-\É÷\Ã2M,ƒ †£œš\èä›\ä€ouW\î\ß\Z4\èó\Ãw©“¯,~õ\'Ó§“5¢,kAb¤l+CO\'	XÀ‡\èû-O¦I„\\Ş¨rV}ƒ”šı>}B\ßû\é\Äc€®t\é™nÁŒ54\ã4Hö?_y„Sx,`\ç[\Ò+¿ó‡ƒ·C÷£úxÛ«pd¤\ÄF–\Z+7\ï£0j‚¢¦,g\ÖiHg$›IH^8W@÷&0&·Œ`\É\\&›\ã\È9/\ÑT3\áhò?\Ëó½ı\íœn>xV\Şóóƒµ¨\å\ë\áª=Ÿ\ÛMm\rö¸À!n @¨øº- Xö’\\0\Şa õÒ›\èjF† ªŒcÊ­¬\0ô„ƒè­¥´ó^{ŒXH\Ğ\r\ÕOŸ|$[E¿\ÔK ¼´¤6\ám\ÕÔ£A)Ø–\r¢\Å,¦@’g(–A\Ğ/aTƒ\ÒM„\âp\r–³IùŒôyÂ¥Ÿ\Îd\0¾ƒb˜e>ƒQ0¸~´x˜õŠH”.Ì‹&Q~t\ê HÀ(YR±\ëÍ«`\×#–Š\Ú÷¤&B…yeT«‹‚k\r|p}p-·\'qHG8À¹4ÔŒÎšƒ¾7\ØU\Ìgz“\é:¸‘=-\×Bí¤œ\îÀw7\Å}?}a\è¼\Í1\ç\Ó\Zò·\Õ+ƒi1@\Í\Ñ\ì;AÛ—tu˜G§ULJ\ZÌ¬ÁY\Çs²S¨\'\ÑB\ÑdÔ[%r\Üu“!‚Àúm}b4\ár\ìot6`\Öú¢Ã“hG\n\î\Ë~y\Ôñ»D\ßR¸kúYõ€Öš¸œ\rME¢g!—¡p\Ã-uSY	-#wa´]S/÷^ª”-\Ú7”œe%u‡ä²¿œˆ\Ş<q¨\ÓğrJ\Z\á«+’l`\Å\'Á\ÃlvõYµ\Ê\'\Ò÷€P4¶ûÏŒT\å£$&iw3ñzUy\î°|(\×\Ë;GL>/gd õ¦—	¹\È4×¤3\é¸Cş‡9\âIşö\ÉVôNÖş\ÈĞ·,k\îÁi^VwW×¥\Ü5³¼öuø\Òz§\è6ó\áüc@.&[Yôt^§õ\ßMQN&?”DƒmR‰\Ñ)£·\Ş\0\î\î\Ó>ş´“yJQÆ»\Ş$\ÙX\í. \è÷\Z¢\'e`µÌ¡K/\ÒZ¡\Û\æ\0ğy\ÃÃ†O2Z©±{\r\İhq€²© ¸Â¥õtÒ±v4t\ßd\ê¸\×,ôf©–\Ø\ïB\à{+\\<-§ şIÛ6½F\èÔº\rk\Îz+ka ‰U``c1®Zò,Œµ¶`L‹°(½9B_f_9E\ìıô\ÒÒŸ;…AI#m®‚ü?1‘ˆuĞ¥\Ş#Œ\Ò|X>vB¾\á5\ä\ê¸}\ÊuatÃ@§\Çrø _§\nŸIº2i222°\ÕM-Ó¥..`ñ	‘”\î6i2\çµ8’“˜³À´tÄ‰2@¼¶|:Ã’=¸¡P^Ö€¸\é…DD«_\æAo½c\ÆA,ƒ#ôù`”\êtñ³¯I,bD`²\í\Ï“~rO\Ï~\Ì8\Û\á¾Ñ¿\ÃI\çÒ;„¾„‡\íJ¢\Ğ\ÙP\Û\Ş\Ùò¾Mó\r\Çiş\ãhI_!pA\ÄÁ\ì( yÕ–!u‚}\×\È)‚ğq2€ƒ»\Şì¶¦9  ¶3œ®¶	ˆ¶“s\ÌxAª}*\Ì)º~&RFQV\Ã\ÍLˆ\È:\ä\Ä\Ğ\Çu\ëğ¹›•sµ\à*YÓ£&V^ô\Øò\rúJg%±‡@\Ùû0uwuL‡“y\ê³{Oy?\Ó\ßOñ&‘^\ç˜İ!¦\ÈóÕ¥:‰€)\í 4`e>ô\Êòò³`.K4‡W­Œ-ü÷©ù·gˆ]\à–Aõò\ã5Á«\' •\Óg4\Í\ÃÓ‘5¶\×ÿ¨pÀwœjlx\ì²b˜\r¬–\ì\í\Òb,Æµ½\ï;\á¥a#o„\ÛTw\ï\Z\ì0\ÂôJyº4 \í@­\Ş\ÉdE#!d\İ@¤šA)\ØÁ\ÄCLÑ \ÓvûGô&€#lµ3{\Ü\'ö\è7\èc\Ô\î\áwŸ!¬ó\Zwû\ßA¸¯\ÑbÀpF·	{Æµ*‚\Æ6)\ĞFE›Gª|út½Z­÷w\à~zI’va\í\Ó\×q\æn~\à\İQ9,¯\Zfô§½x8ñf‚A¶í‚„\èc‡phJR\ÅK{|ök•òP&`h¬¦\Ş}=\n6\ç\á!ß«¿\î\ãƒğ8#ğ#D\ëzu¯@\Î\è\Ü÷]‡+–¤Y–ö\ì—<X—\Éaû/j>\Ü<wmúoC\ÄSda\\\ìñV.\Ôşf±lö\Ş\Ã\Ã(§\ZÌ¡Ÿ³µH?²\Â Ú³L.#!Y\íg4\ë,]M\ÌF\İ\×¡iÿ¾“Nd‚‡\ÊXv\î•2xVuÀ&rğ\ç·JaZñPtú±µ{\æ£õF\é\ÄVŒTÓµ\ÊX™«MW¿¾x\×(1T€£9²Y ü\ÃûD1¶f†¬W/iŸÛ±÷\ç´~\ÚOjülh\Ş+•’}S+&Dt§	§_\ÄL\ã˜	\ãb¼g®\Æ\ä=\ÍX\àÀ@dù\İÁ/uDœL\ãYõL\ÙPñ3Œñ›Ÿ¡N\×,\ë—\Ú\Åu†H.2óŸi\î\ra\ÈWMdv<İ‰ \Ê@\İ\Û\é¢İ˜vR`\ß\â2lğl›\â\ê|\\_ [\rŠ\ÊZ\0i\ÄL\0lÿ\È\Ö0\ÂNµ@+„\âÀXâ³.\×Áş\Ø\×7B½4\Ì\0\ì\nat¯ª\ØUªb×¸­Dº{\æ\Õ-c4\"$\ì\ào;#}•›—\Òs`¿Â‹@‰N4‡\ÅUYB«‚-5\".\ÆmŸ\Ñcñ\ìBUTux‚W2÷õ6Œ^§›k\0s\çt\È\ì\á³\çDË‘}ƒ´_}T@\Û‹0(I\niƒL$ŒŠW\ê~·h“\nÎ¶)N\àóbF«¦Š‘#\Ã\0O¥9†5U{&\Ú+\Î=°„´’.`ƒ¥Œ…¡±M\Ä\åeÇ«RG’U-\å{\Ênq•¡ô§%<\ïi­\Ğ\ØR\ç:NWfØƒ\0\×G\ïûGô´µb4¨”\Îa\Ğv’}£\ßi\É\rœ\Z^)f{¿aøIf\Âz@\æu\ìÿ\Õ;´g\Ú\Zôğ‘Õ°–)\êÉ©\Ã7\ãE®S\Ï-tsÊ›#•°`úœt<PK×µ\à4~óõŠ\à»F\ß	t%w0–¤\0\ë«\rt\n\ãUŠ«…Ø‘²u¬\ï›Y·¶ÅkµA#vi¢¢[\Ë¥\nT\0¨¨@m\0O…¢»R¥\í\ç„Ø¹\Şv¿\ìªY P¬¶\îVˆ¨\îœÓ€(DLwrXw¡Jˆ\04*”Ø™~;\ãù\Ğğ\ìøYöQ\Ç`\ÆR³7 h\Å\Í!GcGo\İ\ÈÎ€\ê‚õ=°\Í\î}ıP\í8{2x\"\ÓM«û\'\Ã>›j\ß\Ò\áÿ\n\\>\'\Ôn¾	ø­1?\è\ÓO¡\îMñ:{%İp\Òx\Ì26ö„\ï›8ø\Z\ÑVó=q\Ê€¯7±9\0²•\áƒ÷\è@6°ñ”9„Ñ¦\Ó\Ê\Æi6\É\ä.n\ÏT\Æ7H·gJ@Ç•\êfk\Õ\Zq/öŸL/N!\ïZº\îu\ï/qˆ[V–a™¡N\í¹r’\æ$,Ÿz I¬\ìtF†\å3(W yI\à\íõ’TX\Â|§c/Gu> »¥||1\àWo‹º*\rKˆrÀ¤Š­ˆd\Ù\ÇYy\Zy×™c&İ¹\Ã~÷V&­9ˆ*\Zºi­€\íÒ—(P\Õ\İ%n\n5¢\rDĞ¨‰RU!¦€ªQt TÁ\Ö\İ>§¡(G\È>j‰]Ed­º\ã9l]ŞºEu5ƒ\è.«v½\Ê\nêª˜­Q\Å\å->8\Ã\Ö[¤Ï•1(l»\îU\ê7Fü\â@öv¹w\ì[G£uœ\ê\Î9|†9\å<4\0\İ\Ç#ª•†i…\ÌV	\"eß¹\ì¦Š\ÕD¯\r0úfÀ¶Ï·\Ñ)“eøŞ€>L\ÌÑ¹¢!3§†Nl¥\é\á|\ÍağoŸ\ÏÀM‰l}>;h¤]S\ß\ÖL¤	²—?\ë,”€m1 \î²V \Æ Z¬I\ZDA$8P\'‹õ«\éE\ÛCi\Ü@\×dn%\Ô&2»\0šo\Ò>@YF~4\0ù\'ı4dP\ï©X‰3?8\ï–”¦I\ß\"*-‡_»e­}\Ë2:|@mCh87¸V`’)0›H+£>\r,„^©F´ıöhLĞŒ3€i\rÿ\Ù\ã]\r©E\Ù>ÄŒš)wM˜V,\Új\Å%\ÉõÁ´‚ó½zŒºŠq‰‰s:$qÂ—¼C¸¡ˆŠ]\ÚvY¸\Ø\ì\rûSnWµ•*hv²¼ª;\Âö²hdy$ltl¶\ËW\Õ\ÆTLUTšm\Î+•„n£—k%\Ø\èÖŸ¹3JEwö£\nD…¢\r¤Q\İ \èö\ï«\İ\'dXÓ¨\ìa·\ã\á’2û¨#¯PTG<h\ìü{l£Í¸ûsø@u\×öœtmÿƒ“mº>AK¼©O;y}f=ñ\Ì|Nò\Úqı\ÊE\Ä_Ik¥¡aŸA\æ¸\Öq³\r`İºØ¤ağoa1Kò\Ãa–b/ú\ÓK\Êv\ÛÚ‡(\Zg\Ï´¸ú¨fx\Ì+¬\04\àğ£\Ús¯¥u Ñº\åõ!\Í3‚£g¼\ÅB €aû¹˜2ƒš°yL\"…vYBÁ&T¿!½\Û|&\'jrPE\"4\Ï\àt?\Î\Æğy6t y$~t÷/¹\'°\×ƒ \Ë\Ë6D‰Ÿ9jœ\Öı®Vt\ÌfûşöJ‰Ëº\ä\ÑmŒ[QŠÔ™\rü\Ù\Çc:Â®‘\æL›\ÚCª\'R}¼\Ö4²Fs%˜æ¤¸0R\İ^³¥\æ®ó(qW\ä@*¹¢\Ã9¥™\êj2ŸY„Õ¿ŸÊ”B2¤\Ü\é\Z‚.W\ìz³k´bÜ®¤\ã€P\îhû[*(¦Wµš\ÛDşfç„£©B­¡È¶ĞM¡P\İFK›m\\–J ˆ\Ô]²6[\ãµ\Ùa5Qì¢®\"\Ö·†\é>\Ü*\Ûv©À\à¢C[]yg‡8´Œ4\Ë`±mD‚\á3‹a0h{‘oh\æ•l\Ã!‘Â†\Üòı\Üo,€\íb\ĞZ\ëÕ˜ü$Lœ\Ôsz²‹m\é°\Ò!}\ï2zö\ÌMµƒo´\ÉF\Z¬md\0¾÷DÀ±z_†À\r4`‚ö\Ê\ÜMÒ­\ÙW\r4J\ì\Î-$4a½öqß‡¼“B[8±A\Ä#\æa°\Ò\â$iònÀ\0j›:8ñ“»1Œ|†ñ0·{ÄŒ,•F÷\Õ²SR\n$¨:u\0z¼¸ƒ\Ë\êDHG{©‘:6\\¾óP\î²Ë¶!e[Gf¥Am¢¯\ækD\Ô[†(À/¥üEñ¤\\•±ˆ“³£²§–a”\Âg€—\êÒ€÷\Ò>hx!SQu†\Õ4”!:\ëùz\Æ§â¸ª¸7\0¦fs…\ì-DÀ´Æ¦3\0V=‘V½£õj‡£¾=¤\×\Ì\Şeq¾³¦ÁU\r;8¬É–\áU~?³»\ÇF÷\01\Å\Øóıˆ9„œ\'Á\çq\ÌR\Ú^\Ò<´\Ê\ÈC9À}J-\ÛOoMI\Z€-,\ç®ş˜4¦M£¦¨4€4¤4\0\ZB\Z!\Zi\Ø@ \ni„²\Ö*\ĞFh@T·ö\èe9\'´[>\É¯O&vxø©¼JqB\Ú0\İIÁ®Ç“]\Ê2\Æ.Y\Í9j\Ê\æ\"]ñg\ìR—²\Òš<]¢‘nÁtö\Í8\æd\ã¸XğN\ê»V¢Dd<\á»!\ê¼e–3r1€\'Œ{„0ö dm„a¨#_^¤=\í6\èóFñ¡75\Ïñ{ğ\Î6ğ¥X\Ä½\æ\é<0l\ã\Ë?E\Ù~ø\Çv\ÎÁ¾¤Yt \Å$J“ºsc7\Õv¸I=ŒIº@£C¥*\Ìl\Æ2òD„:oD}ñxüŠù”W}\Ùªoe¶q‘_ŸÉ3fge\áÓøõš¬±ğ\î}FÊ¨FS˜=0\Ãxö½\Ú¿&\ÅD<i±r\è\àl5\ä<\Ìä­!\Üö}\0\Ñ9ƒ\Æ\\£¸o|\æê¢3ôÀ\êB`Z\áú\âX\n4\â|\ç\Ó\Ú\Ì}C¸g\ã\'.?&\å‘a_\İ\áıÖŠ Aoş#fƒ\r4v¶C\ì\İÁÀ\èş\Ú\çQF ¶\Û>ÒˆŒªM# PY\íŒ\Ï \rEV[\æ\ÄJ€f›ú»Zm›¯H#‚\İÿJ£\rbİ€\ÒªÁH\é Á¯I\Ç\é=\èPĞ±»›0&\îÓŸ¦?]@¶\ì7²\å\r¿²A­	\r¸+Q\ni\Ï\î^{\Ç\ÄM¡w¯xœ-€ŒC#2iBW£÷\Õ4JŠM\ëw\ÉsC¿Ç¬¾-m†ªW£‚¾÷OSé†½|XßˆI«=2»Ñª&\Ëvs¿\Ãl\Ù\Ö\Û`²@ ¤k\n«¸u÷f´xe\Ö[SBù\ë‡tÓ¥-`\ÜM9¶ª\ZL@<I\"-÷j\\Û®\â\ëd–d\'šó\Æ\ĞxU¶7¶J•‘Š\ã4M{\Ç\ÚBÑ¥9‚\ápZ34M£\àc\Ü\Äg–\\ˆY5c\îŠq~L\àe¬©ù6>o¢\êB\Ò`\ÏØ¤¨1—ã²›D÷\ØwS]\á\è3F‡RJy\èZŠ-+\áHD\Óp_Z‰«¤n«A\í\n=\n\ÕZÙ‚#) &*ŠFV«fk¬r¥D#\Õ\Şxr…\ZŠ¬¶YÅ¶\"d¥‚(\riöh¿r(Fs`úÁ¶Õ¥\Ó1x¾úû\Äi\Â\È?\ç3Dœ†\Ë%\'œw>\ÃÔ³\á#\n&Ëµ\Î\rCA}Î˜\ÌÌ‘*˜¾]9‡có\ã\ë&2 ¨Ñ¦±—6H\Ãm!d‡ˆp˜\êLƒ´\Ë\İ\ïy\ÉV¤ŸMõ‘„´*¤ßº-\Ğ\ë\Ï\êF)\È29€´¿½÷@s\ç¾\Ş\Ú@­óDNy\Õ\"lú°«\Î\á;>p\nB²B\"\0cdhK´«\Ë \'ÌŒ\Éï·’f+3ÀaHõ’@û,ö«­˜\ïX\n#]3\Ş‰OWŸ¿¬yô¾z¥;\è\å] ı´\áÌñ­D\ï\ë½VDşJÓ˜œFN\ç.\í6NNÇš“ï´¨\Ç\0º®¥\r³Iª\å\Õ[\Æ\åR\Â\ÖL…´÷œf€ª\r™²?g‹©\Ğa\'•W‡†\İù\Õ^\"\í.Exß¯\ÔD¡\n\ÒTTW\0VW$\Ö\n¬¶Æª¬H]º¢Hc•\Êj…FVØº²W\"Òˆ;dN\èeSøC\ïI¿ş ¹\Ü\0Æ˜ÁŒ\í\Ş\à\Ìzuu\Ûcj˜µ\'N”@öaü²«xa\Ñ\n‹aóR\ÊP´­¾½eõˆcõzeúø†³p§=‘½ƒ\ÆK»\Ñwª\\ß¸±ğ^¥_7 \éB7OAo¶Ğƒ‡7©m\ïG‹\Æc²\à\Õ;§g‡—£\ìHQ\ÃaÁ£E•óh¹qa´x;ı\Æw/\r\"\ê\ÚK\r¢€š-¶{\ìEÓ¡™sö$¸\ÔU°\ÒnŠ&N¹Át\Í+¡†ˆL¢\Ñ‚u¹3SâœšŠ‰M,\\\Ô“e\0\Ä\é\İ\Ş\Ş\r‡i­	€\İ,VŒ§•³#,úõ¨\Ç\Şü²öù¿\ï c\Æ)D‹\ÃÀR}§šS¡Æœt½_¥?‡R%\r!\ã5±\ï‡\×şc³I\Ñ\á°Œ1f\ÛU/ô‹\ë.\ë`µ“oHŠ\0lMU\ì\êa\Õv\íh º\"t\ÈZDV]\Éö¿\×Ø¾t-\"kA³‚ØŠ”µ@W\"¶‚*¶H‘\Ä\äO/y\ì\Ğ@m:\Öy¿™\éÖ€¥õyt\É\İ1ŸI~0®¬½ˆûùşÀ3Y\Ôó£×»®¡¿¬\ï·\Â$ú\Ìd—º\Ãz#q†d¬ŸÈ\Z0¸Ÿ2V\Ì\îüG\í1ãŸ¹¸i\á4i0¢#ş÷h\n4«ó\âcg\0_\ê>\Ö\ëÆ´M\ë¯\0\Ù\â*\"u€¥\Å\Ñ#e‡\Æğÿú¨’¥ù$ô Ng|$‡Æ£…$eL+¶=\éz¬N&\äB÷0 \Û\×Jˆih›P¾\áñª2\r®Õ§gº­J¬\\p\ÜbN\ÈóNb?s’¥4\î³À\È\íœy_FD:·8Gt·-8L~kô]\ÑY¶#³qıqğ\0Àf¶ş‰±÷\ï‡v0\Ìà¿»\Òr¬¶2\çaü?]A¾xø\Ï8¸óûzw\"\Ô_/DhLµ|³´‘-\å´&­\Èû½\ÏQ_\Ş_½„\ç3,´\ĞıL:ÀN¤\\»@Qn{\Û)\Ì\Zª\0†\Z]S°‘1®¥Ñ•×¤¬\Ğì¢³”5¡+ˆ¬E¸QİµfÀ\Ş2vr\×KW\×üş@›\å\ÜaA=g’õ/:Š³yÓ‘T\ìª\éÏœ\ãù£²\ê:lİ‘\ç\Ç\ëò`\Æk;ò\Ã%¨÷\Ò\n|I×«\à`<†\r\Ã\àw˜g‹::°„\Æ#2ws‹€)×‰–uj€÷\áZ\íop°\'Ú‚÷\è\Û\Æ‘¡\ÚoŠ˜Eœ¤n6,F\î4¡Uv\ï\ÓTª\Ê¡·:d\Ô\Ñ\Ğ_ƒM?3\â¹Oqõô8ü Ø§¯@i˜£‡!\Ğ|\Â\Êj’\Õˆ\Â\ãM0\Ñ*xÔ~ª\êHútg\é}!1\Î4u%0¥<W¾®†}¸q‰\"-@\×_\'¶˜\È\Ò3Á\äƒU|ôv{¶˜G(”™u¾\Æz#×½	%\ë\0^Ô©š¯V½fÜŒg n!a!Q„ó³\ÎnZ\ã}i0Fº+\ÇLa\ïX@Áb\Ğø\Õ\áûu/w-\Ú\Ë\Î\Û	B\Ú4˜r\×\Ïx—ñk\nS¥P¡š\êVğ\è\Z®…¶¬N„²•5eµ‘\İGf›\í\ïÅ´¸3duk_9\Z{u‘0Mh\Éø$ji\ëœ ë«€œ\é¹C&ô­z\í/œo™”şŒ²9A¿«V>¦iê­‹l>¤\ã\ä±*şØ´\ìpø_†Qf\Ònqöt&`ós|.À*Bü¨\è½ò¨H¯RK*…š(d\ÑMW_}\Ø`ptJ\n}*\Äc\'`\Ö\Ûz/!\é;}û\Z9\æ¡@&\Í]I\â\Ã}%\ê|¤‚ˆ*x#¦Šû¦7%e»»í‘œ\è=\Ö<2$®-\Ë_Yw§oN\\´in…\Ã3=¥¤\Â\Çß©\Ï ñ[/f_)k+1+\ç†\Ñ\ëH\ê9š3¥ÀŒıTŒ;\r¤›z¼-›¥\\Sl?U%ME´Q£¶\Êeµ†È‰@\Ö]e-Š¬\Ù\ÈZ\'[CV\ÖYoÓ‹·9\Ù˜@Ø¶; §n“ÁK7K\Í*p\×;Nÿ»7\ëùG3\Âfu& ğdúA\çî„³nY_ÈŒ~¢ \Ú˜¶&ˆ‚c3\'\æelÎ¶±‡½÷rnc\Í0&®St\ÜTø0Em‚•£\Ît+awµ¨õˆ\ÄVš	<\àOA4Ìƒ¹3š±\Â\Ô\é\Ì\Î\Ú÷¼ğ®+{\Î\ĞVzõÆ£Š³Šˆ™%­´Aút\Ô\Ñ4\ÌhO\Î_u¡=xnbŸ	0tZ\à°m\Z ,\Ô\'W;\Ñ\ê˜\ã\Ã`\Ã\ï÷y<ŠGÀ¤Åˆ=Ã„¦—^;)3K>Œ$\àQŠ}-N@;\ÓrZ\ä&\r\ät§Á\èf‡\\+œT•4ïˆ€c¤›A’¶À\Ñ\Ó|W^H§§¦²P\âs\ÈkıÔ7\ïeŒS6„|\Æ\Ã\\Œx«.›nMŒC†½³_Ê±«‹—:\Ş^W\æ¶•l%·‰b\×\ÛÕ¬…\nt\Ú)¥9‘\'B9‘œ²\ä„\Äi\ÛÈ‰¨(¨*—\å‘t€]‘\Ä a\ß,\Ü\áÕºšo0Ş—ß¿uš\ÂX¨‘\'ö¦ª”\×e\íÖŒ9û:]ßˆnV`|9Løƒ\\G\Îz:šJ\ßq\ZÁu\êEK5\ÙMrÑ·c­’”J¹¾›.¼ó6Z\à\ÖÓ¤,Ë®\ë¦À—%*e=„Lÿs•í³¡\åxL\Â÷Á¶ú\ÔÖ´¢Šò]¨Á.±¾£\É(Mu¢+g8•¿\î\ä\Ú\âhqñ\Ùğ\Ò óü¢Ê¼u\Ü-VH+ƒº\Ø\\{­£\Âs\ÄñE«Q\Ù{~8a¾©\Øû\ÆÿAødK!zYwA3…B)¢4iDU\Ù\È\ZÔ“]dö”‚9‘¦9¡\È	(§Ò¬NDô„\"\n¬B\\Fh­›Ä½\Õ~`¾òÀ ‘C¨\Çc…¸\Æ\Ì,¢cµ\Ó}\İÂ¥\ÒXó…Ù–\Z£V\rY\ã\ìz½‘%¡\Şû8b¡\Z)}“ò¤¶\'R=m9}8…]9\â”)Öš\Ì[zÁ¤ŒaO\Êú\r[7\Ø\0ld\Û/·i„‡}\0\ÆSú\ìÀ”lnŠlÁ¶ÿ¡ºİ¸ \rûZG‹» +%m—?	\Ûy\ç\"\Ã\Â\Öñ(.;©dŠª\Ú[\æt!E\ã\0_C\è\Ú<€°«Hv2\Û-Ù‚Cy·rI \ípR®­uA	E.£¸ğ}N\Õ\Ñú\ß@ªûuy±Œ²Û´kD´1™­kfo\ÍZ¥FôLE%\å\Z<š\Z3b’\ìû\îk\Ù9¤s_‘‹\r\ÂB¼1œ{·¤W¢µhL\É`\ÑSl*1\ÂN—\ä\Ñd‰+\Â\ç\Æ+‚jR?Z¼ı«5\æİ—\ÑS‹«f©& \Û\èğU–KL«û\Âq4“\ÑöOû4ıa½>N!^½»\ê\Ú}ğx%U\İ^¦]‰YmN8ƒğ”À©ˆœpµ>¡è‰ˆ\n\åD \'&¢*ªnq¡\Ä\Ş>f[®\Ò\rG\Ó,\Ì\Z5h\Ë+]™ştE‹¤^©Ê´\Ú_\ïr&!?Ïş|S´Y\Ô\åº#˜,›k–a–ì»—xœ³±;§\Z“·39¢\Ñdš\ã·ó«\ì,\Öv\Ô\"\Ï|\Ò{À‚³G\ï&1ò\âÆ¹a\ãÆƒ`A•\ÂAIi$Mµ\î1j(Xš1U9ªjk¾÷6j j£š\âK?pq¼&\æ«qòú{{Át«-94Š9T\Z]<¤\Òb@SIC![\îF\ç¢`\è!Á8 |’l\Û\Ã#\í\èp…&\áK\Ìûl\Üg¯‰y$ ‹:@nÉƒn\Ô`—¶Š¡m4¾¦ŒZ(vòZ“|Bh™˜w\àF±&—\à\é‘¯\ÜP£Â°A\Ú}¿W½\Úòy}_ğvÁ¨‰\Ğü;\Î+p-\î©Lã®ŸışN¨Pˆ5„*(\rDN¨8%\älN)8\ä”\"g\"r*¢§\ÒpMH#¢\åe=:€e[f\îšüvUs ¨a\è5™lN)•©\İ-N}\æ$)\Ç\Ú9#½riz\Ô²L‰…\Ûÿ*=E{S;•>}OˆÿU\Âóª‡ˆ\ÕÔœút\Ü\ê-¢\İôP-\é6dò7(”5\ÉôgJ ¤UA\Ê8‡€?ı²Yû\Ñ	l\Zº½-ekÆ“—-mF‰ö§\ì\Íq \âö§À¡‡q[9Ô‚S\Ós\î’0\Ò\Ø\Ör\Î7\â.ºn>q¡Cû\×w\'X\Ú\âpg\î\"\Î\×¡²:.¶>ùÑ¯\àÁ#ª4C|\ßs@f\İ\Ò\0¾E‚Nn^\ĞÄ¯\Ìû|ú_¯PPz\Ù%£Išp I<ÿ˜Ifğoô}8\Ì\0P\ÌP*„-lMEwH\È\Ô\"\'€r*39AƒSœQšS@Î„rB‘F »\Ä#=x\Í~n‡°\Ó\ÜCY\ÜWhÊ”\ápÍ©¹œOE­f°W¹Ì¤$rr]>\Ğ!\æ\ì\Ü\Ã\êËœ½;\ë¤	£.\ÃM\ãcnr ‡8pZ5œBYAOL R£õ\ÓD/pœ§\ÚD	sòõ\ãg\0_\Å\Ú!\r¡+vS\ê,¤ˆEus\Æ\Õ\Ê\0ˆ“F¥\Å0ºoz€¢\â\é* )\Çˆ¹]½Æ˜¶:mi‘€lIïœ»Ole\ØS3²oA\Ó\é\Õ*#I•#¯$Á\ï8…Á„S,vù\'úˆfœ†ƒ\ÖE–c–ô)\Ûe\ç\0\ìx\ÂuvRh\ì\Ş¦Kûtšt\Ñ¼	€\Ç\r“÷­odµ¼\Ï3Ì‚l‰\êñ\Ã9ğ°qi.\n$\ÛÁ¬K]#m—\Æ\Ï‡©ø.ş8”Y\ã\Ñ`½,Ş¶m\n\ÅVBKKRT ˜©@W\Ô\Õ)w\0;m¡wHœI#§¤œ\íÒ“O)²\ëOKtşm—yÀN\à.÷;\'\r½«2z\á‡+}²\Ø`%\'œò\ëµ6\ÓQNV]Î¤ô\çª\ï`ñ6T›Uõ°^N\Âp%¤¨\ìe\Ô[²v’M>~¬†©š4\n¤;óJöOt±T2f\Ç,hæ»Ph\Ù\Ò\ë\"Ub\â\Ñ+ªk1€G÷*P\ë§1;g`X4Š2b¤\Ù]£\Ñ\â@ş&\âF¡#¢gr‡Š\äu<Q|-1xN.\Ğ\Ğ\ê:ˆ¶5]ò´#Ol8\ãuµı„’,¥N$#Ÿ£3€\ÚPD\Ğ$:¼¬	\00¥´z\ày };o°‚\ÄE\Ñq«@DZ\ÈTõ†\ÕgõÏ¿¹l\İ\ÜN´\énM·B\É3\Û\å­I—<:Eœ\ãË‚ˆµ9Z£\çz2h#®3?¬\Ú\Èš¯vjœ\èÁ£‚\ØVóš\ÈA[“FUÔ€F\ÄNr&¢gT\Ü6g œp\Ê3gB]D÷[Šı¹„Z\ç•aKŠH›\Ö\r#Kª\ê\ÈPŒ\'\0A•Ù¦p(»SC!·ù˜Á;x´\Ã\Ø?«Ls‘b2l/³˜4\å\á?K¬sR\Ï\n\"¹d\çW\ÇC Dpò\å\ãd¤4\"b¼ö»*ô\Â\áÒŠ»@bz·?¢{¾À\Üh\Ü*ph³ñ\Ñ\\\É+%Ô°\ä;û\Êl·­\Ğ\0\\«\Ø\èWn\ËP.\ëF›­NÅ‰‰‘yC„ıV,Y\ã–@L£z\Ì²¢dª·Œ\å^j\à´9\é!Fí’ª\ãŞ¸İ‚\âU0”\ÂI–\ÊaH¿T8tı!B²[`\02\Ç·Bw\ÍÀ0Ú«\È5B£½ı\Ïr9Ğ•)\ÅmK&\\Y\Û\\TÄ®Á@SW\İ\à\à\Z‰póş<1!¡v´¾\ìÊº¥0\Úıºc‹4F\ë‹C¶Y\":ş\ë\ä\ïÀ¤@‘Ö„j;BqWÜ¢®D\åŒh\î\íŒ\Ú\ÜÊ©4r\çBp\"wDš5D›K©½ôò»j\ßohü‚¸„k®¯Àe¹¦Àk\Ú9\ÈL\ÉM´\é-šD†B_=€W\æ}\ß\ãj\ïfM¢bñ&{)œnÊ³>QŠ½<­/\Î\ì¯còZ˜ş~T\ì[ù:;Ÿ\'ü…˜\èD†}?\ÉlK\ÂGË¡ñk}€\Åd\ßhX~¤^s !n´z“ö5\äD\èF#i#\"\íÀT·›¢z6ƒÚ²ú©\Zy‹k‡\ëF’¶¤kZp\Ê\ZjoŒ\î÷-p û*3L¢Ê­\Æ~¡´Ğ‘•\å9ºE¦a\Ğ|\íW\Òmñ´™€W¿mú\Ş\ÚÏ„·ı\Ö&\Ëx\í’\ïI\Ï\Zûû\ßAdNÿ\ê¿\Ç=\ÅÀ¥-\é0\ÈÔû\å\ZIC6Á6ù\è\Æhs\ä\à;–!—Bp$\Ğh&*ú›LŸ\ãe\Û`pU$T#W\àe}øÚ´\ì\Ş\Ã#\ï—`=ñ\á¾27\â\Ê\èm÷gö5#öI< \Ğ\ZŠ4€4f\\‹®\îpG w(¼#‚3\ÜÁg4YADE\×[¶\ÛY\Ê\Í>ŸW~Š%²Ü`u§Ÿ©?3\Å\ÒG°Z\êö¥;\ëzdm’¸•c\ÎÌƒ™÷07\ÈÊšF\Ã(¢\ã\Ó`ùnJNA\êŒÃ»$\Ê&«òVøY=¹V¢¤\Ëõ:®aÃˆ9\å0Rœ\Ìñü\Zuø\Óü4”d\Z\Ã>—\Êb\ZS\Ö)~nÀW&¦ŠJ#aOn\ÊK¢\Ñ\ß0Ü®%\Ë8W\ÇÑº\Âm™\Ôq†\ìò+—sğfÕŠ  \'¾Ä5”-ğ \è\ßóvª\0\Ò8\æ\ëo\"«I€MŸÖ‘7$ú)«ƒ;Î $\Z|œ\Ó\Òp;>‚r¦ªQ—\é\Ò:E&\äóo~ú(²4ú8\n»]¢Ì«\Éd\\ƒ³S\ÍF‰\Ê3D$p<¡–n[iF\0¶­lZ¢ÈŠªwLpGD\îŠğ®hs‡‚»„\ÜÈ™@›\íc´\Ó:`×»ö*\àa$™\Ô‘ŒTÊ‘ÀrU!”M.O\Ñò\åJóX\Ë]ÁÁ~®\Ï+1õ8\Â7f˜¾ptgù$	q£3ó›D*/\0³ò\npÕµ\à§{÷6\ã{\à\ÍøÇ„e—¤P­wK\ØÙ½*\î\\\Í\Å\0\Şkº‚A…hv\È \Ö3:z\ÑWBo/\Ê7U9FDß¶ÁÁôî¶…”\ïn\äT£_Ä·\áhkv©\ÚQœ•.\rl`—E³Z9´¬42\ç”\íĞˆˆ!5 \Ó_1\Í[Fú\à\é5AK\Ú7ÃªrĞ…ºÒ·TLLqt\Z€9:\è8\áCfğ¡jœ†5§©”ilŒöòl\àgH\æ7üÂ½Ş¼_\Ì	\Ï\Ì\î$²5&>\ïD+$µ~\Ú%26­\í\0ì€wmªH¶Í–j\Û6Ä”†d³‹aŸBõ.E\îŠ4w)r\Ç ÷Dq‡\Ô;®e—Ü™/s\àv*$m\ÛGŒ»‚¹\é>\ÕoT\Äs*\è‹_wO#\Îğ\ŞW3\ë2BpL(ó¬I­c™§nñPª&\Íl–rfdi§‘0‹¥E¡tŒ¾¶Ú®yzgcl\Õú¡\Å\ëh9Í‰[d\Ô\n\È+G@y\0™Ò¿<³{&5V‘òf&¹\İ;›ŒxÉ¥\ãı&C_\İ8\ätP£[\\\ï³ &’V)i\Øh\ßx¥ÿl»¬ñşßŠzV\ĞûE¿\ßq¸9.\çS¾>CÏ°#ó\Î\ÙE\ìğ¿{±§®n^Œ0j¿÷Có\í+ñ\Ã XxÖ®}F(.9*\éÄ0\Ât\rİ³\çL]\ĞÄ¿\Ç7\ç^aÚ»\Õ\Ç\0\Í\Zôg¤¹y\Ú9\â\ç\ïD\ÍE¢CÎ¤[Dz\îœI\Æm!50š¨Š`EZ#\"+As§»+h\î\n\å.;¹•»¤œhö)/8Ø€K2Š„Â·\İEHi\03\Ş\Ù\Ì19õ™Rjò×¯I\Ù)´x´B\Ô$\×\éÏ¨\ÂGuv8»E\ß\Ô6½œ6o\ÎÀÃœù¬§>ZF\0%sR‹g=®œ¶ˆ„G9²Øšû´˜#\Æü¨…\Èø\ãÈ£\Úôği•!÷gs©.\ÜTsø&ÀH·\0“E‰1³\â\Ã°(š†9£Í½Q¸†¸v®)‰u)l1<\è`,Zixø}¿[ \Ûı&£™\\×°C\Ñõ	P\â\à@—‡+}\Éz<®Œ²™4Ñ«t*ûQE‹\ër\áf-İº\×]¨lc\àZSlF\Ãh\Ö(\Öe\0ƒ>°*\r§M…}\ç‡\r ¾Y\Èøn°ó\"$\è»:¸\Ë i¦\Êm\ç ÈŠ\Ô\Æ\È3@\ï¸·Áê´¼G\Å=Cso‹°Œ•H³Ãµ\×-ó•si÷¿vU3\Ì\'ƒ\î—$S#Z¥©Á#¤J—JQO0É¬µš``Œ¿—\Ù4sO3›(p|2Ó†\Ç«ş|\Ì=+ÔœöX­k¥—\à¸[\ÇÀ2\Ìz\Å^p£N\r(\Ş o•\È\ìG‰q«6\è\r;\Ö³e…\ãÿ2å°©\ÂM7\Ô\0>\0R¥b\Å\ÚñM\Ù%\"\í^yKGcCJ\åaªk´?*ıQM#\íH˜ùJ¼™f)\×c\Ş\ZñP¯\Û`\æş–‘\ÖKf±oJ–9l{h\0D\Ï²ee®y³U¹5\ßJ\ĞhOğ\İ(Ø–H´™+F\í\rıgP•‡xH,qµ\ì²N9~‰°\'9Š¬šx¸e•KvGZ]]\rœ‰\Üô\Ş<4|³ùAC:€O¢	§Y÷Œ2À.¸\à¿\î!»„y\Z·ğñ¸\Ìi–F`+ˆ¬Mš;½o\Ä}ª\Ü\ä~K\ÜS\È]¬ \nQˆÀ¶\Ş\Å:\\±­\"°\Ó\0\ã®+kó–šJ\\§I¦?OP\Ø]%\Û3.~2şğTc»üuY\Ïb}BU&gŸ´¸ÒŸQôüsô\åœô6N3ŠY[–x\ãw])\è¤8FŠù\Ø\Ì0\Í\ìb¤\Ğu\äœ|†C\Ï\ç\ÄcuPX‰|\'\Ùø3o,\ßAÕ•\Ò\\zˆf?›&7j°J¡\Ş*’\\‡¯\È]+” c\Z¾\"rX…}\æq·†n‹ù˜c\Î\á?\ã6Ã‘\ë\\™\Ü9”Iˆa\Ç=kD\ĞPd\r\áJs\ß ÷Œ¸\àˆ\Ü3\è=\ĞV\Õ}\Íe[ú¿\ÏN¦˜H;0[š]‡ù\ç±˜‘kLLWL½¿8}\Õ,{•\êğ?0¤4\á#ş\0^\İD[72óLª«7En\ÇAzvS¼(x}Æ™	:T1\Ï\ëÇ³s\Ó5Ó¨l|]\åò]Š–	\"\0“fP\Ğ\ËeÁ\îŠ`˜>\Zóú8PA›W¹q\Ók€©;¥LúÁPœM¨‰P\Ãü*-† sSMû$\0·†=‚bf€¥k6[À0 ÙFú‡\é*¢L\Í\rRe[9«‡Á@.\"¢ô“\0“\Ñ\×\Ã%Áµ¤&¸Vè·½›	\Z‡^\Ödw F2bpù@¿\nz(ô;9\Ôp-w~h§qÿz\Ò\ÍzÁ,¡\ã¹;§‚.\'Tw=X\'e\Å;X\ÏoŒH\â$;\éªÑ–o\Ö;£\è`2n\é¤[[Œ\n¡‘¦¡QØˆ`e‚†°3‘\æ~+r_€{\"«{nÿ›<@¥\İş\İ\êh{o¤+\Ú\ènI´H•dEÍ¥y\Ã\Ñ\ïÀe˜‡Ô¹”\İbpœ­Z|{Óœi·\á¼9\Ä\Z•	¬2m\ÜH\Êô\íò\ä\ÒQ99\Õa®»c&#?£ƒh6i\éç¹úò3L\Îp\Z\î\ËS2/¦¤G§oÓ®öy\ÓEõÁ2líœ½r\n\nR\ÉlH)ºl\æ(\ÊK\Òx\í¿3P\ÚA\ÌU‰\Ú\0 Æ+³¦ûxôÁ¨]¼‡NY©€nºö1†ˆ¾~g\Ô5µCF\Ï0D\Üb\Ä.„¦«Œ|¤z\Ø\ÚÀÀ\îc*\Ñ\Ñk™ı³z†nDğÒ±‰|¯ú°\æu\Ğ} ûb\â’@\â¦°®\Ò\á„@ú\ë§P\npƒ†#cŠ¡½‹ôm5^	!T„QgG\ê~Š\ã2¥úJv\ìŒ]‚¦„™*\ĞVdİŠ¬r÷\\ğd£\Íı\rñ„ˆ<‘\'Lš4r\Ğ:ût\åK\Ô\É\îyI—†¸X¬®˜[D)Ì«]\ÄÀ \æ\ágs:…R\ä+¯o\Îÿt6*9£1‘1§#gÎ±\Æ\Û7\ç›\éG®\à™\0‡ù9©veò\'K\ìD>5\éôV\Â`\ÌT¯Û…Ú³\î´\éÍ™±ˆ	˜Ch\Æó\É,ÿ\Écm\0‡ö&ŒÏª\ãú\è#Œ<\Â?k†^Ÿ\'M\èi=ª8Z\ëL³\×f%ˆ\ç7¸\ÛN\ã ®ƒV#Æ”%m­A\×Zv£\Åcn\Ùs¢w¢•½¨Ÿ%¬‹H|$Ğ‹<…¦«Á¿i„U­ûœ²õX—j\æp{¼Ê”½·2)ô\Ì{b2ÀOœ•À–j†\àöz:µ\rX6ƒVF±”œ\ån\í\Ù\ê\Øfoºj\ĞÄ„\Ö\È\nÀ\ÊØPš{È“&«\'\0\ŞoOŠ\È}NDU…]Úšº7m\Ùr—²Œq#wˆBì‹°\"\êR˜Sa)S8F<\ï•C°=µ8\ã\Çı=AS\ØZ\È?\Şô\ç9\"Œ˜u9\éù\Õ[H\Ãk˜…7xô/¦\\!ı¤’©’‘×\Â3’7\'d=\'.¯¢¼<oršØ®”Ÿ\Ñ+³nE¤N\Í\\\Ü\\gÚ\07E¡\Ô%N\Æ4O\ÍPÈ…Dñ«»iØ°EK­öÓ±\\%\ÂÀ5m\çd>Q2±‘¾^svƒ™$z³À\Ü]”m\Ó\r•t‡NH[“[“s°,Õ©Bß“•¡,ı™dfì®¨¢ş\Ã1)Š\0M\Ñ1ez\ìº*\Ü!\ß 1\Ze%Ğ•‰\Ş\Úı\êlô	>A\È‚õ\"\\+º\Í{\Ş^H¶3x[ZÇ˜\ïtz–X\îùˆ›Î›V\ÖırşU\É	…°\Ó/\â	\ÏbY*³(K\Ç}1GºhH\á\Ì\ïw|-Š\ËD\ÒuHslö8+Ç¸ò„\Ê\ïg\áüf“\Ø-3 \Í	g\"?¡y*1/\Óó¾W\×!5™YK™‘(ş˜ğ9^\ËY}À¦$VØ¢6\Û\Ö(ƒ4\Âø™\Z\Õ‘·û aºö\Êş\0F­ô\Z¤l£M\ÖÒ³-i9õûr!+:<N“0¶ò¡Ø¯/6Q¨Lƒ\ZO\ÉHA\ï!`k\ß\çfD4\ÒAÖ»ÀFş©½4[|\n\Ñæª½(¾Eöroö£ş‡©ÀLÄ¡:ø„\ÊMz\Ñbö™;y…¹±/t˜kpH\"¦c\ÎPğ19H–Ov¦\Ô]wÙ	÷‰\Ê6\Åx_·Ï\ÆhEDZ\ÊJ¦‰\ê-\å	}‚Š\'…òû¢\Í\nª@”¶«\Ùs¢\ÑÚ¡\Û\"\"\ÍPGI·¬\É\Ïb†¦£È¹l4pW´\áuĞ¥[º\È\0\Éiá¨½;gúsˆ\Ì9\îĞ§N?ğ<*gOò®¯z\Ş\åu4˜\Õ&M·×‘;?9ıy\è¹Qm·\Ó\×\0.7\Ô%\ÈÆ­³\ÂŒÅ¼˜²­So,g\é\\0to\'Œ¨\Z365³A 6¿µŠˆ˜eD‹uüW&\á\Ôe\Ô\Ï7\Æ\ì2\Z1t\Ì ÒŠiüˆ\'Ò»\Ó\Æ\ë0q¹\Ñ\Ï8HeS£WG+ºk\Ç4\Æg\á\Ça¬Ÿ…60‡·}¹)/»\ìp`©n,pnc2M@!\éÀ3=Á^¡ùPºûFJs\à\È:A¡É¦µm\ÔÌ¨W\nšû\ç›\Èó\0}\âò$\É{\0VPl…wiõûB\Z³-ŠóÕ©Ap\ÕHéœ•\r§\ì¾%5s†#[_¹\æmDÛ¬h„ğro²õ£jŠaM1\ãYS€“µ‘Ÿ[>C\n»÷ù³µS‰9©Pz¢<s\Ç1XEÂ¥¨\ÈpL*VuSŸ\İ\×q \ï\äˆù†‘µ\Ñ\Çeª•\ì(|ô%œH{‚.c9™şŒ\ÜJŸ1£øq\Í9¹\Ñ°ş‡Š]\Îidv®-…z™¾lùGClŒôLMÿ]\ëQk;’ğ\Ø›ğ\Ã]\èG^½\í_0 I\ÆwztS\È‚]\ç®\İ^À‘&^õ¤=«\ã{\æ‘d\Äcøf\ìF\Ú~¶>‡ˆ\Å=rNı\ÍŞ†\ÈÌ½›@g=]\Õb\Ø\à\åÑ£°\ÍJ£\áW BnÿE\Ø66k\"hVBY+ôn‹\æy-›\'x’\"\Ï7\àIˆ¬TE\Ì:’‰$e\Ó^Ò“;\n£¸eıl\æ¬#Gğy÷1²ıøƒ\è‹!\ï\Ãl\Í%x=Œ§Yl\ÆŞ°ø%e†ÑB\Ë**}\Ó\Êi4ı¦\ç§\Úü\Âun\Âñ–Y\Úöˆ}¯s\ê\Ìõ\n«`ªw+€FÓŸ‘9\êNºµYÎŸ\Ù8\ru¤rcŞ¨‘¾\Û0ñ³SRÿ¹ıª,5ÀeVp§µG^‘e\×ò&’ri£¨F\Z\Öml¼\ÃO+\":À·M\ÄJG\×\Î{5ò}Û©ÿ¤\à.h‚F`L‡3\nD\Ü}š\Ã8<_\è·OGÍ‘:¸\Óz;(§un:\ëı6z¼\Ó\Êø[®¡.ÙŒñUÎ±B„oJj÷†æ´—>mq‡»\rK‚g\Â<w\Ò\å,FÏ¤fE\Ü0f—7w2	$örk &l‚FDVf<£¬4\ÈóMVO\Ò\äy\"x©wMsˆ\\¾÷‘Bi\íÀ¸¿d\ï\ÎQDB™\Ï\Í†„bL\ê¹A‡œ	]–¾l÷*J2>\ê\Çu\n5\ÈR\Ëg˜\Å@C›¼Iujdı·\äñQ‰‘ÌºN–J;Á£¼\Ñÿ\äQNª¬	¥\ÎM\ÚÁM‚x4tA \'-!#¼;µ\Â?Ÿl\ĞDFù/ g\ß;cû0¶W„;\Å\Ì7\Ùò½-°J³ƒJa‰\Å0z\Ã\Öo·k®@’F\Å8Zm8\â‡\î\Zv½±¤/ ûı`ôj\Ëø¾e!ê¿o\Æ\ÄûÒ«x\"B*e6½U¦\êØ¯—4.“u<¸DJˆ¦VÜ§k\Z‰\Ù&œ»¾¡‡l`\ĞÑ¨\Ñm\ÒÀ|œ’U G„%\Ó~vF\ï\î^PhBX£lwi\âkYµ¢w)ò|jódK<\äór_\'Å¶>——\Æ\î¾\îes{\ìººş\\D\n³3\ÌR¦§(ªj~‹Z\Éez•\Â:sœh‡æ­¿n\n;=\Ö~\ÆK÷¾L˜g…³qd£\îz\ßÇŠ3ö$Vf3\Ô\Õ\Í*\ä\ä¯8)3ñ%µ–)¹,aşD…Odo\n¾ ;Q\ÈÕ˜\íô³·?\á—yioqğ5J°\Å\0\ê\Ò[ôS¤nt=”ÀPW6\å°	n¤\Ğñ BF/”qM¤lcf6òü`/SF\í\ë2\Ö/uğÎ‘\Ú]¤\è”(XN\Ô\Ö\×Ø™³Eû\Î8\é¬Q\à¹9¼h\ÑZ@¿K0d`’3‘MÀ\Û\Ğ\ã{¢\Èşš°$­\ëê¹¼]|#½–\×Y\Ê0š»¬}œ+ûlOºoØ™\ÅnW\Ím$z—/NQ1¡´¨€k#\ï|r#ú|<Oˆ\çò<ˆ\Ü…BT[¾¸ªe2’wñe¬›\ZH‰ù˜»ñ­\Èñöv¼\Ù\ÌHn>\è\Û³¯1»QÂ¾m<I	ÈŠ¢8S#\ÓŸ¡È“eİ™ıöGBÒšõ´e\ÏB†E3s¿*Vß¥\îfl}\Ç\æˆH\ç\à,G;\Ê\æö\É\É÷‹Pv\æ£I,£e ¤¤fÙƒ’£¾\"3a™ïŸ¨\Û)£ö9O\ÎL·Jõ†.)\'@¯jÁ*m+²\Ò\Ê\Õ\Ø\Ì\Õò\Æ\Û\Ó\'-\Ş\']\ëTñ¡I0\é\ÛVº#(QtNÈ”3\ÉIjù23º‚\×\Z}p-s~9Ä†\ê4\Ø\ãgÁ Ú¸¹SK9W†ş\ÕyÄ¶¼ZÀF\Ğn\Û\éJKnDNvG¨\Ï7\ày~+úB<)\"k…n	}Y@\ÙZ¹m\è„dcM\å‡<À„hª’’	‰Ÿ\ÌXj¶±Xœ·È‰T\á,È¥{\ÈqQQ1x÷q);ûG§\Ó«šªU\ŞÁ¢³‰G\Ï\ÔJnGŠ<Äº‘—Š\ÑÁ\á¹œ‹£\"•˜Ÿ¿™}\Êuöı¥\í/8f9W\ê\É>9;S	û\Ï3m^ºR˜Œx3\ÓL}\ï¦\Zµ·\Ê\0N¦\ÔBö\niÀ4 ,Àiptp\r·\ØAT\ã\î\"\Å\îb`•\Ã|„D{&\ë\ê|m\ìKWdSu“\í :>¦d®%\0W\ï\Ü\ÑH»>¬\ÃC¤&”¤I­M²ƒ}Wn«±ji\İ\"\Ô]ùpÀ!:Ô•Û©‹–}µvŒ‚h[Ø·—\ØŸ˜óğNh¯z:k\àHv‹º•ƒ—\"sf¿ñD3JSv[ÛŠn‘\"iS@\áöB¨\Ğ¤\Ù*Ğ²nE\î™\èó7*/\áó7Ò¼P¤y*kˆŠ(Ew\è\ËZKv\éqY\ÜQg2;ÀôU‡˜_dbhVŸ\'ºT²Ié©´\Ş\ÉF\é\Õ×‹jD9Ï¥P<ŒÁZ\å\Òu•4\\»QST!\n©\ìóÉ‰f\Ï\Ü\ï†\æ4_\îfÁ\Ô9‡Í’|Š/\Î#\Ò™W\áY»WS\ÛÎŠ\Z\íò„œ\æş\Ç0o[1V=ªN6Êˆ¦“\é C_\Ë\ËOy‰F^¯˜xnÀ9ŒÙ¨ƒ%À\è0¡\Ó\î%\Úú Š~« Xû3…F\Í%ò52\Ìù\İt\Ğóqbhüu\ìD\Ô\îºhD\Z˜\ìÿ4ñ«„n™\×ş\éº)™=]–À¾®[‚ f\èR\à\á%\ìÅšö\çhFyÜ¸f?3\Ø\ÖÀv[`\ï›YB\æ\í4wu\ì–t(pø·ó	ˆõ\ÑFJH¡’&@»!mo\ìšğ/0\èLøB_(\ä“P¬ö=¯•&;ˆ+¡\Ùö_¼\äöD\Ë\Z\åûeh†\ÉT\èŒ\ì|¥*\ÇN\ÈoySj£Œ\É)Bg\ÒG”Ñ$\âK˜6\ëº5]ùõ\ã¹Ï™\Zı…ƒùr*\Î\á\ß~\Çj\İ÷·²	\æ8ŒœÀ#\ÕÀj[nÁELJ\Ë\Ş<º\Î\\m‘¯\ËH™º¿\İn¹0Æ‘…²şù\ËM,\Êz5úr1§\0\ÏC\É<\ç)\ê³õb\0Wg=\î4\á6\Ğ`U{\\u	\Óh)v…\Ûú\0J\ÚÁPÇ¢…;\ãÕ@&½¢\× =Ô\ß*	¹Ÿ\Õƒ½ˆ±\í¥üóO[NÀV>6ƒ?GZÑ¼\Ú[$zQ~Ø gtD`8³\à0B\Ùm\Ë“X¾¸\Ù\æ\îûª¦ú÷¹´·Aò€¶»¢†™¤\æ!Á\'$r[doi!bi(²6m\îmL^H\Õœ\Ï•’|r\Û[·˜uŒ1²=ì‡…]‡\ê\Êoi¡\Û\è\İ\Ø\Z‰¸0ñlN¸95\äXĞ§t \à0r¦E3³*tªg\Î8K\Ór‚E\ã·S\Ê\n\ày,\è\n­ˆX›\Ğ%\éÜ¼=?9ÿCó¢{‡\Í\í™\à¸A˜!ƒ‰\Ì?\0nŠ\æf»\Óñ\\Œ~¹Vš	òdy¿#o6,³$ö\ìsp ó:÷§„8‹œmXP\rûˆ£Š(óÙˆ ¥K‡@ È¡]E\ß\"EÄ¨ÿpô²i‡6’ò[8\Õ1<J’&Ò¥z#m3^»!f¾³£Y\Õh+¦\ŞVú\ì^}`l/‡\ïbIK‹=\ZMÅšL÷Mñš[ğ\ì\×É¸alÙ£G\æ\İÕ£ª8BUŞ‡©ı}\à˜ \0/Aª:\ço[Z\ĞÊ¶s—z\"\"÷[‘\\\0/ \à¼P\È\'Ee¥\Í\Ö\Ø\íym{\èmC¶Ïˆ†\Æ\í®g\äÆŒ]­•µ”K¿a\âk™õ†õ.\È+\Ë­Äƒ÷\Ó@0\æ0˜¥P6ceI]¹r£¡Iºya„nF­Œ¹j\"\n(\È*ªi}\Şùÿ³÷o¿¶-\Éy‘s®½÷9u\å©sN]X¬*ªX¬*•HÊ¤$\ÈB7ô\Òh\Ã\İh?4úø±n@OşüWø±M°_J\Üzp\ÃO\rhIš²eYwZ¤Dš‹d\Ïu\ïµ\æùõÃº\Í9Ff\Ä™9\æœkŸ½Ú§ö—\Ì9r\Ä/#\â‹ğL8j£„œVÏ°\ê”)yK52bLüªŸ&\Z\Şfˆ|JKd\Ô\É>2#ø1e´Aµ\ßQ=şzk\Úa©¤Ò˜Ô¾Aò\â}\Â_m¯\å9V°³0ól6w&øFD¦ƒ\\J‘Tğ\î\æs\İ\ï(\à3\ÇÂ¥ƒ|\É:ª~U®ÂC{¡¨K\Ô\ÑJHY.E›Ä¶X(¯mrÀ\r5`—*Ám\îp\ï)|õÙ ¤üğ\ïÀ^Kşez)G[–Š\Z;\'(\ï|®§\İ\ë‡[~iQ“ÚšX\Çå©¤³}ù•UT¡Šœ&UL€B\Ïúl/ù\ËY6\ï\Ş@¾’U\ß\à‹¢ú\0»÷W@ûª8•ı™‡½‡¬5\Ó ¤¨\Ê\çg†Œ:\ZK\àm0ƒ#Å†\0\n—\ÍÎ¯ó}T¼\Æ\àkz\Æl{\r‹\ÑuÀ\Âk\Âz˜\ÓRúˆ8¯;7÷”`Gø\ã¢\Îh´¿®ú({/\n¡\Z4.]>2Šu\Ì+8Ğ½\ßW\Z\È-\Î\ÔP0O‡‡ö°c\Ûö ¶½°js\èµAœ\r\âï—·®\0I\Îów‘\àG\×N\İL¨\ä##*ù\à)nø\Ùo¨\èI]³8×¬›\à\ìö§\Ã\\\İZg\0fvW¶%\İ\âZ[cT ¢iió\Ã\ÄÕ™¦ù\ÂÉ›—“j–£©K=35<–¼\ÚÛ³™¡\âFDòb\ĞR%½Å·bZü¾\æ›\éˆ\Ç\Ïğ\0ª©P•\ÖD±\äl\Âz€<{pÉ“ »MH¦’\æ+g—‚4ª2CTÒ­\0^J’1IÁ$ªHz6‰|\"_Ù‹¼‹,_\è;\Í[·jÌ¸\Û;º­c4‡]u±® n\åT\Í\ØN6Á•Š:†w“‰=PE y\åË¨«#\êÊªõcJµd3ˆÀóÅ¤Ö«;CoP\İE(…ùy\í\\[\ç\Zk^ü¼\×>\éı\âI—z1\Ã4[/õ\\ª´ k -\r»~³…a—¿™‰7†|$+\Êß½™\Ë\Ëñ~\Ü\r\r»TcÏ®µô\Ñ\ëôw6\0\æ—{\ßo’IU°²™»[úkñ<>^o¨‡›\0—\İIyj}}\à‚ò#¦¾TH>şoİ„÷z¢Ÿ¡…¿YÇ\ÙR\0,°0¸\éD\Éz(2¼6úµ—\ì1@,R\â>\é¤n…B\ïj\á\Ş\æ\íB¦”dº3‡¯ ò\ÖòŞDŞ\È{y’Ï§M\ÚÜŠT\å»A€ŒE\ÅW%K[¢ö!c¦)X\Ş]ü‡6´­B\Ï\ËSB¯Oe\êaS\Çúö@+›\àºU\ß\äÀø5\Êy\Ñ\ØthjCƒ—k\00p\îŸºø\ÕYötQ\ß\Å\á-k\Şr±¢÷—\Ù„¿ø\rİ¤&Põ¯´ Z¤·j×–·›YNG¨9öUË›Ï‘Œb\ZE¼P¨´®0DpGpÀü\Ñ$–€\ík	À\Î÷\"‚t—Õ‡,²\Ù\â\Şq¦’¤è¦¬\ÕUQ¨\àTòPQ=¼¿ª‚W\Zhv‰IBRwm™\ã.fRÓ‹*·KI]Ô”g’”xµ°\ÎˆÍ…\àHş:\ïgºz¥\n\r†W\ß>§Â˜\ß]§|Ï´T´N¹j?#/\Òy«ùÙ·KKš³¥\Îó‰<\Âq-=¸£\ŞjK?¬E9\ÛÏ¬ôù\Óß‡O«\0\Í]\äòó~8^gÀyŒS\åy\Ô\Úw—¢ı\Ğ\ë|W\nI\Ğ)Arº\Ù\Ş\æŒ\ç\Í^‰¼\È;\ÈònVy\'‰<»¯¬’%mp[i\îfşx)L55\íğ „®\ë³G4ZsıpM\á£\Ö \Ü9[\r¸\Ù%|½_\Ö\ÂQ\Æht:¶©†\Ã\êp\à\ZE`8w\âUœ›û\ßvx\é#“¯5:<´1”,È§¤!BÛ³‹KŸ†´ªNÀû’ó«ê¥¨Q\0ÿ.p\ã…\â·F\ÙM\âZ}?º%\ìúù\Ô-Tˆ\êA\')‰XF\İ\Ëv”\çLoõ†÷½1Ù•\'\rÀ!½U¤C5 ½\Ó]šÃ›Jœ²H©L\Ïc½\à\ä\Ï\íSªrÙ»ö\ÄB5#K!\\šµ‰\ïh¬ğ\ZØM\éX•\Ì[b´Ì«\ÕMÔ´¦E^\Ô\r*ƒ˜‘!œœ\'”+¬t0?\ç8zöP\ï†Gûw)931—\Çñøß’3w\'9\ßğ“E“6\ëADó=€«f\0y«²‡&ğLE>¿ı\Êò\î¤ò@ßƒ\È\ÛI5\É&‰j\Íw†¦\Ã\r\Óû²CKŒ	øõ¬I¤\ÜÚ¦3ó•© ³°x¦û ƒŠ™ (@™\ÚówD½\âmmŒZ@V\Ó÷±­4’\Òór;‘\rŒ@÷@;h}¨‰\Ëw¸¢z{G:p\ÕÈ£\ã9µL»hÉ´¦Wc“/Â¯}\r\ìŠ‰>FV\Ü2¹9=@\â\0+\ÌÙ®†ª±0\Â0s\Ğ1\ëTN¬\İøT˜ş»‹€\Æ}$tM\ï!\Ù\\ƒ–\ÚÀ\É\ngv@ª·*F9¦rtœ†›?\Çrg)&O\Ğ+W~\Êc2zc\'—kÑ“B<W›\×ı\çfŠkñ¯Ah\î\Î\0t±P\Ôş\Å\ìª`\"ı—Ty´?y¼ªš°O*“Ü–!z6‰¼³GzÀ»{I\ï	òÏ‰\êvs·¥¥	’që¶–iºp¼³²pD™ö\î+JV\ß~\î6\Õc«Å‡…Qen\Ìs­$f\Âñú¶šüè‰­E\Ô(ß‡v§9˜ö\İH5çóPw‹¨Á\nÓ•ÄFŞ£vGml†ô}ZXCß§\ÊE[\",t\í\é:sT’\Æ€p\İø\Òiş÷°\Ú<\è\ì<RqF- \Ú:Š{C\á¯ğÁ\Öã¯«}g­-÷.ŒG³s\È^‘\'\æ{F@>9\0ûŠ\Û;\n…>–?\ÑĞ†‹\êÌƒµ¤\á<£YX¨F«ö\ÅJ›j\Ê2\\z\é¹]„\ï¦\Ìf;2\î\ĞÃœ!ºñ®¿üyŒ˜^†2\Ïÿ\çqxõb\ÌÅ\äã¥¥T‹Xª;g³:½•œ\ìtôÏ½±°\à³»\r}6²YU¡\É*¿#E}\'š·1ƒ\İÀ]AVÑ¤š5I–	y#:Ad+\ç;\Ñ÷2ô«“\È{òUı|\ÒM\ÒIù1b„\é\İO\ë\È]`\ê™\Ğ&\ê1l\Ö#ª\È\âC0W	~‘„s\×JûB›…\Ü_\ß#ëˆ¸P1e\ê?ñ¸Î—:	®\Äõ\ëj QŠ˜(L2\ípø\ë,}tbƒ¨?\×\'¸Gğ§C‚Šú£zj£v¿dÔ±\Zö‰ò4 ºÎ£\Ô\á\çx\êˆ\ÄÂ¯Ìµa~/ñ\Ô\Æö<¼\èw\Ê0(\Ûö`B;ğŸJ\Ù÷‹`f…/§$›”d³\Ù\0‹~Ñ4û\Çù\Â3Xó\n(ƒ¨:mH3ğ³~Ï…­¥”R\ßóÁ\ÙÙ‘¾J\Ë1Kõ6lŒ•\Û\0\Údt\Ğ*STz\Õn…¤\æ\íË‹˜}\n¹FS±\\\ÔüÉ™IÉ‰b?ôº³Z\ép“\Âµ¥ÿY=v^¤kQ\Z§\ÛF\é\Ã\\\Å\í¾4oT§¬’¯D3®0É‹=ô+Y\äxß‡\êÛ›´Q‘„,‚,ÀL\Ó\éŞƒœŠ0\ÊUó¹sDÄª×‰W‹z|\\XF#¨\é\ÛmŒ\ì—\ëEXZ²ñ$|£\"\ë6I\r©5\n\éxBl4”jP?¦•¢t™1‚$\ÂjhZÄš,‚z\Ì*†›=ÌºÕ¶AhšAQ½ø–Zb\Úüò£\Â!¾Q\ë\ë–)qI–ı\éL_8ş_\Ë8“xè³’hÊœ‹\àK‰!¯¼v±6¾*J6\0\åh5\æM\Ç<\ÑA—:§ºôe‡@‹HnK0NR ©2€\é€hMVNw²I¸OKÃ‘75K]øœ‰ß…#\Z¬·I¾š\Ì\Ë|(\'¤\"\ÑKÿ\ŞO$\å\'œ\é±O¥1œAø«NQ¼‡e„T·q´\Çcˆ\â\'²Á$I½\ì\ÙÏ²”“*‡÷˜$\Ù/Ö­d°\Ò7r`Nm“\ÈRŒ\Ë,u”U\ï®\'\Î[\Ú]Šc-g\çı¸?\Öb=\rW…\ŞF !O’óf£{L\Ù\Èóœ\åóS\Ö÷nDß›öùı,\é=}±\ÙlD2$I¾İ´º\Ë\İ=øT\ækP\rQ€\ç\Í\\~@¹°[e‡\Ş5üÔ˜4\îW/ü½JlÁ—¡A\Èrõ ¡\İ!\Ş3Cõmo?p\Ïu­Ï»ú`l¨dÀc\çûqx›µõÄ†›¢Zyf\Ü\ÖxúÆ¿­\ÆG¨oB<~.\Ø*\ç\Õ\Ü?=\å…c`%\Â\ëºÓ±m|\Ñ|W\Ì\rj`ü»\Ö\ë÷\×M\Õv¦§¿˜¦¢ux\åöª\Ì#\Ôj\Óô©—F:)\0·„\Ãh “h YT7Ç‡-=‘üöğšñ÷¯ùh£«(®µÀ\áıô\'\âb’¤…\n¡¿û/d‘c1aZ\n„Z\Î_\ÎG\æ\ß§\Ç5\é ü\ÑI:“•:2 6\"šuF«••’eˆy9^\Êó³5ó‘ûTß•À}5\å#ec\Ôg\n½±ùö&\Âm³\è\áFAÎ‚H±¤[q-[\Ğ\0\Ç\Õmg[\åù2:\Ø#\É·[\0˜¡\×]şnRÉ€ä¤²OItŸ\Ósˆ~ñz/\ï#\Ë{ûI¿\n•¯¨\ÊUÒ–w\Îû}–Gÿ\á,”Yg»•\Æ\"\Ìæª\Î\á±~t\ê±‡‚Ï²ôjK£2¸\Õ\â\Ş]ğ4ü¬4P\Âù\ê—\Ê´Y:Jpâ—£­ü >VMù87ƒ®z>`m\Ñj„°\î0¸s8ù‰-\×j©gn]#F«\Zz®:\æ\Ú:ddøù7\rı\á	¾Ó¾GCF/Œ»:¥÷JbX+\å\ë{Ÿ€\Ötlû\î\Î]k»Zó–Î‚´5\ØiœvIY=\Åş¸\å/¥h\Ú\È\Õf#®2\ÂT\Ól\Ò«-EW\'\Ç387p’#rtX\ÚW±\\?s\éş\ç$Ô©!\ßhmƒ@ˆğ\Ù%\à\ĞZ’øLò\É\ÃjÙšXK†ÁwÓ t\Ï\äl8d\ãøT.÷4n\ÜT‡´´ˆ¨ó‡\Üz£\ÖU¿**I!·Y\áSR\Ùß¦n\ëó,ø¹ëœ¾ºŞŸnów¿,ºÙ¦+½\ÍˆdLùtµ H^™rVÁšf³š•\\Ê¨¥dr®›È–U À	\ßvWşD¿æƒS2\ÂHÏ«\Z\ílZPğ\Âz\Ì;·¯\Õ˜Q\nD\rµ—r\ã\Ô+˜.}8\àûše¶5\í(´U¢\rm;\rÈ³fW£Sm”[¤\ã\èJ´ C\Î-`½™ÿ«–ö$yg¬pl›G“\İ\Ç÷\Ë\îûÀ\Ù(ˆ=kfˆdPÌ£!\íq\Êr®¿“p‹÷\è(wz°f•„|T_u\é\Í\ÍYmŠk\İzµZ7v\éy<\Î\ë\Ä\â~Ùd(\Ô\"¶O\Ğez‰£È…¥« ~•\îÿ:»)¬õoñ¢Ì^†c\çy{T5Ù•=w2\Ô×’\ã\\\İ,¢›9ŒªÄµnŸñB`\ËPÌ\'g\ç^}U 6“ôÈƒ-z\×¨\È~›t/Iu—ñ<\'ygŸõ\ë9\Ë\×vÀ×\å‹i£I\ÓFR¾\rgd`»Rdµ©¾@{ VşŒ†ÒœˆÂ¶­µV\Ù\"@]¹¿Á\\P\×YYğª·i¤mrü#»Ô·mO\Ù\ä`@}\rt\çÿ€Kµı\Ë÷\ï+ ²XN¿´iˆ¾\ëc\èıb\Ã@±aX\Ç\èŠ<‘zÚT@&\n¼_b\Ø}\0œ\ï1v§«¯Æ¹¬n‡\Ú\ßW2÷7\n¹=e\æFd¸&VÑ›.\Ü\Î9»i¾\\>\Â{Xcº4\0nùÛˆ\Èf+²Ñld3[\\–BS)\Õ\×\Ã\Û\ß\rø‹*1/¼„\nHÆ¤pÄµæ‡„Åµ\n3u\î1Ï†¸\ÖK÷\ĞB¨\Å&Ù<¼f\Ò\ã\í@u6‡8q-9r\Ç\ÆøV½\Å\é°0]Ÿ5©\ĞK¸\Ïuş”‘œ>9cP*®œnû~§]%IU²*r’´\ÏP\Ñgù\ÒK\ä¯\ï÷øZ\Îòù\Òf“6\Ğt«\ê \0€iŸ~”¿Ë¨·š ¸P–dŸ\åÒƒŒª‘…\Å`Ó¦½:\Ò5•¼\Êa¼§1œû\ÛQv\ìº\×hğh¹û\×-\íA}–Õ½\â­õ£”˜\Å^ˆi,X\ß\àšÙZ\rÛ† Ñ©¡\ç\îp¨X\Øi\ÇüP¡7C‚R\Ö\á}/föcğx5t‹ª\â;C¡6·xzµq„´%÷—¹«»ˆ|«´Bôğ/\Ô%}TQ\æ\ÒşNÀ½55!\Ó,%û\nzLEôJ\Ü\Âó(•}a¨Ã¼\ÕL¿\Ş\âtş›o{ó>]ˆÖ¦`w\Ñ)…y¶§t\é‹R­\Õ(~³¥½\\\×RQ¨,\ë#\çú\Åo¡+¥ƒo6\É2ø2\Í[x\ç-\ÎG[^°û´D‚ª¸\Ö\\\ì*/ÄµZ¥:ûm\Ùû\â¼;ôet4ˆ€BT’)é¤	*YÏ§)}şZ\ä«\ä\ë9\ã\ëP}\'\éf+·Í¢\É\0&LH‡°‹*¢\Õ\ß\Ûù\Æ\ê»ùEhµv½¹ƒ…\ĞÈ•\n±_\à÷\Ü\İ5EOHk›\á­_x\Ğ\Ü-^lB¸Á\ÚD?Ô¾†Šù<6\Ñd\ë\á#­ˆg½6v¹=8ƒsœ\"ü\ç®\ï´Æ´À)ŒYó_‹r\'5´\Õ.\á…7¨C^+‡>\Ï\ÓR¼[–pÕ…U6y\Õı–ò[ıA\0\İG®¸½½÷óT›v^œ\Üß™^‰\Ûb-˜Zpj+³\ïV¥\ÔI’\Ë]ù.\Â\\‚\ØdsC¯\Ñ$e÷=€…ª°Zœ¦GøIe/şó¾TRª\Âe&°øğ~ó\Ò<\Ç^wJÌ‡\á\Ób‡\n[\àú°yV XøX \ê\Ïj×¯‹km\ä88\é[\ßw\áAjjQk)®•3?R?\ÓÁ\Æ@Y\ìj™\'~Ô§…7¶€¬w\×O³V\å;i¶yÇª\â]wmÁ\rÚ y¼Õ½(&ô\Ù^ğö.\ãı=\ä\ëS\Öo@ğ$½JºMYD À\İÄ»ƒ]\Õ4_eõ(œºş\î\ÒÌ­E\ÃÛ¨,\à¿Àzni_\îoKD%ÿIŠTù]–EğŒ‚h¨’¿©‘º…¥\È\ì\Öñ\ÎO°c³G¾mcÄ¢IĞ“{Mˆ\î\Ñ^\ËtZ·6ò\Z÷\Ãz\è®J¼#J¾9X·3pg¦vt£.\ê\æÛ¸É½…\è/j—K‡M<=õ\\6Wu­ox¸W\ÑXc0\0\ën¡yõTÔ¡/::©\ÈfsKj÷u€o¹ w½\ìeo\ê±^tª‘™òhP\á9,Ã¥\ç¾\Ëdx63Û§ú\ï›\ÊxW\Ç\Çg%orUõ\Éõ+d<\0;C…\ëÉµ\ê˜ô\Éùøƒ™\Óü÷Mmš6pTyÎ¼©<½K(AR\É)\É^“\î³\Ê²¾\Ø!ÿü”õ\ë»)=«|UE_¤M\Õ|›T/@¾-K¤wû*¤o‡[\Ô\æ‚J*”Œ€½¼\ß\Z2\Ü\Ô\r9C}´r#¸0:ó|V\\Zy^J¦:\ívwŒû“q}?¹²[\Ä]˜›¶x÷ùVS3\åÄªœ§¼(ı\Úyqœ\à\ä=ñ\à°`P¾µ\ÆvbÁP\ÚK-\ì…\ë\ÇKµõF¼µ\ï÷œAM$wc+šÏ­\âF&´*?3li_W\é6<ø!¢ôpƒ ğMÜ†:¶bög€{\"\Ë$Š\Õ$\é\æ»L‰[Ô‚ Pı\ršû\ß\æ\Ş\âr¼z:‚\Ù\å\ŞK>®’shX\'¨\æp)\Ğe9&ƒ’ \Ğ4Á£>5ˆk\Íoy$\éT\×Z¬‡c–oK<AğÁ…’\ÔÁ¾D~ø\'\ÃW\Ğ\êš\í:\à`¸¾X`9’ù\èÜƒ\ru¢\îj;CD3 EŞ¨\ìTt$@^\ìE\ß\ßMø\Æ>\Ë\×r\Î_‡\Ê\ç6)‰¤|E\È4\íò\İö\ÆaXsa“P\ÚDõ\Ï\èS,Œ\rT\Â]\ï_\È\nm,ómQ¸œV% XŸ¡L®\æ—4–¶ŠğBŠ »÷c¥Ÿü®µ\Å+iv\Õo¡\Å\Í\04Œyi\Õ\n\ÛP»F\Ä+\Ç\îd<¼¸L\ã3v®j\ë#±v}\Ú\ï§]­ˆ\ç™;’\âmõ••\ì\ÏÈ‰^iu\ï\ŞRG›[Œ*ŞŒ²\×ü¯^Ù‹²­œ¿˜\â´ô·º¤‰È²\æ\Ğ8[[Ä³”<kiH³y¿°[˜^>ÿ81}>\ÔT­ÿôx\Ä\ßf\ÆbM·¯\êF\ä7\Ë\ß)\Ïjš\Ì7790ŠÁ²\à\É\×bú<ot\Âì˜™7—óF\×\ÏÀ£Àp\å:‹i\Í\ã†÷õ˜\Â\ãfõ\Îf®šÏ©rW\0ŠŒ¤I\0Õ¼Mr£“`R}>\åü•k\È7óN¿¶‡|CE¾6Ioó\'\äi\Êwô7)@\ì²\ÃbnxT\í.»s¯Œy\0L¦%\\a\Ê@p&J÷€{¿hşn+\äZ¶Z,«j›†ğ6F£‘-­\æÁ\Öf\\\ÅN=¹“–n\Ô!œ¼\Ñk_˜‰²ö{FQ»à··eı\á’Dnğ)â³µ¾İ¤]\ï{\Û\Ë\Ğ\á\Ú\Ôò™·ø~=¯ñ|S\n\ÆL@`½°D†¬5Ìƒfw:Z§óºv«üÿun\Z_hLôvå¥¢\Ó\Ø@uH\Õ\r\n†\ãm(\è\ÑX#VUL\0ª`™ÿzĞ‚Ã”\Ğ4\×r8IE\ÑR\é\È\Ó9‰`\Ã\İ\ï¡\å\Å>™ƒp,\\|Ó²Ò‘j¢¯¯l[\ÒÁ˜)4\Í\Æ,O\Æ5RÁ;œš\Äe²ƒ ¤&E\ÏvN\î\æ &•)©\îe#“ˆl÷ÈŸ»\Ş\é·wo\î3¾9A¾²İ¤¦$L \Ê#©Jº-V¬$¨ej+‰d\êL¾1&7·şµ\r¥şÕ‰_¬»@j\Ñ\à\â$›PÒ¦\ç?\"FŸ¿£\r\è#C:\ÚÔ›Á#€¡¾ûqÓ§\éL/\Â#\îŒ\é\ÓÀ|d…(rN¬y\ÏH$†\Z\Û¬\ÅJ†¥…ªº,ª´¥6\àôı\ÕX,7P\ê\ïRh}#H¯öÒ€TSƒ³˜\ÛP¨}7Zr\n	ƒ\Üğx\ZöGqƒc\ä¹8\ÖÁğ…x€\ç3<\ãvŒ\'Ñ¤¸\ri.\îh.ş1¥¥\åE®°j\Éÿú2}¼UQ\n—\Î3;ÔªËƒ‡L\Ë_–g4;/\\Kxgÿ6~\è\ïò\ê©Ú§Rm\à\ZŒ‰?\éı“¼×²\Æl¡\İ¨»+²L˜\ÎY’­Ò­µ\rˆÚ˜\Õ6\Æğˆ8r\áú8\\¾4g\è&i†\"oU&@¡/ö‚w¯!??‰ü|\Îòó\"òVRM\"\Èmi\"\Ù\ßGœ\è²Ceñ­„(A\"\ŞL.\Ç\ÒÅ† ˜òŠªp¿±‡¿\Ôí™ºÆ¨V\Z\Æ|öÎµ®z|_F7È›ı(<\Ø\êöCa%\\$eö-\ç|Á ÿWÔ®y[µŒ\Ğs2Æ»¦\ãCš\ÒC;‡£\ëW\"\ÒqSw<Œ\Ö)\é9)?s°nO\İ\'\Ô\ÇıkIÁƒµò\ê§ıc«\×Q˜¼¼ÆŸ^Ì•µÁkƒ¡sm\Z¥\×]şğ\ã4OüD\0Œ•\'\ã%<jZŠqg\Æ;\Z\è\Ó<:Áş}9f‹R¿f›\0B.ÀQUJn\ZªÁ\ë\'g1\Ë\Ë5Pu®k•1›_Ñ««\ë=—`úr”+O\ÈI5!©\æM\Â~³\Õ= W€|ş\å¤\ß\Øßœ¦üóPy\'¥”*I&É€d \ß}\"jñZ6K§\ê0¬¢ò‡¦pŠ|Z\ÆKP/»\Z!FF¨´†@\İPGıT_\0kx\nø\Úî¥‡š«\ÑÏ¶¥ƒ\è†J\×nLğ+\Õl3\Ì\ÌG4<\Ñu\èšı€\";MU‚¢\ã\ÈıÑˆ§”›6\Ì_ß¥^‘ˆ^\ç²-\ê‹36Pp–>)\n,¸+·Py\×q<“ts¼\Û3f\rÁ\Ú8Á[s\è*\ã4üg\ín.rµ\ã\ïNÙ½…ª~j\0<\îÅ¿óş\â\Ş½Kš\Ù\Ğz\äYL\é˜uò+M=l\Ã\Ü\n5n•\ÙğN\×Ó…<ô\Ì]¢\Å\ZˆWiQ«\ÂMyvv\Êéˆ€s¡‡ƒT\æ­¿YXz£1sŠ\é]¢\Ú=Tr¨nÀ\"Ä¼¤¨}\àQS-ŒY®8Dô^LwŠ\Í\éVş*o7\é•fÑ¬xq=\éûû|sŸğ\ÍiÒ¯K’·å‰¦\ÛA˜2$ã°–T²z7÷,Š\Ì\ã#\Ê;½ºX‡\à\æÿ†<:\Õğ,\ÖA¨ğ!fU=\â\Ï#13\"`ÀÀ*Ÿ—†À¸=r4”+uû\á\Éû°e{4\"D\Ç\îÖ¬y-¦F¥órPV3©ªªl®8\İ\é\ÚDôñ\Ü?õA\áÏ§ğ8b\İ2o“ñ\ÜH\Èi ³\Õ\"C´©48Q\ïj\åú\ç\n\éöú¸´®Ç\nq\å\ÛË‹Zy\×!—[=\"üt«/ûŒ\ÜV\ÔV\á<:÷w2n\Z‹¨¾<`z§µ©q?‹Ûe\\\êò“\0\àQIT6I$m’»£›\ïqøß‡°7¹\çeb:³S©h§\âB°d¿\Ùa9\Ø\Şù1G¡¿·\Â\Â\Î5R\×SñÚ¨\î\Ş<t\Íş÷\á¦\0=Ñ’\ÈF$\ïrlTóf#;\Í:!\é³İ”¿°›ğ\İ^¾¹\Ãô¢\éË›\ÍFq+}×¼¿¿õğn´BU(Û¶IdŒñ­ Z\Z\ä\"5nPCTAM‹|]\Ø\Ã7.\Z\î\Ã|ø•¢l­]\Åñ\ä#´I\0\ã\Ú)tŠ°\á\áá˜¯\Ì\î@«\ZöP^\Â\ß\0\êj\Óğû_@¬ñ©ÿ=7j­À¼+´y \ë\0NóxCRV‡\â¿:ÿ^W\Ò\ÒW®¤9&÷7ZÒ‘Oa²Cš\ÍöR\îo€&]G;»`6\èy¡\0üø`\Òv‹»b¥GS`\î\ÖğrQ/d‹,š6\n+|8EÚ¢XFhkp“Î„·²Î‚\æ\"I:\ßSs\Ú-w]\nBQ…ÿ‘Ô¥n¥”\Ú,N¹½\ËF’d\ÏQj\âÁ\İı\Õ´\Ç\r!Ô¤7°<\à\Å\\\ß!\ä\ã_!Ğ¬M\È\Ø\äÍ”®\ä:I\Ò<\å·^\í\åkÓ´ÿ…ô›;ä¯§\Í\æYJI\Òm¯\ä<\å;á°‡ÿ›\Ã,*A9°I’6y\á}g@xT«ßµò¹X¾®1®¡1ğ\Ö5Î©›\Z0«@j5\"¡ü³\ÅWYi/Z‹-8l\n‹¢¤™7O‹‘•\á\Ì\ãa„…ğ[…\Ú\Ğ\İid{¶º¶zO\É¢™58i\ì=ºUx\rZ¾+\Øm„LvŠ}Œyú#ÉŠ\ÚB\à/Ù´*\êA™vŒ«\Î\ÇA\ÃW\ÑÀ¦««Ô²QP×âƒƒùx\Æ\Ó[Ø¹Ğ†\É\0Uqo\r;\Ì\Ï\Ë\Z\Éø?=F_\0kN§[aå«”ª¤7¹unÁ9=4\'p9\Ë3-–^ªãŸ¢T\æ\'›|^œl\É!t\ã‚yğı\à\ÕNZ¾§*Ò™„\r\ç„ä‰w\Ã\\¿µ32 ))Ttÿ<a\èv‡\é»=¾y“÷\ß\ŞOò¢ú¥”6@’€Œı\İ~+T¬-\'ôµ\ì…4ò8j¹·\àVv\rA\å>3°?G®ğÒ‘9^2¶´Lğ¦\é§ ¿œp• ö?4@“‚	\ê\è¶H>„¡\È\r\ÄBÄª=ñ¢Áh{Á‰wıõƒ97\Ö\Ç?nP0¤=§&3³`\äI{·\Z•\åJöó¹¼Ùˆ?È‹‘&£\ê\ËwoxµXÀ1™\\o\ÛÀ\Ê\è\Ôù;®\r\åÁ(ª\Äü\î÷òö\ë‹Û s†DE‰Ù”*º®{˜6Éj\àb®\0ˆ†¢\æ\Â}Hgq#_\0kõ­…*°U\ÅVoıDw0{t\äö\Ì\æ!º\éÖ›«š‡Jòª4o\ä.Lvs\ÈX\Çş\×ù”-8‹‹9m‡\0¯\ÒH€hJ%)”\îwN]TÙµ\Æ…-‚\Ã\ÒBy\é>tpg¹-wQd\áeOFt¨\Î\ßFµ€<«.,¿£\ÌXM·y\ä\ÓFdÒN\Ó$\Ïw\ï|¼Ç·n&|{‚|3%y¡º‘”ns\Ór\ÎYoù\İÆ˜/;j…û\Ì|Ò•\Ø\ÏÅµ–¤Sü .\Ù…¢\ì¨i\å\ã[qã‚¶+	\àjyÏ›\Ò\å1¼Oq\Î3F˜“d\Ãş”…\Üù\Û\Ó#Din–Q	Ê˜Œ½õ‡ƒ¢iMœeºĞº¬6\æ~k\æş¢\ï-=Q2†q¢{~¬f/Z8÷÷¾ù\ÙuÔ†°##G•k£n—…¢ˆ2C\Åóµ^aAƒ \Ô!p]BZ<¸@G÷¾,–ªvı¦Ìƒ–hı„\ê»Z\Şc®f‘Ï¿qK\'¤:%½¿tô¼¬h§’ƒ;p©\à4ª+Tõ¨R6o™!züÈµ\'\n]ø«ó\Ò?{\Üw»Ù™K%u:Ö“>şÍ‘«Î¤\ç¶v‡Dx‹ó±!½\Ç\ÎŞ½gµ}r\èL‚Œ\Û\\\\$E¾‚\Üä¤€¦·^î§¯\ïvò›=¾\r\ÅW“¦­$•„,À]•¢»H\Û\âEx˜\ÛX¬ õv(ó€ùn1;ñˆ~\Ü B‡h¢®\ç<cgvQ=^OÁwX\røv‚(11\ì4 ÿ\ÃJEYı!\Õ2”\ç3¼<\ç|ª¢\Æmk\âš\ÍZZ\Ô\Øq»úñ\ÚÀ+ ‘ö^ı”¹¿D:¬\é\Ô˜\ï\à[Ÿ[\Ó	Y£Ï„ONƒ\ïû*}\Ğğ¨Õu\êo:¨-VšŸ<^¨c0p^({% \ËYBU\àY­OQ|\ß«\Æ\ã\Õù°A.^Wa+O\ä/¥„œ³ª*¨f¹Sme_!‹F\Ä}\æ9Uï¤¡4\Å<If9\Ê\Ãe\Ús[\İ%Ú…Zò§iõÄ·!\Íl{]hcİ¯£\ÎFú1~Y­g¨¦\Û\íıf£»¤)\İd|şc™~ñ\æ:\ç&\ï¿I?·\İ\èm¹&ˆd\ä\Ç÷^E¥0?\áÇ¼Ÿ~\rİ´xmPß©{\0B\Í+XX(µÍ¨ƒšJ$ú°ş(¥t\rÈ±\ì‡bÁ|uQ1\ÓL¢¯z\ç6_ò«E¤·š0\ÑÚ†%\ÃñŒ!wc£¦£\rj*³¢]¹\Æu)Y¯\Ö*F50jM÷\Ôq\Ïg4t\Îş–6q‘°:/\Ä4zÌ£ùÀ†BSı]øcİ\Õ\Ø\Î÷lµ!µ\Ç#Ì‹¢©\Ø[Œ‡\ãU¿\æZ=<‡°E€B²4ì‰„şw\\	;ë©‰a]\0—\ÄtR\Â<E5¦ªrdÏ¥ùoBSYZn]ù¦Å¤Pş\æB$°\Ù!\Ğ&É‹l•cBQMºB],]”¡8\å|ğ.©&/Ÿ˜ \ã\Ã\ë/¼ğyVi.=\ïsÔ„Vd…c+\0\İ@s\İ_%\Ùg\È\Õò¥Onò·v9\ë&O\ßÖ”>¿\Ñ$›¤d\É÷Q\Ş3\Ô&‚[€zQ˜W\í…\È)yÀ¢­öE»®ôñP„|\ç³>^_½c\Øo³€N\r\Õ\ëŠS*ğ\ÛfQ\ïÜ€úè¬±\n\0@}\Ç\Õ\Ù\\bÀ¾\æ÷V~\ïŠ3Í¸gc…*–¡¢s#n\ß/\ê²&T\É\ì\ÜÀº}<Ÿ©\ËÄš¨ÑšÀ„TÀ{¥A\Ü]\ÊZ¬ödÁE‘Z¾%?\ê]4+ñ\r\0iSzz«}†R;±\ëÓ³\Ä5•{¶D©rö±›]1‰\ÃSBôE\0°\ZH\Â\íÿi\Î\ê\ÈF\Şu\ß\Ëx¦k_±\ÅW¼q`\ÓnV÷ø\èT÷a\ÊGşs8c¸¸\áñN³ƒùSóŠ+E‹/\İ«j\Ş&\Ù\é^2T_Où«¯öòı~úöøù”Ò³¤*›”€Lx„Ş‡Û‚:p\Ğg*8k´bú\Î	´Ş„R<‹¥\Ô¶jj]¥õVm£—ºfŒÊ’‹\Ôü»\\ûR²y¼µWT\àQI`±+fJ¬À\Z\Ç10\î¡;ns\ëe«E…µ«\Îb…\ÂA\ì˜ªº¶ñRòeõt\í¿šgˆm,.s¥\ïø\Ã\ÒT‹whş¤ô¤’\îS[”\É\í1‹YÎ¹ûX)›\Ï\ï‘x™\ãù\r¬^-o5.C\äW=\Z\êw\\$¬0\ß\æMƒ}Á#sS“xŠ\çò_¸0>\àµIÛ„‡Ä‚\Èó4Q\×S<dM©Z&HE4I^	Ç¼\Ñ6>\æò}¹\Ù*Ö‚£òP\ÙY<(q­ô˜X\Û\\\\\ÓG˜¥‹x©+\Ù‡K\ç\Âõ!«Bj¿?7\å$)\á®Ô«ŠL\"o½\Ü\É\Ï_\ïğ‹»<}g}³II\ÒFÒ­¬52\0\Ü¡º…^”Ë¸F]SÿÌ´bøKö!e¯vƒS!—P‚½X\Ú`÷Œ\\-t¬T¶˜a\ÅZ¤Fût\á\Ş\åcc&¶\n#6Fn(ôFöY¹Æˆtƒ\Ù0ò¤\Ò4·\\w\âa\ïªØ†yØ”›E\rŒ*™c—J¨Œ\Ê\ëé¢¹ÁŒ\ĞJÔ…~ªd{nw=\ËnQµúš_½r0yP\Å{5*ò\İò˜¡]R1†?:ƒ&õHfkS)g¥p=‹¡5‡—_ƒ[Õ›\é1¾»’W€»UP§G^ÜŠIñ\Ñò.‡µT»-¡<\êm(Äˆ\Æ\Ãb‡fL’\ÛP\Ù\Ï4\0×¦\Ã\æ\î\ã|øoÕ«\î\Ô$~\Å\Æ;¼| \é.”6»bZ­‡\â\Í\Çó6I–|ô{&´¨ºÛ•\"\ä%¯Ğ¾\Ã;\î\Ñ\áõ’$D\'\Ù*²n®^n¶¢¯®§/¼~i·—?·\Ëù\Û\"ò\å”nU›\äœqP—÷şò\n\Û·\ê\Ş\Ù	Ä‡a\é4u\à6/i\Ô	Kò\Âº¿AŠ¢,—H˜-,`<\æ4ar\ï\"v\0‚^L,	\Ëm·iµš—Rñ”Án\âƒB\àvM‹6n\"À:\"D\ê\íœ\r\ä.\íkoW)¦+¬iŒ®Ûœ˜o›¤û\ĞT\ŞG\Ï7N\å\rIe^\æÂ 9E\àR\á\×Cu\êHCm\Âh¡\ëiC\Ú7\É\0bşi°\ì¢\Ãz\ì\ã÷l„^@}\Ü@T\åŒ	—9\Ï\í©_L%§€’Ÿh•Z	\Õ7\0,\éÖ¥	MŠ”ôˆ·GR\è<\æ\Ã\"¯[Ï§\ï¹\İŸsŒ`‹\\\â™rsÁi\İÀ¢Hjªš¯\n\ÑyY\Ş<89J/^¾\Ò\ÙiÏ²ı³\\\Ü\ÙÄ…\ÎÚ”u\áQŸ-\ïZHF•¿!:ømzôH#gÕ¼Q¤	*2©\Ê~»\Ù\è~\Ê_øt¿ÿ\Şõ+ù\î.O¿¨)}!i’”&A† \ïB›:ˆ\Ç\İ-V-ø\ç\å±\Ş9/Œsñ“ã™­ô£TZ@Í²\'nnĞ€P›Dmµ\Å|‹\Å\"a-C±\Î>^….YõQô±\ÔbQ\ß2›º\ÚÒ¼¡Z>¯Å°…W š2–\Ğ\êÌ‘ª‰\ÔR\Ïô\îº^¬şr}Maa5\î¹µ·\álœq´.Á\Â\Ø$YËÄ°\æòó¼°Ğ›\Ğ\Ş%ŠF^\Ğzg‡6³ÿª:£\r\Í~„\ÙvT6±Ô¡–\à\Ä<eN¯ÿP4x¼\Ó\n­£Á\ãk§z\Û)0ò‰k§{aŒ0ƒšë´®ò®¼\î\0l\Ö8J\"\Ø°y<pš»\Ó1Š\æsøÓ“	¿½¾Ø¼\ÄÁ£¿iú»P\ßJ2ºMsøõ\İ\Åù\Öu#\Ú\İˆj†hR¤Í”4\íRÚ¤ı~ú\Â\'9kw=\İC\ïç“ª¤\Û|^d\ìq[*Xòyk¥aPû\ZÀ€¿\Ú¡v®.Œ\r\Õ|]5·\Â\n¨µg%\ìZ\İ\ß\Ò{\\S\â5>¨±|^{\ã:\Î0*ª?;†üItô)¦„I	Á$\ß>õ“8\Õ\ŞN1óµ\è\\©P¸$\Æ^\Î\è¢.*‚?bp[{n0D4—hÑ…—\×À\ß+˜Usı-\"\á²Q…\ïF\æJû(\ÊU#INY¿\È.ÚˆDØˆx¦”rI\×Ùƒi)\Ï\Ìò~Y»C«\Ç.­¦–\r\nm?\ËÇƒ“G-\ã\æ\àyÁ\Üq\Æ\æh6\0Ø˜`Û»aK)À²=€Md\Õ\ÛÒ«c¹ğŒÎ¸j³9.¥”p\à‘˜V:^ƒ\ï\á\â\Çj \Ë\Â#=÷À¦\å\à\àøAÎ”™·G“\\%/sw\ÓıüK\ÇcnAm\á½]x…\Ó=\Ó)r†¦Y›\n*?\ÔN*˜ªy\ä}ü>ä‡®*\æe“²@“(Ttÿ|“vI%½\Ú\í¿ô*\ï¿õ\ê:w—ñ‹ª\ésªIR‚ \ã¶J\ïCX³.\Şy]lˆ•\Ä~P\r\ß\Ô(taù9dóz-#»½L)1r-+›Á¨\å‡Xğ\'ü8)	7E@\r”dBÀ¢F4/—\æí˜›1\ê\éCPU\Ê\Í\Üö\ìg¢\ÖÒˆ’0±<\Ûe\ÈY¸¤µõ¼‡3z‡§6[\á\ÖvĞ…HpSa}Ñ¤K£2=M»	\âÅª\Ï\Ú;!n’E\êü*J¯\ã¥J\à¤\'œ^8\ík\Ñ¥öŒ­++\\[¢P°\ç]AD\Ì\îŒ)ı\0#½­²©\î\ä*\ë\æ\Ì\ëÀ†Åœ\ï\àJSP\Îİª Cô\Ør\á\"º—>GöÂ¥\ç@\èò2ª\Ò(9IS¥\ßV›B@^$\èGY†&«\Î{iÁF–e–òü\ß\éX¨c\Ík*hg$½ESELÏ’\îD5\İ\äü¥¯÷ß¾™¦\ï\Ş\0¿˜4½­²‘¤Y€\Ü\Ö\èU=\È\çEj\İA0¦u`(\åÿú6™‘û–h…\'\Ä\ÇY÷V4¹ú£Öµ\á\Ø\íp\ì|t÷\Ñ]˜Áoº|)Z)‡«3Æ²K5ó‰\\~-ƒd\Ód\Æ\ÃK<\Ö\ã÷Á7²J\"=PY° ³X©\ßcJ\'ù\Ç+=ˆ_¼8.ÏÇ…\\_G·GG<‡]\ë k\Ï\Ş3¶Ì¨ó\Í.¬8\Ô\ä%v\åT– ¥u;¢Šu\ê\Ã[\Åñ¬ôu}\İi¤„Šòü;§\Ö`\Ï\"\0\Åf»6¦\ÃÎƒAm:\â4Oÿ\åÏ‚Ğ—\ê\ÆÁÿIÂV	’‘©\È,is¸h/\İ\ÃV4 3\Ë\ë§Ã¹ªK©5²\Â\ë=I\î_•{A6^»9#&KÁ†K#e\ÍØ¨Š\È˜4mvz\ë\éıò‡ûıw®\'ıs\Ó4ı¢¦ô–jº±r†¤G+8€	[¼Kp`Àˆ_y\ëg V17fË›TóT©kª›£\ÜÀiG_¤b\É(,\'$¬‹\â7G«ğD\ì7\ÈQ\í>7Œ7*ve\0¬\Ö\ìL;Çc8ô\Ó\â¸0ş\àœeu\Ó3¡7n<\Ç”‹³g\ìú¸¦­²Òµ•\á¯¾j¤‡§W›¦6H×š.­,|²QÑ†÷´\Ô\'%Ä›ˆX\á£à´†QÖ…–)¥\Õ!\İ\â¹şM¡q\ÎQ9ô”\Ãğ(r†Ê¨†\ÆÕ¡\Ö\Âöq­lu0odj±_º˜\Ëöj?\0&ò\nTõVK‹\ÒG·ş\\»¨\ÆvZG¹±yñ\å\ÊGqP<±v5	[`+\çEù¦\Â{U‡\Ï\Û!±3\'–\áÌ¨ş~{ÃƒRL•Y©#û–·\Ï`)¾e\å\å[y¡€hNP\ä„-\Ò\îj“vÈ¸\Ú\éş\Ë\ß\Ü|\çf’\ï\î¦\éSJ/T“¨\Ş\Õ*ºmómhsšùHJz}4\Øa.\Ô;,\ã¦´Š\ÙG²³(nUk¦*9Â°\àà®Ÿ*”\ä\"¼õR\n¾\éRe\æÿ´B ­z\Å3ƒµqµşE\Ëşwµx¿\Ò\n‹‡-4\Ñb€¢jø\Û\" ¾ü–\ïii\ÒNH …uŒŸË†W<üY\Ãmp\Æ~M\á\'±E“<f:‰§ñƒW5\ÌN\ä·8›qiDihp¾#\ê\×C¼]z\âq\ÇıÂ¦\Üj\î¦\Şx\"V\è\ß\ÈĞ•\Çt\íPj“B\ë_z\ïxhi¡rŠ\Örƒ\ÂY80jÔº„Ú›\ì®\ìk–œ\Ë:w,°Õ\Ş\0p\Çß•ˆln]Ài²\'¾\ç7D\âjeyy.\ï\ÑÏ\î\Ñ*üzİ™\ç\'/Ö³T\ï–b\Ó\î=JmJu!gI(Kõ„R‡srÆ¨pÒ„œ’$lU&\Õ\ÍN6²¹\ÙO_şpwó\çvû\é—n2¾}½·BVr\'d¥\"\énÃ´(\È<7\È\Ëp\İÛ«•\Ğ\å“jı\Ù\ÊGK[­bV¹/\Å=2\äT	[¤…\é\å´*\âùÑ®\Ïö10¯‡†\ÒG1‚e41\æ`-,\0¦Ï›\ÍnKŠGaÁyfö\Ñ\Şø¡\×hc#V½\çşt…“F¥…^ˆ\Ğe°r»p‚±\Ï\Õ5¥\íh¨ó\Ô\Ù¥Vš˜tqCj[I\å¾{jZ\"û7*G\×ş~ò÷ ]Ô¹5ò\ï\æ1´„\Óœ\àM²k\Ò\ìXÁ{ğ\êr¥\Ü_·A\ç?or€\×yŸ4mñ¨=Q\Ü]õ­Gñ«œ«`§¢¸­ª$¹\Â\éÀM“@ö\Ç\0™fW\Í6»ı®z,¼\Åş¥YUMS9‹äƒ»,¹s#{\Ù\×kr©\"\Í\Û4+ut\è±VˆJ:¿-›[\ì\Ò\Åo\Ó1\é\íñ›i»\Ñë„¤/óşKŸ¾¼ù\î\rò/\ï\'|GSz.šnsz=½Iózm³Á²_ ˜\Ğ\à\Ùµ\'Dş§€h¨-¡@j¬x\\¨B\îË¥‡{›Ax€XÎ¸D{\Z\'ñ\ìÁQm¡_>\á\Òr|œ\r£¨©:Jy\r²Ëˆt€vNA\"¯\'š\'U³÷\nk¬³A°.üú\ÍY~›\Õ\Ä®rª”\Éáš¢\Úÿ\ÂSºR\ç‹A@¬»ó]d \í\İ` xğ½¥‚ZólX\å\ïu?û”¼Wzñø\'Ø³{¡°EJn£”\0\Û\ÚEq+/÷7f4,µ¾H%Ÿ€Á6¢*H)ñ£\Î\ç³d‘ƒt`\Í%\à3\"ÿ\n.¸C\á§\\’Š:\"u¨fC\Ä)÷9\İ²!®5f\×O³p\é¼\\\r¶ñ.ê™•Ü»·÷H\Éöß\rAŞ¨nd\Ú&\ìRR\Ü\ì÷_ø\è\Z¿ürwıƒ]\Î\ßM²y;¥$š²L\È\Ğ,\Ğ+\Ş>V0Ÿâ§¹yk\Âj\Ï\Ø!\Ô\ÇúOqƒŠ©Š\Z\à\è\0_Ö¦³\à\r\ËPfA@\áƒ\Èf¼\Öj/\Ó$8\ÛdFJÃ¿`¼:¤ŸR[m€ŠÙ¥=ñ¾•ü*m½;Ÿ”‹w<‡7ğh¸\ÉL?h\è\Ñ\áI\×J\Ò\Ğ?\Ü@¼U±(‘¼]w[¨ı3\Ù z\èH “µ’U-)8G®¸³¹\Îú7x}¨•«Ÿ„\Ãù°W\Î_\"#¹x\Ç9?+ˆÜºµd\ß\â)\æı^\0›ş\Ùtgş›‡ø\ÜTü¸ƒ\Ù\"\Ôø.`\á\á÷<¿c#\İq*nü¥¬€l\ê:) ‹\Ø\ß4\ëó‘´òf–¬›+@y\Ğ\Ç\âı\ÓÁ\Îò‰Uõ\ècT¨uN½Œ‹¸\rG®ı¥» @3D7¢ùj³½I™n\ßşğfú\Î\Ë\İş»	¿¤)}Iu+›4\İ\Ö\éÍ·q\Óm¼\ÅQ2Ãœ\ï–\áÁÇ¹E¥g\ÉL9»\ê\0¯\Îw‡UÃ¥g9%Eh-|…aVq\İZM\çEi,¶‹°Ø» B i\"ZfœÊ‡ZU«¹Ì¥l©’\ÇXİ”(=8nù”PÓ¥(\æt?¯ùj_\ÊQ5´¸ª_-=s»$ŸTß…9GVyT—ı\Ğ#K‹²\Òjv…v=©\åû½\Ğ¡\rxmR€E\à=º\Ï\ì‰ŒE\Ë\Ö\Õ•†X›Kj\Öpk¬·ZñSB\íkÀ@i\çM\ŞMµ\ÏTfsE\Ø?\Ï^\È\Ú\Ç{\çû\Z8\ÏH\ækLb„;]¸Ô‰<(\ä™I$\Øiô\ÛSÛ¼­‹M.6u}=½uZ™úO€)/c`AÌš°‘ÍÉ™O\á09(\â„y\×t,%¸0õœ#ò€q:fQL“\ê\Üv\Ê5Í§j¶8\Õù*®J•Œ.\0\0\ÄMIDAT}\âó9OCÎ¢\é¶Po\Şnd·Mi¿\Û\á\Å\'7»_ø\èf÷ƒ}–_\ÑwSº«\Ó \çıA\Şòıjµq\Ùß½n­\î\í…\ïŸy½\Ø\ØÜˆÃ–ñö\Â6U\ëğE–E7›{\Ûæ™M•\Ö\ÜR/t¨uú\Ïô#\\{\Ã5F³‘&\Ğpc6š¢Õ€„´WfUüşAo\ç\Èğgt´kh«/,e¹\ï¢h\ŞQ;Cš0\Ø3\ïT‰s…\İXø·˜pE\ÅlcØ¼\íu–>Š\îEµû\æ\êğ½14\í¸E=¼\Çß«I3£‰m˜\ÙO`‡ğòE°DD6\"8¨ƒt\è½-eÀ&)Á\æLYùĞ³™\ÓI½\\\ß\Ûc6Ç¿Ï¼¹GY\Ì<­R(½”a6µl,,¡şñü4#\Ç\Şò§ºy¨\Õ{µ‘\éj›^M®>\İ\ï¿ú\ÓW7\ß5\í¿?eùúv³QU\0™r\Îw\è*_P/ğzù˜p,»\Ş|]&=\àù¬s#o`{y\Ô\î\èF\Ê\ë—»\É\ÙK0!¶®­Q\"FCN¦Ÿ_ôA!V¥—.»€xz€Ÿ¾P{ô‚Y\\\éG¯G·É‡¦\ç?Q\Ã|(«#÷÷³\áı\ÇU;zBwAƒºf,+<\Å<I‘qñ®¶\ã[\êí¶‡ÁÏœB\åE(\æ¸\Ï\Çy`…\è9{TÀßƒÀ²úZ·	¢ö\Ã2”ş«òD\×\Å\Ó0µ\Z¥‡QF\Î\Z\ÙM˜¥\ÚX—ÂM1vC)\ç\Ó>\Í\r™D†€W’Šb+2m·\Û¨l>yµ{÷§\×\×ß»\Ş\áû7û\é[\Û\ív#’$)d\Ê\Ó}ı)½“+¾d—Î–Uÿ×R@@£¢\"~\å\Â\à\Úø’#\Ì8À{\í¹ŸqW\Ë3I«,cŒ­A\Z\êş<\â\ã\Øğ” \Ñı¯õùÙ”\r\İ@Zn2\ë\ïvÂ¨1´\r‡\ápz~‹1Fóxür›-\á\'z\É\âU5{šU\åÁ…\Øi÷ˆ\Íx/]+¬ûµİšÛ¯\Æa$—¿cJg+÷k˜¡Á\Å\ã¾i\ÔÀ\É\Í%’o½s`m´¾SZşD‹R“\ë®r~ÿ©·n\çU* |a\àÂ°\Í\Ë\åvP+^ Û¿{lšY†cg·ıQ\ï¯\×g¿qÏ·\Údº\Ùl¦+‘—)A_\î¦/ı\é§û_{µ\ß“ÿ\\º\Ú<SU\Ùl’ \ç|÷Ğ‡\ÂÃ¨¡„-\n\å\ÕÒ³À÷şÿŸ›”õ\Ê dSx\å’üŸúˆ\Ã\Úm“£t\í !\ãIB@Sœpi¶ô\î\Ø1à¸¨\Ç\êä¯(ğ:½k‰¾‡\á\èñ\ï…I­Z\á`Ÿ\Ä@\Å,“A\"|1\ê\Éx)À\Ïb\n¸UÇ½lıû\ë	\è PĞ¶­4wSğk\é\ZÃ„y«3DùñRxZ\à$Ğ²÷=ø†-o*”3\æt¾jymÔ¨Q(E\Õi¥$§6fù¿\Ñ}\Ïxñ{Á\\fBğ\Ó&Á®\Åû‰•&\Z\íı=õ_÷UUA~‘\äZtƒ\ëiÿ…wùûŸ\ŞL?¸\Îù—RJo\'QÑ\nr¾g\Å\\\"^3\ì5\Ì\íEh\Ü^+\ïp$ô2:\Ş¹\ÑÀ\Õµ¼ˆŒr3–Š@øªg‡†I\Éz£\Î\ÅÅ¸\ãA¸\ê\Î\ì\Ğ)³£‰\ë\×E\ÇO¥B\Ìj„·óNl\ï)B\å©!ÿ<}o‹sĞ•†\Ú}?‡]G•¥üMW›ŠÁ\'QV	f\è¼R)\Ã\ã\n0ll,„™Á^#|R?Ä¢œk^Y\ß¼\Îğ¾iVõF\èÑ€\\:€{?\'>…÷wş<\Úû;drNª	•ı\Õ&\íö9¿ø³\ëıw?\Ş_ÿ\èzŸYSú\âFD6z½ù.µ\ìy\ØP\×xfÀ—\Í{ñ3k\0¢.%­ùQğ\09\â\Íµ\Ñ\à…7¦^X”ˆ.ÿ4@ÄŠ9úBô˜ù\×6r“¥¡/Z‘oµ/ó `Ñ¹Z\\\ß-|B+V\â„Ş½¾j\\¨«å§\É\İEtbŸƒ‘‡^û´b`üš¨c™\Õd=p\\®0’\ÃB\Ê[<£\Õ1 ®å†•¡­¤e±—mù•«\Âİ‰ˆBaú\Ô\Î\Ò5dj÷z[\"8Ùš´\ÂF\ÎkÀ=ÁA\É4ƒÁL +2B\á\Ék{—š8\ìQ\Éû[ 9‹n·šŸo·/5iúôf÷ŞŸ¾\Üı\àÕ´ÿó9\Ë76›\Í#ô\æI\é^\ÈJkF	\Â\Ö8´gğ\ÃY±\é«E‰\"\Z|IP„P\å6\èEy€ ğÁ\ÛJ@3ô\n;Zaè…\'-J\ÊU–C\ì\Z\ãLyx)0È¹dœ¶`»\ÈP†ò6\Ã\Ît„Ï…?(\r\ï\İ\é¿t,¯\ÈUM›)À\Ğ6Pk\ÏI¬AŒ\é”òÏ©\ß;É™\Ò\Ôø©v\×E@‹O¥U”	E\È\ç$€jû‹Ñ„\"\×\rÜ—Ú„\0¡¨˜†L©$//5\n£h-kŸyx½Ş|ü.\æ\Ï¿\Z\ïı-\\£\Óû»€ç¬º\ÙH~¶‘\İnò«\İ\î‹ö*ÿùWYşüõ´û¥\í&]	’¨d™v»ü\0½·ÿÿj¸0#RT\Ä0pd€a&Ü»\Õ\ÜBLzú?ğ›÷„\rqö\Ëqp¡¤Æº„¬P	®¼R\ÔP\'¡Q\Ï-\åÁò€\×\ëA\ìú-[hAKF\Íú—ˆ\Ç|,\ìF¿QM\×§D\ß\èoc\ß\ÇbÀ8°t\Óüµn\âF\à™\nuü\Üfn?šö_­Wxk¡uTñ\ìã¤‘9|Rk°E˜M‡V¸©@A1¬²¬\r[:`¢E®Ff¿.\0\Ü;&£\âWQ\ïoÿŸ/~Ş¥$~5MH)	6I÷/®\Ònšòó¯ó·?¼¹ù\Ñ\Í>ÿPSú’j’¨`·?„\Ş\ä\Ñ)šV„\ê\äùÑ“°\rƒ\Ø6ü\î\0„‡\ê{¦<#\Û)a¤™›˜Œ+\Úl\å5˜\ÙZ†\'‚Ÿ0A\\\Ä3|8$-\êº¼\İ\Æ.s‚\ß4±\á­Wk¾^\r3h@n:‚\Ú95}\â§ôÁ\è%y$\ê$\ì\î^\Ñ\ã\ìögÀµ{nÌ¡>i(¬s¬\\Y\rV\ÏŸ­\ï\Îö\Ş\á~bd«E5k%GÇ«\ã\ÛRÁ™Q\çB`&o%=\r\0÷ö\Ïy&£K•\Î\İJ\Ğ)C¯6:]]m^\n /§é½Ÿ~²ûÁ\Ëiÿ\Ã	\é›)\é\äUdº­Ou½p@\ÓSjfa\ÆD­ü\Öj\Ğ\ì•b\ë3A\Ü\0-ı(¡b‡UI Œ78j³¸\ã\îºMj\Öu \ì\Ñ\Êòƒõ\Ø\ìyd÷Ÿ\Åö¥Š\ÆÀ)ˆ	…¶&£˜üÿ~øW\èX¡\ß8\ÍX6o¼œ\Øl:EƒpŠ¶\Ü3¾Ù°_©fw\ĞdT(¨wS\0«Ï™#ÿs\ãõ\×ö\àEa³\Õói\Üg,j{«Mlñ]+Ñ´ù‚».A)Bb\çş»\00\éıİ˜0+}\Ô¯Î¿\\j\é#\0šUu#’·¹¹\Úlò>\ç\Ïı\é\ËW?xµ—\íöû\ï\éfûLd+Š½\äIò]Æ‹––\0\Ê\Ë_ÿ\Â\Z‡W\Î\Æ1®]Q¦Fğ\å€\ÍGb¯\Z\Ü{ Wº¡7vİµ„¼\êPJ][Ú®/¼±\í„\ì\rd\Æøócªò£Æ®\Ë\âŠ^\èğ]»Aƒ\á-Å¾—j\åGú«#û±Fø5üZ›}Z\Õ\ç\Ö1Ö†\Ã[³±[u‰…?>\ÔF°\ÊJ9u|M\Ù\ç\Â9ÊŒ9i\ïx£\ÍjŒQ±½\Öñ\Ö#+€ğù»ü2HN\ÙŞ¦\ÒG&~µşw	Ù¨\î_l\Ón¿\Ï\Ï>¾\Şı\ÂG7Ónrş¡Hú9\Õ\Ûò¼\È\Ó}\Ñ.Õƒ´\äp\Zˆò=RH0\×I²‹‘	Ú³Ù˜—iP$ª^\Í_®Šg—Ç\Í\ë\ã\r& —\ro¶š\å)$\Óğ\ê\ä[!\Z\\Hp`&Hˆ@\Ğ\0<<—\æ;\İRfh-C—½Î„a„¹™\r©){İ¸ı\ÑSj¥\æ\âl\×XS-;V¶İŠU\Æa\è¸\ÜEc´¡XuVaRHvFÉª«\ëù¼£\ç¶Ş«z^\ï90ö¬NµŸğ(’V=nö4`+±ß\è\"8\Ö\Øc©9z¯ÀƒBO4¦¯K\é£,¢\ÈĞ«mš6{½\Ö$òj\Ê\ïüÉ‡Ÿ~ÿU\Î?\Úg|k»\Ù\è-ôùvW Iz\á\ÚÀµ<²j\İZx\à\ëKFÀ·Ö¦VQ+\ç:U\æy…\Égû½+\Ñ/\í(O/uŒck‚¤a·\ßL™™\×\×j^^¸e¿y’}K{X(É«Oo\å˜Pcy\í\nEqVF\È:\Ü\ï\\v\É\ZŒ\ËZU> ¶±s\'||`\à\'£\ì5œ]y\æ:` ³gµfhÀc[¸\ï\ã¨=—k0\ìµQ¹\È­y…=¹g\ÃS\nZ}¸õN?œ“\Êì‚[“\Ím‘ûpÿZùåƒ‹¨·,_~ô¹=À±m\Ô7¥¨¦½*®’\î¶W›ıÍ”?÷³\İ\Í÷>\İ\íÿ\Âõ>ÿòv³yM’4\Ë4y{µh#ùx À—}b=¦°U¥\Ğô¼Á†%‡ ¾¶{^u zm‹\ì!\â™mVo\á¹\å\å\æ¤\ÖÕY\Ğj³šz\Ë\ÂhAÁ \Â5!µ\İZŸ·Ë¸”,Bdƒ¡ÿó¶¾÷rT9ª†„¡Ä‹á£„\Ñ¢{û¨½§Q°‰¢mw\Ò!}\è€\×ùµ\"u|Qù0jc\ï\Ü\ëÀ™\"±9<\ê@\êüñkej\0Ã\Å\á}ˆR\ÅG FŸõ\"¥’\İ}˜›±Œ37Z\ç\Ø\áù1°öy\äiªô¯ÀoJ-\ÏX¡ôD4Cõj#\ÓF\Ó\Ëm\Öô\É~÷Õ>zõ^î¦¿ *\ïnR’MJ’s¾\ãC\èüöµÚ½U“\ÜStKl™\ÃÀ		ç„­û®\Ü^\ï8÷\ë\ÉıõLµPx.ñ\\üSP0\ÛZ\ÃtAWş\ÊS(\èP´¦€7ªTÍ½;¤ ûgŒI2ºj\Åc\"\Û46Z\r\ÏkPyĞ†—6\ê\Ü8…I_k\İ\0$t\é¸1Qß„XqüQ¼\Z\ì¬ùE¼ˆ\0\êÙ·^µñıx€³Àš\r¾\çE¿/9[\áÌ²u\\}n„¡`—Yµi»¥\Ìh¼g¤~q¤ˆcZ~ÿlğÀen*nŸ\é\ÒG’\êmù¢MÚ½º\Ù}\îg7ø\Ş\Ë\İ\î×®w\Ó÷·\Û\Í6%\0˜¦|—%5J$Á°)‰cˆ\ç÷z\ŞgX‹\íw,wj¶µ{¡:v\×@”’Ch‚\Ù\n.w\Õ\é\r=À\Z\Ğ;\"¼3\n\İ\0½a\àEc?l\ZBÃ¹MòG\èvFƒV³»ñ4:Mbq\Õ#\Ñ\ß0B‘\ÓZXó\çË‡\íÊ·\È\Ó\Æ9z}Â \Ç\âş’˜]_\Z\ÒÅŠ\Ê\Ú-fk‰!\Ö‡\ÚFE\0ğF„¥³pYjó¨°x¾\æ\È\ë!x¿6h\ÏS®Ï¾\0¯<*Ÿ\Õ\ÒG·\Ş^\èF5?\ßl^	 /÷\Ó{òÑ«½œ¦_É÷o½½*9\ç\Ûg@ETa\æl²\à|A…:·—1zH¥E{~¯\ç=ƒóö€[\×\\y×¡ù«	zA…CÃ˜>„\Zƒ0\à·SÜ¾‡E›Üø\ã\æX>\Ü\Ç\ÒQ6t ä›¬D(€|ñZ1\Ğ\àvŒ„\Ç?[ü€‡ığˆ·°³{2R\å:\ì\ç/ş¼ş\r‚\é\Ç:zPuüs\êW~^/€™z©+\İPğ3¹Y\İ[ºˆ\Åi\Ó\Ù/!ò\â)¶\á\ÌØ³\ZPVÿ¶\çy*‚~>c¥\0(Dô\ÖÛ»\Ù\í¦ü\Ö¯ö?øø\æ\æ\×^\íò¶\ÛÍ•ˆŠ\n0\å|[³H¾\Õ6|\ï\Íd\Ï8vÕa\çöš\Õ[\Ù0fú\Z-†?@Õ¾ƒ†6\ÛË¤!`\Íó\àFyngU\Ï))Ã”m\"Á\0ü:4t­\é¾C3ğ24c\Ğr&µ\0\ï`l¤TQ\Ë/½‰\ÍhM¨>•A„¦^\r½&N\Ñ\è\î+ñ\äŸ*\ì°yLa\0²r3A©F|\Ô·–|EœşµX÷a^|¼\êSª}ówòE\ê\â\0x\à\ßFnÃŸ¯ş\í³Rú€fIºQ\ä«Mºˆ~:\åwÿø\ãW?º¾\ÙÿÊ¤òµco/köºJº¬PœÀ\ÇP\È\ã\ë\ÖÀ-A_~¨nHğğ\\\îüvƒ4ğj× Åš|a\Ã*Ø”°£·}Še7¡\Î4$£\Ğ;÷ò¶—\ß*Á¿Ÿ«»ğRKrN7o™Œ\İX÷r·‘\ÚÉŒ¯*´ZVhû\å{†¯…\×—{Á¡¡Æ°\à´\áŠf%hr¸–/Ğœ\Ä\Ì_\İZT87¾gC‰\à@Y0V±ªµM^»¥\ÏŞƒñ\êøö¼|Jl\"4•;jm\ã\å\×¾x\0NpK+}t\ïİ¾¯Û»\ÛOo}ğj÷ı®o~\í\Õ?\Øn7\Ï%©( \Óm˜s¹óöz9¸´Xˆ\Ü7K\Ü\É÷œº\àT®\Ûkô¢„\Í\â{{\á\Ã˜Ø¦\è*y½]‚?[=’M8L\Ùb1\Åf\Úun\Z¼°ğ\ïpğ|£\ŞşÊ“\Zk\í¢\r~CGTj®mXE¯~\Z¯\×`\ï\ï9\à\'ªur\à2\á›ú„À\éÑ½ŸË°©\ç\ïp\0dQÿ\Æ(}7/`<k\åU¡ˆ¬V)Z€­.±\nµu\Ñ\0P\ÄXMX\íRŸ½\ëK.UvtX°\çQ-h\ÄK\í4O\Ù>„¾q\ç|Ÿ·g]8\Z\Ö\Ú×µôQ\Ş^½N)\á\å\r¾ò\'|ú£—Sş\Õ	ò[oo\äœ¢w¯ojUŠ­•*Ú®`ó\0Àwö~™a !øƒ\Ç\ï\Îfib‡!\ÎEJ‚¸ıg_\î€.KdÕ£<k\rF—‚.ˆzB]®f\Ès‘\Ù\Ü|\èD\ÓfCC\Âo3\Za\×\ß\ZHô_c%k\ë\Ç7Ÿ¿F\àö*\Ú\ÙAÁ¤q¶“}Áı&e\×ñSAlS\Ù\Ş\ÚÚ¡UQ·õ¥h\"\r;Z7Æµ§µom\0¢‡Í‡a\Ì%\Ãf‰£üX\n0\é>ÂƒHD½PS\0³\0¶°­0ø\ëôY=„a«ˆ@\İ\ëAğ8\à\0;J“œ7¸Ô¾9X_`Hô\Å{€û\Ç\ì²K\ĞID6ªÓ³mº\ÙOù\Å¯ö\ßû\è\æ\Õ_¼\ŞM?\Øn7/p·LÜ†9k$™G€+j\à+,ø\Î=i>…ƒ\Ú*°¾:ğ€\ÄA¯}Š[zı&\r”\Ì0­\ÇT¹YÀ§\Æ\ŞQğ­\Í\'\ÖzĞˆ^/\Z—\ÃÛ† L}\èò\íZC‡\Ûrk##­¿ @:\ítû\Ï.¼‚¾VŒÌ›½„?¬z\Õò\Ô\ì[\Ø0¶^x¥ÿY¹òÃ‘ók(õÉW¹PY\"Ÿ+«¸\Û@\êZ\Ëó\Ö\è†\á\ì98Õªú4\êkY\rE#\ê~£p\×%¾M\ÏE\Õ|®\ê‚p‰}—=»…\Óú \âq\äøc£‡\ÏY\Ëcq\ÄÑ¨Ux^\Ş0\ã`ø\ÌÍ¦\áp|ù\Ü\ÏQö5)}4)‰\àY\ÒlR~µ\Ë\ïü\ÑÇŸşğ\ã›\é\×\0ù\æ&%\Ùl”œo_\åÊ †é±…¾XKX‘˜ÀC\Òô\ÔÁÂµ*¹Á‰»e”¬©odø¢º;g\åˆ2\Ê\ËUo~\0z\İñ°I°n®#b\Î¹º\àk\Z/B\ë	Zô6b5Å»\îfQ/\Ò}\æ4ğ6x3›Ãµ©\Ñ?¶Ü\Ç@¸C\à,¬¡RŠ­®PHŸR®\è\í°úzò~B‡É¾óı&\Ï3‹\Åõa­“T‡K\ŞE\ß\İ\ZL\çDK\İ\Ãp¨¬¬·\"\ÃJ\Í\ê[¢N´¤º]=¦n\í¨ó\İZ‚piNiyc‡¯\ØüJ\åt0uÊj5,št$\\7ø¢=À¹ó÷K+}@¤”\Òôl“^\æŒ\í‡ûı·>ø\è\Õo¼šò·)½}¿[5MSVUU‘tQŸ™°_®Qñuô\Â÷‹#T.\Ñ2	Ê»]Y¶Y¯©±P\Öa”\ÍUEü:,vy…‡^p`T3&ô7\Ñ\å\Íx’ø\ĞfŸ®Z\ëÇø¬s©ÿ\Z\r[%Õ°12$bÆ‚ZŸ\Ïh\Æ\è¨Á´ˆ\Øû\Ş8Ù™\ÆU\È!<‡M¶e\ÌÀ(±®T\îQ}U÷>>;c\Ä#¢\î\ÒkH\ãl\ï\Ã\é\ÆAô‡½^¤Î®@]t÷Cıw”p¹O\Úf•\È(\ä]ô\ÎÀ½¯’\nŸd\é#\0šs\Ög)í¯¶\ÛW¯rşÜŸ½¼ù\á\Ç7»_\ßMø¥mJºQ•œ\èVUï¼½†Y®W\ë—+2\É>8{‚Fˆ‚/|c\Ú\ë†\ëewI\Úö\Ã\Çul\ÉZ³C¯±D†BwÉ±*Œ—\ï©l\ÈóAoTÄŠË\×ü\0ğ2\ï1\ìh…\Äv\æ{K\ÔZ\'<fØ\İ\Ö\ï\Û(¥fô&dv4t¼„\Ö\Êğ»ºEnø\\\\ûZvl¸k¬<0ø;(c\Â<Ap{ówy”\ÑÌ½¼7\â~-\íAğwv\à\Ò_\Ô\íS™Ø›^>…\ÒGS–$\0m77I¯¦—\×\×\ïıñ«\ë_ıt‡_S\èûª*\é\Î\Û+ª*E½\0Ø°tDˆ{|\ë,\êƒoÁÓ\'•qMûr\æÜ’\ßkzøh¥j¸F¾\'~b‹KE\á\Èò~\ŞÆ†‹—\ài$ô\Âjø\Ğ\Ë\æ!³Ñ¯4\â£U\Ì\È\ë³=F¡\ï\ÙpXfi\ì¢mìº¾\ã”!¿‚…€‘ª\ê—c\Í\\$ô\àn\\ı(+w¾ú\İÂŠOfG¸¹:\ãEy\Ìê›¿7k\Ô*0ıÿ\03\Ş\ß\Ø\ßZ¥n½½ªWW:mD_Š\Ê\æ\ãW»oı\Ùõ\Ío\\\ßL?\Ú\\m\ßRˆd\äûxL\Õ\Ä\0\rz­\àÛ\ß\è\ÖĞ´À·M,øš\ßvhƒ€\é†¢z-¬	5¨8³\Ğ\ëyú\Ù\×P\ÎÉ¾\0\Êo&¹ùü\'4‡6Çª\Ö‚Z”™£\Ğ\Õ\n¼-°Ë—Z·TÑˆ|S°B6Cxge1\Ûı\á1›\'§¾‡²\í»Šè“µp\ãçŒºjÑ•÷Ou1ú\æyó\ï„*×³#\ép3cev€»$Õ¿Iğ\æ\ï\Í\ßEğ\ØôKYs†^m7»W›\İn—?÷\'¯^ığ\ã\ëü\ëS\Î\ß\Ûn’¦\ÍFò.gI¢R\Ë}¯¸E¯<£Uğ…ûd\nù’Œ‚¯p¾À\Ã\Ä\Ú;?\Æ£rİ¬f\Îg|‰\rˆ\âS†g\î\Ôo\èå¬‚\Şú €•‚^\îO\Ìf¾\ŞqCgx¹[\Û\"œˆ›±\æ\Ô7_\èCW¾¨ƒO\r\n\ït	È€\éõI\rM\Ï\âtvÁ9\êüb\í›ªñ\Z¯ššô\Ú\×\îs°ï¡¬A—N»1ƒø²ú•Q\Ï\á\îü‚Å„\ÆiµŒñ\ÑRş¼\Ùù‡¥–„œ¯õ\êÀğa\äõœ\îW¸\å„iK-y\ÓLÕ7oşNÀ}\ê‹\Ñ\Íş\Ö-}txıišRJ	Ï¶Û›\êô\É\Íô\îO>üôW>ò_„¦¯nT%‰È´›²$UI÷UP]˜k­\ÛPµ\Ë\à2!½dX\ßNˆX`-\à\ÛbXs\ro6õ{£)Ï§\ær€Â„/³ù\Ë¸@/\ä\é\í\Èw¶6u \ÖFIôö\0o¬#@kv%ÿ=x[„\ì¨W%\n\ÈÜœ\n\r«\áW‡\ëvüBÚŸõ¹\Ğ.ll\Ç4q\ÑõO	°x„¦\"´°ı-pc(&¯WZtN®\Æ5\ëpZú†\è\ĞÍ—-­dG\ã£Á\ï\Óá·“‡\á\àz0</\Ç\Ä\ÖÆ¶°\Ú_Q1\æ#=_zPc:~ñjU{,Ğ–*`“K\×}›\Ş\Ğû“`œ §-}4åœ ª‘ü\Öó«—‚¼ù\à\å\î>xµû—ûü£\íf{«\æ<M˜\î_¥¤©n“yjº†Ø‘Y§\×1¾ğõ@òh1…¶U¨\ß\ÛT—\×³!¨\r|I(\éôöz9©¨M !\Âóö2Ğ…8¼÷‡	£ †‡,/|´uS\Äd‰¨G|\Ïh…n©§\0\ãş¡7\ìx\\™œxŠŞ‚(\Z\ÒTNıµV¸\Ó%i_6±.Î´\è1³6\ÌT´i0j\ßl\ÕWõ\ê;ÁK\Ú8—+\Ñk\ÓÂ²\à8¿4 @à¢©¼ã‹ ¯vÀ·.ÿÃ¢÷}ƒpM­ø~\ÓR¥¾Qs\Ø\'­\Ì\× \\ƒ\äo@pq0\Ş\0óp\ïŸQ¶¯ôQ¶	\ÍPİªî¯¶›\İ\ÍnÿöŸ|ü\êW?|µÿò÷®6\İn’`\ÚgH9\ÌùqGyİ­ˆ,-ş^F0Lğ…CŒÇ· >½\ìKø\Ş_›ñ~W\Ú\Ê†\r{ø¢\è	jôöv\Õpmø\0›\n\ß\Ö&\nö\r–a´dQ´HŸu\0L£L\ZZÂš£%Œˆ›\ÊPÑ©º­°‹ ‘É¨œ·l1\Ä\rön¨\\“\è¢\ŞW\é\Ñ9ñux\à\Ú3¸1¹Zî…¶\Ïw®#4\â=»¼97¦1‰‰\à<G·J¡ÿYxˆÿ¬ƒ0Œ\ã«{:3pV2\ï7UÔ¨Áõ¸\Ê=x§´@Ã¨n;SˆCp\ÕS®\Çï•®\r\Ôg|Õ¶—Ş³i\Êj\ïbå•‡(„9onT6ù\å\Í\î+ôgŸü\Êõ4ı\ÅıZJ*›¬·jÎ·MM&\Â=¾#\Õ[\ë\Ê\ãkÛ•†LC\r_\à‹\Ò*@\Õ2…ûA\r/ó±.\\#\0 ½`0€<öñ·„}¼ñ½ XuÜ®rNı\ĞË½M BÀû‹f•\æhnPL	\ÄK³\ì\Ò6~\ÏÁ$6x6\ëT\Ä\íó\Æ\â2\ÎxR•0\à&\Úô,\Ûõ*«%\ÊP/¶Áö\æ\ï\Í_\ãô#WlgcµV\'÷0t¿j\İ\Ã2œˆ¨Ö¡õrkù\Ï(°\ïAHy5$|Ş›\Zñ³\í\ÇU!˜Œ¹‡¢KôK_´x¾\ár\ê\ÒGÓ”\Óf#ùù\Õö•ª¤_\î~\áƒO?ıõ—\Óô+\Û\í\æ\í»W	y\Ê÷ß—KXˆôø–9\Ğ\Õ[®{(Pg\ÔÀWZÀ×€_\Ï\ãƒòÀ\Ø\à\ë\Ù\éƒÂœ\á\Ù\ã®¨\ä\\\ïjõzqµ\ë5òYƒ’, CõY¯ƒ‰\ë3·]Ò+Œ\ÍV[F{h/UÂ¬\ÓhiGSŠ\"\Ñ9ş”@_\ï¦À\0Zÿ`\Æø¸G;Ş†Cú~j\ÅK¤Ë¬††\ï2Ö›û$XLª\á}\Ã-ı\è%\ßÁö½= v†\çx	C·F¨ı¬ )²oÁ\ËkGA?`´	\Â}ô8\Ïmu<Á8<f¹˜¤¸´y¹ı,M|Füê¶ŒQÖ««\Íô,m_\îuzö³Ov?üøf÷—_\íò÷¯¶›´\İ$¹£^=|\æ\Õb\Ñ@ùõbò2™rH¤Ç·\Ö>«TÑ±\Ã\Z„1^€x|¥|\áÀ!W‹6Rn‡…KP\à\ë° Ñ*\î,<Q…ˆ8;Ş¸‡iP\à\Âx\ÅßŸ£\ß\é\Ú\ÃqAKy!4n=€\Å\ê‹\Ú0\Zv€¢Á»¦\İ©¼9Ÿ\Ò=–BÆ§\î®UYø\Â\é‹\Ù4Pû¥7	p±£\Ö\Æ\"\ì E ]CfzYk®Kj\Í\ä\İÕ‚:b4¶oş\Ø9ÈˆN–¨Ó°sµ\å©E;VZ¢\Åit\ï8P9\Â\ë\Ù	…·g¸‡\Ğ_´§ôP5=‹›¿ı€¹¿‰@\Ú\ï/\0²\ê6\Éş\Åó\ç7»ışs?ùô\Ó_ıd7ı\å}Æ·7)\É&©Ly\Êz»N&qD™C(ƒ‘ó¾‘\ãÅ´Äœ¬<^Ï¾\ÆQ\à;¤¥–Ó‰ZeŒ@gv°Xa\Îu{k5•k#‘\é0U\Ò+©_K%!Ö¡3½|0ÁN°kF‰pÀ\Íı5W¼\æõ¨\Åô;©Z€”g\î3\à_\İºtĞŒõVW\éQ\ËU´ı›r	£ş\à\í\ê}/\r\ÛF\áû¡ Fõ+{ø<L†¯*ı˜Ë‚M\Ç0\r\n %Poxö}b\ë\ËR<k\Ô\ÛóúB{_J˜÷\È4>µ0\Ç\ço\Ö\í¢{O/´l\'aşà¢Ÿñö¬z\è_[\é£{\ïó««›gWyÿjÒŸûƒ>úkŸ\Ü\ä\ß\Õ÷“\Şfäœ³ˆ$½_J\\\n–jŒñ+Ïˆd\ë¨2\à+øz¹A\ÜyŒlEgo\ã\Ûóø†½½.û‚ò\â7y{A/{vy\ï:`‚;A>|\ÂÀ\â\×	yz¹•+¤ªLÌ±¾ò7ˆ§­†€—¹¾+J\ĞV{´%ôºõxí‰»¤I£\Ä\\I\Ç~i»D†`:†\Üxh{­”ğ¸T\ÓdOk/…\ê	»WPwiQe¿m%¡À^(.m¨²^\âùw\Ú8Ï¬\È!U =<\ß\×^¨Ã°`˜ª3|0\Ğ8S[\Ø~†Xò5\ßx¹G®x¼UóC\ï\çO\Ù|)¼\0\ç4½³ôÑ„y¶\İ\Ü$\Ù\æ¯¯¿ö³—»_¹\Ûÿ{i³ù‚ª‘eSm‚”w§ŠRreÁ‚ñ;Ÿ3‹øz \á*;“ª°fY§9ò \ÖN\0”µ\Ù\ælw…+†Ce •œ+5{\ÑP…U~E\äR\n\Ö3\às\Òjc,3¤¬ŒqÀ\ë\åí÷NugfC-€õ6\0ilG\ßûõ`/¼Í¤7Fİºw~¬A¦«\ÔO^‘KO_\íY\Í\å\0\íhsO\ì{F\ê/\ßQ³õH›j0İ°\Å\×t~†í¼c.m_,¾[‡ö(\éfk~»\Í\ã\È\Çò˜\Ï\Ã\Ïş\æ¾\Îæ·i\r<\0\ëğN\"re\Å{§	\é*)6\Ût½Iª?}uó­>½ş+¯¦\é/l\ÓöYJIp\ë\í\Õ\Ã\ÕÛ4¶\Â|!l/Œk£Hİ„©	£À•·jz°Iğ­\\\ß_óı\ã’÷\Ù\0ğ`\ÂO\Ğf+p\à‹øbd„ş‚õ*ƒñ8Tµ|¾Xy^½–~{\ÈHo)\Ä\ä\ä\Èc>¢­´\ĞNÆ”bkgõŸõ\î]œ -\ç\Ê\Õ\íS\İ\Í:gØ‚\İ\Ø&Åœ©\Ì\Ò*Kµœs\r\"\Öó“µ£S<\Ìş\ÇnX\ÎÁÁyn\ÊÍ¢¶p\åkO\Æ\Ï\ßÛš:ƒò\ê\ëb*,[\Õz\ß\àñ™^¤\×€!#5ğ÷\Å\éó0gˆBU¯D¦««\ÍKLÓ³Ÿ½\Úı\à\ÃW»¿|½›~xµMª’dŸ§œn\ß\Âthõ#\n¾Œšq|\é\ßA¨y_\ç\n\Õ\ß9ğE\İHfÀ\×p>U\Ô\î\'\ì‹R£\ãx€\Â\Ş^o\Ó\Â]‚*°¡0s\ßØ¤úÈ‚1X†¯¬Ì¨QG7¼&Àš‚Œ™\èeo«&d µÖ‰!µ\Í\Ôöùn÷…\íVÃ¢\é\Ë;¨\ìR>/Án:¥‰F2šıOmcm™\í}€ü\Ìğ7X#\ìGs\èy\0ù\Üøh”¿“U\Æ\ã~bQÓºR\è¨\0¯\×ò“\Ô\É}\êY,	\ê\×\r€OıW/}ˆªª&Áşù6\İ\ìöùsü\é«_ı\èz÷—s\Æw6š$%•ı´Ïª)©hò\\T\0\Ôò(\Ä\á\Õ8†<7š\ã‹\â-j0d„\Ìb9*/\"Eg–Ç€PÏƒoA˜ˆß¨\İ\Ñ¾UÁµ`\é“!\âXB\ä83\Ğ\Ã\æAcÿ=fõhAtú$ù®Œ7ş;\Æ1P\Ô\Ë¬óK—˜\n±¼´¨K(S4‚%[!¶\ÉŒm87…s…q\ÚûkKs£m\\P\Çy\ìuP+´£õ\Ú\Ñk]¹Ï¯g\é£j%\ŞGn—­ši÷\è²\Ô\Ğ\á™xÈ•6òaö¬n?)ÿt~@´\ÊGñü=y-\Ë ¢Ğ«\Íf÷L°ûúsğÁË¿ö\É~ÿ—úş­”d‡œ“HRM\é9ğ-Ã—”\Ç.–ñCTcuz­ó\êÿù¥Œ\"ùŸ\Çÿ€¥\Ü¾’¢Vp!m\Ğ\ën›)p\ækXš¥­‚>\nR‚*\Ó\à®\ç‚\Ú\ì¿C —¢ô8I±ùÔ¼0rK\ètlK¬mÓ©³€S0,:™\ãeNºZ˜\ç|\Ü\í\ç½\Æ^I¬Ü¦uz­kQ-fO9¬V9\ÅÁ\ë# Â1¯ı\à•¿\æ\×û0Az‰\îº,K´Às\ØÀ¼˜\Ó\ß*lû | \Ä]}\Îú\ähø2qş\â8;ÿr\èı½M\Èò,\ÉMJWù\ã\ë\ë¯şÁ«\İo¼\ÚO¿RúB‚È”óÃŒN\"\É+\ã\â…%.À¶7¶\âO›\áG(ş\ZÅ–L\á—b¨3|\n\êñ…t®`’¬n˜s£`{Œ¶¬—\Ök3Sn*ş\âBœ‰\ßk\Â^–!C\å\\3\å¦b®\íp>o\Ô	Éµ\í®Bön\èó\î¶\ê!û¼8\Z\Ğw’0°™½õšO_\'.w|\æ\Ì\ä\Óõ\ÃÉ ¬/1D>²²G44Wªğº\îZC\è	ô\Í\ëo\åa\Ù%†	€¶KI5\Â@ó$\â¿h\îB LG\çT\r˜\r¡Q¨\r\Îc|Áğ\ßT\ØsÆª\Â\ë=\Ç\Ş\ßc³\ï\r\07Í­o}šRR\\¥t½\Ù@ú\éş[?»~ùWnöÓ¯l7›gITò.g¤a+\á¼P5©«\Ü[ ^m\0V\0|%¾u£²\à\á3\0\Í\à‹\Êğ5\Öj\í_0a¶AÁª`>f|i  r\ß{\á…8{›$a\ãq\èõÀ]‡€XT;•\ÏõvKlL£\ãB\ÌUÀŸ?¡\ÏÂ½	\Ânğû‚\ĞS‹=;\â?_/\ås\Öÿy®¯­º¿yÚ‚.<{O\Ôø‰³C ±\É\ÄAqx\Ôjnk\ê\ä\01ŒBˆ\äù\Ç\0\íx9R¬Ğ”WødBõ‚W\ìƒŒ\n;Ÿ¿\äÙ‹P.	„=:´\ër}N\êˆ\Ø\ÊŒ\åf‘—\álAp¾\0À}\Ò\0\\\Òû¿}–\ÍF$¿¸Ú¾„`û³—×¿ü\Ñõ\Í_}5M?¼\Ú\\\éF²\äİ”\åV\ã*1\æ/¾6œµĞ¯õ\ëA³k¼#\ÜB”øSö§b°±j­\à>”\ÕòRøÖ¡yˆÇ—*F°º›  \Ğ\â‚ú-½ó/H{ƒ“\ç\Ğ\Û\êñ¼\ä\ZS~Yø\ÖE½¼\Íõˆ™¸¢áœ†gDŒi\ï¼;ÿú\0÷¢„vW\Î\ÕE—\ê°v©BŸ\ÖN¯†aİ†p\Â@h2z;Ï +N6ş\ß%2p\0šQùz0\Ş\å\àñs1£Î°Yú\åú\ÂZ»_¤®0K-\Ç=`†‚eq¼ÁKta¼\Ã,C\Û\á:©3ˆ.µ»‚ŸBtö“`=Pd›T\Óš_¤ô2\ç|õÓ—¯~ôg/oşıIğ½MRÙ¨\Ê4í²ˆ&IšªF2bF¬U·¾E\Ò\á½\ÅL9!\ßğ„	¾w‹.½† øJ\'ø\â° Ÿ´Ep`\Ê\Ñ.PÔ³²Gx{}n+BmQÏºiŒñöR\Ğ\Ñ\Ş\\œ9\Ğ­¦ƒÀ@‚ºP´\äS(,†xw#¢a£½n\Óp‹kl\Åt\\OMxH\"\Û.\Zõ\ÔJ›UÙ•m1ó´ba­½È–®0G,{‡®—† 0¬\Ñ6ú0<#Ÿ\ê~†\Öl\äJ]\á\ê÷R\Æ{˜õ\äó`\ĞR\r#Jq¼1Rø¹” \\™6Ô®g\Ç\İõQ\Éi­?/<‘Á“`\È$4]%™%}9AŸÿ\é\Ç/\íƒ\ëİ¿?¿¸I*š!Ó”oÁW4\Å>\r\àó|\Åã­—%¾Â‚/\æ÷–ù1\È\æK\Z·B\áÿ_õaa¬Ş\Ê\ï5mepıeCa˜)?5ˆ\ï.[\Ée1 é\0¸!\à\"\Ş#n \İ\Z\Ú\î1\É,ß„‚m\È=%\Z\Z\Ë	—…\ì&¬\r0a\\Ds+\âV=ü”7ymô\î A½?19/şz­\ê\É\Ş÷O;\ÚĞªü¬\r÷Ó¡/C)¬:ŒCt\İ4>¦®ğƒr²›ƒ\Ê7YU\İqW\â¹<¥l\ëç¥€Wù\çŠ\ÍU¤U-›gD\ìı~9}\"\â\\—/‚•¡“HJ)M/6ú\éõnzû>¾ùK]\ïşj\ÎøVJ*\n OY ªeğ-(\î\ÎsO\É<_Kù˜	]¬\åùRÆ¶É­L(3L\Ãğ¥ú/T8s|…·\"Á·vSÆ¯Dú\êMŒ\Z\Ö\ç\Øpoo\à9-şòœ¤<½ş%)Yƒ|48j¬e\æ\ç…ò„[Ô–Ïºª;¨}ÿö¶‡Ç\êú\ê$x0<A_¬;Ra@c\Ş;•“õhxvı\n‘`@;›®QH±m\â5Î‰7\Z\Ú\Ó\ĞóAó·€œöá¦ªªQ\îğ\á\çN	ñ1müı\éÁ2û¢</J\ÇÌ³/f\á\ÒO\é\ï\ÒX·W›üöŸù\í?øp÷\ë]\ßüU }#İºù‘\'È½¸x\íE+a Œ/¬[Öˆ‚S§„Y\îˆøğe|{\Û+\çT0\ÙPn#h\ã{	k\Í\à+}\à\ë\Z§^a |«¥¦\\eq¡\ä\ê\×z\ã\ÍDH0÷ƒA\Ñ\0zg‚^x¥Œ@\ß\Äa°€¯1¯n\Ô@CtCx:}n\Ì]³\Ç\Ëİ©şÜ¼Ùƒ1÷k\Ú^ñ©•\Ùö\Ån\ë7/õ´\î¨õˆ\Óù\rVF\"\Úy{”&Ş¦\r*-wZ5ƒqµQ`m…g23:¯p]Qô„½\ãA\Ş\çÒ«§ÿ5f\ÆşbÃ¯Ã\ÄBUğ>À\İI\å&\ïğ\ì>zõ¿º\É\é/«\èû$‚	÷e„\ßĞ«« ó|¯\è,Q·•@X¨†ğ ±fX¢¾¨H]:ŒD°\íD8\æ†ú\n‹šB9Ğ±´p~¯7R¤÷»†Ã¼½hƒ^]h«>4‡JO\ä”\ĞKN˜öQ\rn\0´x\çCš\Ñû\\#c‹ø{Ä³j1–ø]«(N(‹4¸Zğ¥\í°1\İ\'4^\å\Ğh²	Uq+T™«\×mPv¶v÷\ZÜš¥\r\ä9Ë·¼#£`&°\ï)]	š›@©\ËË€s\í{®\Î.\Ê\ÊÈ‹±ªD°\ãù\ä!¸–Ÿ~¯.€\ïŒ\Õı\Õó·\åş\î¿ûk¯öú\ÕMòR\â,`\Ü=\ä\ÖòVÃ\Şd\à\0¬\ë*Ï£ñi7rRvfÀôu®}\ã\Ø\ĞZ\çş!ğ…sM\Æ{†Â¦JuS\ë‚/µ?\0«´b±\ÓL\î«û‘\'v.#\ß\Üô2ù¼^z@oÉšˆ\ê5Z<oAzT8\â•‡\Z\r#Œ\Ò\ZÓŸ‰‡`÷‰kE\ç\í)`¹‘	»\ï®1Át\ÕSõŸ-%\Ë\0-‚P\ÜY\ê¨hA³\Z\Û†—.*%QOˆôpÖº¦jÉ£=œmô ‡\0\Û0%*JÉ«sql\ã×€ˆ6Y¾øo/m4Ud³\İn\ßV½yşü\Åó/‰@&d$¤;ğ…*h‚¯X\Ê\ÏÌ¿£^®†ö|‚\ßòD`¬<Bˆ\Ì\ËG1az„Ù¼X#G\Ù*\'EJG)#\Ö{=0v[\'K†\à\ÅU\çe½½.ø\Æ­,Sin³¡Àı\Ğ±\á#\Ğğò’@\\j	›\îr\nŒgo¾m\ëùA\ã|D8t¿Jsôz+{‹÷ù4\0\ÚZ‡WO\Ô>¤\ìŒ0Pz.\r\İuA\ë•Aw\ßú’+\Ôt\ãµ¨#0\í«5\Û\çq\çŒV^^˜û^@?e\é]®ŠˆÖ½\ĞGB\ÌL\İİ‚“Î¸}&<\Éo\0¸\0¾ª›”6/\Ò6½\ØjJÈ”\'ddI¸\İúŒ‚¯1%Cƒ\Öñ~\á\ÎüU\ë\àzF\ÓÁ«4\æ}ğ…\r\áÀ·d`øÂ…Å°°UÀ´‡«=eY\Öòö*\Øús†„¹Ò¨€ &ğs\èE@•:\nX¡\rÀE±@*d\Üi\Ä\Î\"t\Î=¸\Ø\Æ\0½\Za+1L\ËiPO\ë:Mn½õÇŠL\É\Òlp¶k tn™S\ÑñŒ\nË‘´\Ç\ÎIRÅ’8\"Õ¼\ëQÀ\Ü\Ë\ì\Æ0/\ÒU\æ\ãqDyö @\Íw\Ç\Ç\ã`O\ã\r6\0ø|·›\Í\æ­\Ífó€\"ù`;O¡uó’	w\İ\Ğ¸*üP¦g\\2^_Z\Ù.¸\Ö=·~(sI¬¨ø+¸ö¹›GŒÅŠ{1\æ¿W£6¨ú\Ü\"l\å}S©\ĞÓ*\'jµ¶·7¨H\ë\Õ\â¶\0„›/Œ=\Ï\n3­\0½8\í©Z\Êi5\×M\ïi47–{\ĞZ>\\­\Ùm.Vº\îY(,v7Œkz£+=p\êO\Ù\Ù>´¹k(I3i¾AÕˆ\Ğù½ª\Í\ìyö}:=\î‡I©nU\Ö+l\\\Û\\±\ÕUöfò“{Ã±#\àÚ¤h\ær]£ó\Ç%‡´`R\à\î8­lÉ¼\áÔŸ-\0\Æ|ó\ì\ÅNw´š«ö”\î\\1\0\Çx…+\Ñ$UnÀ¡ş•\åñ„#÷n[5f\İX\Ëx÷Œö™\áGC„òJ\×Àõÿ\àÀ¶HYør›$ø\ÒŒpü\0 ;\0\Z\Ê\Ş^‡]@J\ÉZ5{Áz\İ\Ğ \Ş\å\åÀS›b‘±k\Û4\ãE®¨U¬“Á\í\ØWiõ„‚|®!p\\\0Ñœ\ç\Íöj¬º+\Z.}ñ(ø¼¬«ğ4†÷yÁM:\èú\r„‡1`¬¯Á\"@\Õ&at+\Ó(qüüc¡Æ¾\Êò\Ú\åN¢|]²\ÄUMĞ»U]ôØ|\ç\àÏœCo0”†e\Ç‚K{jrD=õ™ñ\Ê\0û\0ŒMÚ¼½½\Ú~€d:Aş8F?\âõ•#øEŒ\ÚP(ğ\ì\Ú~®+a\İ\Ï\Ï1\ëˆ\"tIDÀ÷\0~mğ…«OP{\×\ã\ÛPÎ„õøw$8\×\áß‚\È\Ş\\e\Ú\Ş?an\ï|\Ü(0\è\Òs\êy˜\íù\Ï\ĞW,µ\'E¢iÌƒ¥™¸Cz€\ì\Ï\íñ(\ï+\åmE_[©\Ç\ĞG•X	Ly™.ƒ‰¿¶3p\'¬öL\"]¡\ê\ì›HUŠY#=µ…±B\ëF‹\à3y<B\àŒ†\ÜZ¶o,§øñÃ¯ñ\Ì\Ş3ù\éÂ«Y#‹\0\æa®\Ú|?\Ğ,R‹\Ä\ÓkSm\ÛıB\ç¸?(M\"’\Ş\0ğ\ãDT\İ†2ªáŒz}A\Íò<B¼<_8\Ö¢¿\àkd\'\Ş2plğƒQ¸ƒ‡#TÁ·¾)\Ñ	¾\àÀ·\æ\Ña˜\ßÒœõ‚»[5p³Ê>\Å\0\\#qöVBĞ‰f\èeD¿}ˆ‚?„óQÀ\Ì3ôÜ‰\Ä`·3€¹t\Ç0XG 3Ö¿Çv®rùşpi]u¼>C\í™ÀA«6Œ`3UM@3®Á&®‚\ë\ZÅŸ2¶<,\ZLìº·€pƒû—\İÿ_;v¼g”	¶cÏ¡÷y\ïZ\\?Å­o¯ƒ\Å\çc\İ\"Ìµø·$·}\0†]²öø/\ç[/\"´n,»\n\Î~®¬\êu(}´œZ›¼ºñ\ãu\Ş\ê«.‹x¾¦r\í*?‡J.À\×dŠ8ø>s]\å¬|m\ïg\èû¢Vö{\n{{\İ\Ğ\ì`!´‰h±\ë(ÃŠ\ä\êjĞs\nô¨5#:L\Â	\Ìq\ã´±ñ\í§\r\èW´$\Ôi ©³j\ì9c›Ok›ŒBm½€v5rú\n«Ps½\Ñ\Æ\ÄÌ²\Öy©£€Ğ¶ñü`DU@—6£A-R+X\ÉQĞ¡k\Ê!×µş\Z4{d6`\ÌX±:{\"Ú¿šTTÉŒôI•z±bõ§£jı\àc\Î>>\Æ\0§\Ãø\×\ÙAxz\0ù\â¨6€o\r\Î*ğZ³A\ë\×k-‘ø–y·\è…,õóò1L8v ÿ#ÀWb\àkY\ØC\"\\¸ğ´-js\ŞcŒ\Î\î\í\í¨\Ó,\Æ;È­=q¥,F\Ä)( \ì¶L[\Ë%­}\ŞĞÃˆ¾¼Ø–0ù¦\Öv‰M)\ß%áµ¥oÚ¯õ¡_\Çû»–1¢c/ga™Fš\ï 5\'Z½\Ü\íB\\0í´˜\Ú3f÷(-“p=‚\ïöó\ØÚ¿\Öa=bS\á\ÍA\âL\È5Q\Çw±ˆªR¯+\ÄÕ°\à¡Ô²C^±\ËA¡¸¨]>Fª‹òO\Ş.Ã…@ğù\0\ØY ó\İe\ÉR”¦\nx}\á†\Õ\áÈ‚l\nw&Œ*€1ˆ½Pmÿ³\â)\Û\Â4\ØQF8<\'pÅŒ\É@ğ…¾xJ\0\Zfğ%\æ¼ÿÛ²‘`fì©¼½ô©\'\nWŸh\Íğ>›\0 >¼q\èÀ,\×\í^~O,šoMFKkGß¥\ÎÊ¾€\ÛOƒm\Î[œ°…—À\Ãøò¶A43GtÀˆD@\×Óóû€8z?,k;v–z0lz¥óZ\0z\åÚ¿Q`>\î]k\È5·Ô±\Äq¸;N;Æ°7O¶\r¢;*»ªÕ¨Bpy#f&è…“-\ØO€›\î¸\×7\ä5½¾–g\Õ+@\Ş/XÏ—_k¬¸ƒ}Ec\Ôë¤‘\Æ8j\Ê\Ö$Pö„:3\ç\×Šğea;Ô™QEo\Î\æ\È¬Õ 7$\Íù® \Ñ\í\éB¾?aHB,·\Ë\Ë\ß\àd.\Å÷#=ˆÑ\ÖxU¯	}\Ê\Ìh½Lcû±\Ê\å±n\ËO`lEnÁ”\ÃÁ	\Ú1\äÚ\Ş\Z÷\×uú\ØWşA€¯æš¢\Ô\Ê!x\Ô\ì\ÚŒ9SÊˆ\Â\Ø1¶ç’‚\Ûzâ«»XCû\Â[¼\ÉıjÖ£TQ\Õé”‘¬Nò€š\Ï\"\0C\îó¦ÂŒ6ğ%s}\Ùp\ç ´x}9ğ-\ß{	Sz\æX!¨<}\Ü~„Thú\n\à+OT|®\ì_¸\Şk/,»\Ü@F5¾T¹,g§§z*h-¾ø$\r½Ü‡Š-¾Bo®ô‡P²kL›@ğ\Ø\æGgM\ÜXö\ào\Ş:\ä¹N\ê\îÅ„\'K\î\Ã\èÕ†{„|s÷¡s£­œŸFYÍ¥[DKÅG\è\Úm¡\Õ- \ÌP\ÜE`€¹„\É\ÅRµı¸\Ã—¹[¸\ã÷Ó†\\—\î\\ù€*Ê›;€Á—_H\é‚=À\é6÷5c±›C‰\\• rK(8\×ÁÀÎµEuBÁ]\ÌrŠY£¶Z²	…AûÀ\Ñ\äñ%Ï¯‰Ù›X|%RS˜igƒ‚\r¢q\è-;glò^@ôB*\â!²|ùXx\"÷¶˜O¼h\ÉDğD´\ÄTD#ì¸¿\ìp÷¸a\ÜÃ¢i½§m›¶†%›\ÊpRúg\ÎhbCUj g¹\çx²ğ\Ò‹E+›\æy·òb\ßLÏ·\ÛJğò9›\n\Åi ·s¦[\Ş\â#~“OõxX\ìp6\Ï\Ğ-À\æ\Òüº½\r\Æ0]Ö¨fWp9Àuo–\r¾üVÃªA\ä(\×\0\ÌRx­n`ØIŒuñ{\ÖH_|Á„ƒh.h¦®u’ \à˜·7R:‡\éEÀ \î\r¥U«#9«\è\î\Ú h˜;9ğ\"<\n\ß\á\ÖP\è\í\Z¬ñœº\\dœ~$\Ê&¯·SU1/\ê\ê~Ã”º–šó=¦Fm1¸Í˜HÍ¡®s\Ç<ı–²G\êırä­¥\ßU@¸jj×¸D¶°B€ˆ¯1\ãQmk\ä€Mk\ÃÀ\È\Ü=8Wüş(µ\äi$_~°J¥F­Šn¾neAe…s@\Â/¾•>…<Z^Y#\ÏP]*W\Ò\È\Ë=ô\êÒ²\ëŒZ\Åğe!Œ7¸\Ô?Æ°5¼\Û:ƒ›x\î»¢\äL÷öÒ¥‹\Ä\Îë…ƒvˆ\ÃØ—?3­\Â_‘<W\Ú\ÓÎŠ’9ÿÚ²\Ó\n»MZF­åŸŒ2w¦\ÂI`Ny\n6Ğˆ6jû&ˆ¶4\"˜¯7_jğ\ÅjGD²-1b•²ı]gõø·w\èƒ\á–d\ãôxhñ\Ò+\ïù®\ã{\ï ¾F)£0«\Ö6‚İ·aÀöı·¼h^X­£\'\rÀ!\îy}\á(µy}kF¡Ÿç‹º±Y\È]†\Ñq”¶Šj½\"À·ú›E°?N\Õö\çu ¸•\åñe½Á`Ak$ø\Â[Ó¹\0p‹\Ï3x†‘\'\ææŠ½‘kÀb˜8\åv¨ğ\ä‚\í/\ßZ83pQX\æ\×\î0k\Ğ÷‰G\Üôúx’Š†H7\İ\í¤@Šh\Î\Zw\Ğ\Ş]•Pu@¯<0N8¢l¤³g{p\Ş\Ò\Ã\rs†\Ì`Ã‹şgŸ7¹\ßcº,\Ói–¿‚’!¸L5º=Æ­˜…\0(s‹²r\ì}UO\Úÿ§Ÿo\0˜g^2\Ú2˜m(\ZÁ\×3\Ük‹8$\îly¿\ê^\'¥ªˆ•\ç²ò“ip\r~c°\æ\Ã-¾° Q¦2ºs\Ç\r³\ãÁ\×örû\Ï\ÕK%\\5\Ä<\äÑ\Ş5\Ğ%¢&L¸\ß@\çE*FK\n\Å2V*©	\Æ\Íh–FX>!°ñ´öö\ãÂ¤—#\';š/­\×Õµ†`%‡\n\"D\Ú:ôÁœIm|ºL-\â*@«¸\ë:‡a6t\Ø:§Á\ç\Ğ[òh\Ùcu\"*aÑ€ÌˆO\éË»…³h\ÌB¦«!\ä5õ\ê¾w}¾¼<\ä7\0\\~\ZyùÈª\"W†1Uó¢…\ë„V¼£€oN$\'~\åz}iøõú\ëÏ®0W¥\Ï!ğ-\0ú)<¾ñ\×\çja\Â=¾\Şm¿;\ê\Üt{\ípk8”iš³~\è\rÄ©Ò›	üö‡q\Ø@?û|œó cÅ¾\Ú`Wˆõ¨cû®³ª:\Ú\Æke¾=ki£•”°±\r3u5\é\\Wm\í— ©¶–b\ê¬B\ì-\ÒC°«\ÙK\İ%Ãª\Ñ\ÍmcÀ@–w\ã\"!l˜µò>Ç¡³\Ï<[B•Z\Õ~W”H &ó-q\ë\Ú\ë\È\îÖ£Õ‰\rw/Y5Á ¢\è¥øº4NM¯¢a}Qy¾V\"ã½ºI\0\n|\Ç\æù’ÁŠÁ;\Ä\ãË†:·lk\æPğuB}„?÷Xˆ\äº\", \å˜ğlˆ3\é\í=)ô‚€^\Æ{\n6È›,E¥²\r¶@5¼Î¹F\ç\Z\Ğ\Ù\Z\ĞÓ\àòÁ\ÎOCR¥¡Á\nÌ´û^Ğ¥WN£„[2)\ÔR0H1³n\ËNO\ÙxxFƒS³¸°)f%\âW\ÊDÙ°\è0\ÇI\Î(ú\ã^ƒd¦4“¶\×C\ncõ·\ÕKü:­\ÓO\"8Ë¬Ü”Xğ[S~¶\r¯>­\Òl‚ ¸D\rcxp\n6?\Ñ2\ë\n\Í`Æƒ§±Á×®³[±\Z\n¾°a@°ıœ8\ÖIÀ—ÜaÀ	\Î\æE\×\ïQ\íšcõ\r\nq&cc‡A/	MùÊ\Ç3\á\Ó\Ñ\ã\Û<ş=\"WEñ\Ø\'¡‰<pO\ÇnOÄ¼\éõbzÄ…Q‘Ãj\Åûµyt± \ĞPŒE\Óñp¸6<\0`ö«#\Û3øAºv)_¸©’_¼8¶„ƒ}l\É7\Â\ãnƒ†F`–ğ&ÁºNb\ÏúVûˆ)Qx\Øõ\ãn\ê(º {j\Ôóó\Ó\0\îÿ’a¿¶×—ñ¬”Áaƒ»U%ùØ£f‡Å\È\åóÃyff3À5f\Ñ¾\å~cuq+XmD¬ı›ıô\à\Ë\ëˆ\×\Ï>l¬F ”L\'_øˆßĞ‹ÀSAaƒbZ$.6ık\ÈPx•£[	-\Â\\¥€\ã \ÛÈ›-Š\îco2š‡`7\Ö=$ğŒF\å\ê¯D½ø§\Ø\İ …S\ï¶2}µ\çñù—-\Ó\ëø–şúk{	\"\ìA\î\r5>²\ë¼¼D®±\r˜\Ü:&o¸³K!\Ô\Ùu`\Ôğ]#_ò4¶K/\Z€!r\ëş…¿Vi£ºY\Äy}9•fÆˆr%Œœ[uÁ\ÌßŠœ\á.¢iCx#(x%şq-ğõ\Âb;À\×û\Øùì¥‡D\ækğe\rlúk@À}8O½\Ï+Ì„Ş‚˜Û¾\"t,—=°N96ıwbp\Ù67k°\ØMÀk²\á\Ú\ŞÙ–°\í‹2t\ZÚ§Á3zÄ²p’!Xk.ô\ÕdöÁ\Îyˆ´\Ö¸ua8:>Ja1Ÿ\Ø,\ï\ä$„öQló%p0O¹0ÿ™7AXpg\í\ĞÑ¼}F¯\Æ\Âu7¡¡<(G\Ôº×¬ü€G-\ä¶>Z¡p\Ô\ì\Ø{±¼\×Z-\à¨\Èo4&\'p\Å\0;^ü\"  LM\Ã+–W Å±š=¾\Õ\Ó#p¯‰s/i,\Å=„pKD¨J\0&rOnª0F“{‰\ĞK=\ÃhXóPœ\í¸b— †foÀ®	I}ª`pô	Á/¤—ğk“^^“zV‰²»$’Š:\Ã\ê`Ñ 1n¯*‡/BÊcİ»P÷5›üüa<À¿»’…\Ğ\éš\ÇFµû\Ù0 \Û}—¢<*†º!qoBpû®\ÇS^?/>z}ğÀaXt5\ã\Z\ÚNsx¤¿^x\áõ=\r©‡4\"\Ğ\æX\ãÀ÷ğ¿º¼¾$øVx/œs\íP\ç\Ú3i$’2-\à\ë\æ÷\"\0¾` Ñ¦n/]z\É3¦®.\é¿A\Ï18#ô¢¡\İ\è:.6n¬f@$\Æ8ø•nĞŠ\Ş\ã\Ü\Ü\Ş\Ù\àS+9«™{&[KgZAc\î\Ñ`ÙŸp\è\àÀ0Wş\ç\è\n‹K\ZŠ\\-ü€ög]a8—Ad‰qQ?¶µ¬\ØÁÌ€‘j\ÒLß†\×!*6\ÅOÎ—\î‚\Ñğ\0D^»úI\Û\'\ÕZ¯N¤\áõ\ÅPkP\Ä{€\ì<_\"#\àk•‘‹%VY#«]µ\ëj5D-\Æ$m…ÃšĞˆÔ’\âXu¡0;\n\0y6[\Ì\ï¥\ÓÆˆ¼r€|tL´†/z56X?˜y.\Î{\Zƒ^{³-\n\ÈL~lTèŠ˜2\İÀSbnª¶\Ì<ö³\ÔÖ¯Uà¶¯Ár\Ñ}Á‰Æ¦\áOkPz¹R¶\ê}e•c\\C«\n\Ü-\Çõ0:‚\È\åFT\ÙwAr¨\\$\äX{‡„ø\Ö\ì_aGZû_‹øªO‡š:\ì\\\0\å\Şpj\r\"³ö«\r\È\İ}\Z~\á‹\àyøp\Ô\ëû`¤¡A\á™.óc\â³i\ÌAº¨\ç­0_n7¢\àË‚añ?¹Pi\ç†Á—\Õ\ã\Ñ?&R6a¸AÁ+o\È\ÛøŸ/3i\Ş}¢E‘ÀüN®Wx\Ôa\rg^„\Æ\'4‡\è\çK\Z†`]\Î\×1‰¸¯e\èo­’ˆ­™O¬ö•h\æ­m€\é²#¨\Ü\\\Ù÷[\Ë\ßC\rª3—A\ì|¹¸U-üº({dF¿\éš•\0‘~·¨8µ„U¼Áµò ª\İÏ…÷3À\ï(EY€{ÿ.Ü‰¦]bTm\ËZ6°-ñ-V}ú‰¸‚/\ß|_gHr}«!\Í\ã\à‹z\èg-!ƒH¢c\È(\æÀ·\ÎvX!\"Ú·=\Ê\ÎDrg3øZ\nö\rJ\ÉM9‚D |IQ«\ÚFŠ7o\"Š\Æ4s\àk]ÇŠrğ\Ê\áÀ½g[=\å\È\Ó÷”÷úh¸n°vq³‡\Í\ï\è‰\Îş\ÔY\êhD\ìpW4öZ>}pqPµhŸ;ö•\Ø\Ûû\è‹\Æõ\Â~\ï(\×Sˆµ§\ßEÌœEJu˜p¼+\Ö%Q\\m´J}<\ÄnÁPsZ‰õX-´t#ñœZ·D?{K\Ùla!x±Ë¥M}jy> û\ÜÁ\r#ÌªO¯½‹õZp’Y\îky2\Úğs£\ÊÿÈ’PÌ \è\"\Ü3&´\ãó8`Y²²‹\Ş\Â2|¼pgX†²\\\rµó|=FûA\Ğ&]nªC\Ü\Ê\Ç2¬Áü\Ş\àòöÂ¹¼\r+kZÆ•\Û\ÃD\Ö	²E\ËCµo¤^ñö\ë† Ğ˜\Ë^çº§E§x\Zú>–¯Oş‡9¢=\ê‰^kÄ°\â}}(æ¯´¤UõZe V\Ú\Û`8:r*LQAu¼\Ç\Å#\Ûjÿ®T÷wù-÷*Q\ÃWd\î£7\×!\í…/ú8\\ –\ÇAğ@nXø\ê\ÓVˆùp_°¸-\×w¿G©†Q\Ã\ÜPh°\í{²\à‘|W\Ï\è‡\åÁˆPFµ\ru9#!\Ë^¿,ÇŒ+p„újÿ:\êôºõn\ám®˜³»|=8\ë\ns&à´¯\êS\ÔX†3)™:½¼E\',.§¸Ã³^[†oğÅ¨œ†İ‘^\Öa\åƒ:Akü¾	®}ûTO{\ßñbT7&Ek\ä+;“y\Ã\Ê\Ò`”nÓ†Woc \Ì\ÖJ\Z<\ì°h„Q{@•¸vp\ç¾@pÇ \á:+ò\Ø\É]³G+H/ÿSq\0¦÷¨¹¯o\Ù\0cBüx¯o\Í\ÂH\ã’wF\å¿`)b¡~^¥v‘1D\\6¼vÃ¯|Ğ¤\ì,½\à\ër¨\×|AÁC,ôò\ä\à;DÔª\à\íeò¬ƒ/\Ì\Ú³Bd\ßF ó™£!–½IK„mŞ„Œ`ŸmÛY\\ƒ~4X¢÷™œ\0†°\ÆuŸo3j\Õş§Q%[Y§r\Ôô\Ì%à³šœuTúÈª|˜6­§\Z(ÕvK3ü8øÁÚ—^\Üy\nUo*ôD¡\ß\ÎolU{z›ù\ÅbF÷@¿›\Æ|VöSü;5\01;³ÁL\Äòú–i±°I|+&5^\Å\ä\r\ZXiW\Ôø\çBƒ%¬\î\ì\Ö~eò|½Q„}İ–’F´juÀ£=|]p§s¯	\ÏuK~oøÂ„¤··f~j\ìİ«/\Ñ\è¥@¿«ş0[®‰!Œ<\'²N1\Û\"\Ü\àõ\æZvC\îj°\×[NŠÙŒzBPJ\Øk¾òªkO=ÿ›Ñ¢@ŸÁ^\ãŒ6.•‰\ëúpP¯\Ö¼\ÇU>°¦—\Ú\Õ\ë‚p(Cm¡8‚;\ÊGµ”*2\ïU‘^‰\Ç_v\Í\İò\Ï\0\Çpº_4¾÷š\nüZ9¥`œ[v¶\ä˜pEOÜ§Aİ¹Š Î ‚«\ç[é¯‘\Ã\ÌC±İ÷v·+Àc\Õk\Õ¾‚/ûN0{6ˆ„9{e\ÉHğ\å—\Ö\Ş^\n —}a\Ñraû‘Zº¯tG­\å`\Â)—JsÉ¶ª2³4%‰N\Ì\n\Ã\\÷›‰\Ú\"8Á\çj8\\\æe’\àƒş–\Å\ËU“—\Öp·´4Áuy\ÍV vyy8P£a<¢^aH—÷x\Øt-£=^(YøB¡\'\êõ\Õ\ÜihopO¸´ÁË§‚£a\ë\rDõ?]?\î\Ó\0`m–õ‰gú0¼_ÿ)\ãŸ\É\Çó+\á\Ä\à@¤¿ H]ÛŠQw¶\r(T\à2\\Öˆ€’x¸³e\\’W-\à\Ë\Âb7øö)»Ğ²\nøÂœ R\Ü\Æ¾jöö’‚^jˆ‡Lk\Û.pi1\â¨3\ÓO/¢ôµ&4\"6WX#ø2ù\ã†i\ÈZªt&\â¤<M\ï\Îhì™¡\ÄÄ–›+V¥\'0UÀ\ÃP€<NV¯ù;_/µRı‹­Œcoğ¡f‘¶€Øn\Ş\Ï5¿wZ\ÌF*y›\ĞQ›\Ø+·´¢€\0\È\rŸ~À‹ h\ÃÒ‘\ë\ëÁşH*\"3^_[9ˆ™¨B€\è+ {eÈº¤\æ&\0*¢\È\'_8\éo\rWŠmd½h0´\ê\å»<\à\ìs†µÁ4|™¼Ş†c¼\Ü÷f\è\r¡G<\Å „4\Äˆµ­Yˆ+x5˜\Í-!\ã§~¬\0õ\Z\\qöşaÀµµ8_õmÕ‘ƒ½¢\'\Û\\ù\×Åšª\Çğ·C	>QI`±ƒ¦ûhÇ€0\Æ\ÑHe+,\Z²n\Ø4k\İÛ°9‹;/FT\êpª—3,E\Üõ½\Û\å\Z¹d­\á:m\İ\Ò\Ægı\Ô\0ùT\0¬:EG\Z¦Q\Ëz)\á\Z\Õ5ø…q*]D=¯o\éw\n~3-d?\Ó+\ä+K{N\0\í\í\î_¦}\à~\Ãğ-Ay|¹¯s1\n¾œ·—€»FA«°\àUøzA +‚\Ğ®!.z\Ù	¼ \æ~Ã¤Š\ŞM5]{€¹Õ¹1}\Z8ı½P‡2\Ò\Ø	÷hl\Æññº=®5ø~”d­\Ê0	r\Ù@¡ª\Øû¨\ÅWL•@‹P\ÃaX4\n\Ê\Ò&(ŸHŒ‚M§´¥\Öò†;<\Ü\èxÛšƒ·=u\éÁù\Ä\Ç\ÚObU?\0‡dQG\Ùòú\Z–\ïñ¬˜¦”\×eœ‡¥\à„;[÷-ü\Î\äÑ‚<O¼š¹uªm)¢¼ªf»}ğ}|,0•\àk\Z>Œñ\"\0\Û\r¹·½\Æ`JŞŒ\È\ï=E˜³µ>Çˆ˜q\"BV#¡—ôšFÊ©\"\à\æyxG\â\"Z[\á\ÃdK§\ÓX8ß­/…5zğö\æª[±\ëj\àR(X±:\ì)h`°x.AeOîŠª„GW=\Â\Ç~\×#¸Óµß•9\ä¢\Êaoğ€\Ği\Æ[¬\Ş0À<¨²şx\Ø‰ı¾B\"oDş\ê©\å_\0/·^>(xhqT„j\à\Ú^_\Ëù€`NlÍ“\æ\æ\Óù›h²üş.ÿ¥mmg6A\à]+˜Ÿo\'\Æ>\n|©“\Ë\Ş5°j˜óÙ¼½¬˜ò‚^fL\è\ï£f\ç¢UmJ\İvbS·\'sµñ\\:\ÊxŒRö\é\0ó\ÄrĞ‘½\Ü\Ö\Ö\ÊqŸ\n\ã\Ş\åOQ\Æ$2 ¶Ãµ\Ñ=h`¤b\æ\ãˆB…\İu‘)r:\n.\î¦Ìódğ§eoğÑ¿¢–²\nk¨B\r¶<H„>\ÔÛ‚Zf«\'ø€ÿ”\âŒNÀ\ÚüJÂ\Z0a„(”as}g¿Ã´\Ù2mX\Ãj•\Ó\\€3Ài \ê[¢5ø/xq[X€±ø\æ-“/z\Zğ ˆ¾À\î¾M\Ş^¶tQgÙ¢3@o“—\×\í*GC·‰·\"\ã`¾ı\İ_vô^ ùÕ‹ƒõÅ—5Z£¡\Zš”m\Ö1÷g\ïez‹Qy\Ù\Öbm0²\É+{/³rA¥O›’y\ÅC\ÚOU#.#\ç™K¯–¼Á¨\æ7„N¯•÷ó@‹»B8\í¯\àMm.½\â\æp6·\Üù\Ó\×Á§Ps*\0nHTöJ#ğ{ôo\Ö¿5×·`¼ƒñ.\Ú\Ü\êõ…©E†\r»c€ú\ÚK{}\ïÿÑ€_P\Ï\rg™®\å\ë/ğ(Y\êñø\ÖšSL)ue>*.O\á\í=?ôm6\×Ç–°\æó\ï9a8U¨1F\\¤»UO\Ó\Z\á½¤\îL].è­®^\Ü³#Tx^[X³t^—_\ç>¶ªW¸ÒŠ™r²6=PN\î°PÀ¨\Â\'‹¼X]\ï\r©‰d¡óÇ¸c\Ö\Ñv.\\špñBp·¸\Ú\í\ß\æ›:h~ŠkAğS‡\ãµXG‹›Ëµò\\\ã^_t\ÉõµÀ\ÎËˆ\ã6\01^\É#‰‚¯¬\îÌ†g{_ş\á%¨9\ì\Ô2¶ş\Ó\Û\È)L2»~m_\Èmü8›ZBü>\Ú{\r\ÇQÙ‹‡^\îYö{y[7PË™Zg\Ïºhy‡¿,c\'9\Å2C@\Ù\×\Ïuïƒ‚y\ÛXi’\â\â! \ÇX•ç–Š¾-#T¢\Ìc\Ï\àZ ƒr6\Ş\Õ\åñ[]\ê\à}‚¤\Ñye^Ô¶\\À\Å0nd¬ıŸŸ½–öU÷\ÒAøl\à‘ğã•­	™ÿ^±`¸0D}¯¯8™_ª	Bˆ\\K¡ K	gö\Ëµ„;[SJO•û·m+¯3W\è\ê\Ã\'_K0ÀG»E/M\æ\çG‰Á*\Â}ˆ.¢TL \è%­&úì¡¹ND_qf£\ç„H\ÙAşòÿ@v­«\æ5\æ\á\ê8.};\ÖP{®¢ó÷K\í\Ã¼ô°\ç¯æ–™\Èe2td\Û|>‚\\T0Ï™\Ó\ã\ÂÓµh•\èÂ²:VWƒ`\ÆóŠ\ã\â\È‹v··D.qc¼|\Ï\Ø;\ç\æ\'ğeX€uÔp_Û²i–/%²ñ‰0sBS¶G\Î\çBY—±\Ù\ëk†o[ğKª;Ã¦\0÷÷\\Z\r¦\0`\Ã:§\r\Öf ¯¾*\Èh*\×\Ã\äºZ^H¯+ˆ¡	p¡ó÷nCˆnˆ00\ã\íckğF¦ö*p)\éT[Kî±½‡“^tS¡¯9ıa½\ë³-VoƒFn\ĞA»C¸kË¥úM\à\Õõ…*“\êcØ¼5 i_¹5›qbEu\\‰=’ş\Ğh˜e‘8º8ô\×\íÇ²75›»|¼ \îÂ¿ò#\êÇŒn2\íCs„Õ¹Á³Z\Åx\á§`H„ø]=Hn\ë¯ú—	Àc>™(¿Õ–×·^\êEŠ…zi¯\ïÑ½\Ë^\İSy}-ë¿µDP~Á-\×7ğò`\çó­­\\`\"\Ïw(øËœe\í˜B\\8!øze¬lÚ¡ ¨¬\ê\İ\é\äF\"‰\Ëm_²1\ßc‚`¡!^|\Òp\Ş\"Zó8\äA\Çj}9§o	:\'j”v\Ü\Ã\ÄòGm\Âq~/£§¸ğ|\Ú€8Pù7\îa\ËLT>œZ‡MF„İˆ\0´B°Ç ¼B\Ù\Ş\à*Wn6¡5\Æu x\åp\é\Z‡n‡H\Ìi«\ê„.xÿ’IŞ„@w=q?wÖ€_xuKa\Z\Ù-^\ßx®/Bu}£!\Ø#8\ìõ…ôª;\Ãw®]——ğÀô’Á·\Ä\á\Ğˆû{ó\ZxÀU ~lKPe\İ\É0ø²j\ÎğN“^Y[t\Âj$¯\×ıgº|NƒM¥7%5*jUgn¸£\æ\Ëz0…\ÖIØ²)1’B\ÏX³\á\ëô4V\Çv*T\0ºWù§\İ\Ú6¿\Z¸\Ï\äÁğLMeüV\"œ]‡O\â‚Ò´.{†™Jo»7˜\ë\Ç±¨¦v\ÎD¢VUn^H[\\¯Ÿ|\Z†\Óú\ånGÀ“:ğ)\Ïıl•.®\Ü<\Ë\å\×¾L\0cX\Û9½ŒXU-:\âõ­\Â/$ ğm«_W0ù¼5<*//\ÆT\ÄT4x$\ÅR@fÃ	¯*¬\\ND­S\ê\\¸á« X€ğ6L\ê\0\ëQŸ|½¨g–^P°\êV€b”‘Cñ\ÜmÏµ\Úß 2}\æ\"\Ë\Ã(‚~x?ÿÉ‰=›&[±\ìoh#\æ,|2¢rş\ZZ=`l@·¢­Evú®¿\Ök<\'ZM†³\á¡õ¹Î‚ğ\àRGGM^(nkq½T]\ï½@É«z´©?SfªyÌs‡=O°Û”U!\ØGø‡Í˜*„©†¯Zpn\é|xônø\×€uôLt‘U+¼¤û\\´^m\åcp¿¡±¶ˆf¯om\Ã\0f\è²\åõõnz\Ğ,r5:Ü¹ü¥¯—¾±Å±\ê\Æf\'øº}s6i(|u<¾\ÖCH\é\à\ËO3ø²@.¿¼\ê€^b-\äúmŒDDñš8\Ø@ğsµ…9(ódœ\ŞUc\ÃZğ{DÖ¡­\Ñ@½\Ü\Õ~8.½u\Ê_\Ç]k4Ş„yb)|€fò•+š\Ç\r³S\Ã?1 Œ\Ğ\ÜP\çƒV\É*\ÅZL<³ƒoF\r‚\Çz\Ğ\á/J\à\Úx¯ÁQ@®Î©30b\Ëm\í_¤œ¢2·c/Ì¥bóey€+\Æ\Ê\ãBÁ•¢òL=£\Äñúú\Ğ«\ë\Íõ…c¨ƒù”¥,‘«\Z`Sw\î\ì\Õóu ’ôø‚\0j\ë9„Á\×\Ûw\ÚÁ 3Óši<µulür>f\Ô¾\Üf[T@oµ¹l¹&fT{Q\äqc½n\'\ìRG¯!\ëÁ\Î\Ù\Ó~/|\É5SW\êr\Ë8\Ö\Î\Ü^’‡õ$û)q\çƒõS5Ú¢7œlF\0Yó¾\àÁ>7\Ø+H\'/2«<ˆŒ«bS®\'¯\ã¬Ca)2\æ\ìnœHùú’|·—Á—À–J¢\ëI%JŒ \à)¤½¾G9B<¦‡«Á\ëŸv|˜‡ç…„:<\â7#\Ü¤ùIz}-¸\ås´¹ö¹¢N\ÃÀ\×A Ô½‚&RÀ¯›L©:\Ó\â\\Š{ù\Ì\Îbƒ\Ş^‡Z/—Ê²\å—]q+\0/\İz\æ\Õ\ë\ÒP¦\é“\Ï\îA\êÆ³0ôj—\Ç|s=q;0Vw-Ó¹§\rï£º[­¹¬ö«£\áòr@\Å\n¡e@¸T\ì\Èns\ÌÜ†/.Ak\å\ß{_¢¥uÖ¾y\ÛW#\Z‚Q™µM“¯\á\É!úœKy™ºn;f\ä|\ÛÃ¿Ë‘Zô\Óø;?\0#şBH\0~!^\äpK(0zöUl)E\ê‚AÛ‚aJò^_›­k€	\Ç[	\Ï\\w¸3\Çn,\Öó„Z¡\Ô\'_ñUùPgÇ«\îFğ˜\Ö¾!<\çÇ¾\íŠÁ\çx.\Í\Ğ\Û(`4´#­o/\ìrqÎ¼“tŒ.-w÷In\è\nT©c†\0q(6>(\îùœoòh‡z–ÍŸ—¡ºG\ZX•0f\Û0\'\Úq´û\Ş\ãSj1\Ş\àµÃ¦1\ï´:X:\0‚½\ÂJ\Ç(vü\ä\0õ\Ç\ãD®\Çb©)\éx`]\åŸFüXú¾4/ğy˜2¢üG0ò²e\Õ\"te[Š(.\ĞE#\å>º!ÏòF¾XX¹/œò¶˜¶5mŠ\\¹9nplU/\Ü\æy¦c\×2j]\È\ru?\n\à¤\àk„Ñ¶a\'¯\æ\ì‹Kt/w{ö\Ğm[\í\Ğ+,@\ÇĞ˜²:5ô®¼Rz\ì\ãwÛ›\í]Œø\ç^Z?3ÿz]\×d² \Ò\ëû\n˜™‡\Z¢ f7c™¹%¿jÍ¨\'p\ËıDšy±qfaD²–jÒªk¿Zœ÷kA°×:¸ ¸Tkx`\Ç\ä\n\ã\âˆ0>]9c¡\â~¹Û³4\ZgC\á\×ôÜ O\èªbmš\Êü¶z}k\à\ë\Ã\"[_¶fˆÛ¹¾0\rğt×Ñ–*¹V8#—\Î\nİšÓ†¡M•ßºD¯p*³ğ\æ3±‰B6x—\ë¢\ÛÄ–p\â¡w\Ñ\ÇFõ\æ>\è]\×\Ë\à×˜M\Ëq÷ÿ:p}\ïÀ/‚7\æ\í+>&œ>´\Ò+‡š/qgr³\ã\\\Õ8ĞŠ¥_•õ\n;8\ÛTòh\\½_/,:^‹\Ø>úø\Û\İXR©[¹™\ÄR‹‡‡(n;\áĞ¦\'Ø\àUs…¥P\nK»Tµü*¬\0\Éhz\ê-g\è {¼n\0}X`\à·  ¥ i*\ä¹V\Ş(¿1¡+~\rcd\ĞgX0Š1šQÎ—x\è\\‘­R\ãºÂ%\09…§	‚¢g§ß ([ı§Fğe\Â\âe€¨úPÛ‡?P^N!¸œ(_ôúÇ²’\Æ-eŒµ3øyÇŠ°K·\á3†´\é5R\ĞWM3¬tom\0c„\0»ˆµ½£v²m$CªW«ıËp±”\Ê\íø\Ë\î‡\r\×%!xù˜Q\Ğb©Ÿ\Ç\r™óK@1\Û\n\Õo‰\ê\ÉZ\Ú=— ò*_4\0cIÀ[À%¨Êœ\Ê\àqa\ÂÏƒh\×Q¯¯\Ù\å \×¸\È\ÒF Iš\È[fz\çÀcÜ¬(\İ\'^8\Ö\Ë/(pmş3€o@\å¸|Û€µ\Ñ\Û\ËBo\ä]ğB¾¡—y\ÏB\ÇG¼œ½\Ğ\Ùz>«¤~\n\ê¼äº½x2\í»ó (g_\Ü*§¿ª·piÚ‚0LnK5˜\Ãm´[.\ï…S£&§¢°k”#\Ó\ÇSnn„\àUk\çd\é\Î!\ã!¸«\ÅĞ“\È$[¹¶Ep,9÷I­ò—WØ˜ùŒ\0p4\äù\è?#Ü‡_2\äYœPX~ó&\Ù\ŞRv2ñ›\Í¦¡\ë–t)\Ä/\ÕDx·``\Ü\ë1Sa)\ág»,R©en‰¬“‚¯¦cÀ\×\ç\×ğm®\İ\ê9´Ã³Ñ·F\èõ\Şı(ôº5ö£Ì†\n°UW^«KqÎ%\ËBó\ã)ü{J+ª]\è\Ö1@•+µ=58¨\r\î\Öv\íX†\ÖÅ™°No0?%ÆòŒ®N«\'ö{_V­òm‚#mC\Ïû\î„sß…BW\ß\Ş\ÚN\Çø\Äô\è–Ğ“ı\Û>¥\ÆÖŒ_\í\Å@ù°0	ºM’k5K\nÃ¼¾Ä‹¢]U¾)‚^\ß\Ú1´B2	W¼\×\×\Şt°`†	P\0XŠ\ÎaxÁw\êu\ß3{{Gz…\Ùw©%ä±¬xU³\ÈU8¶\ÏÌ¹€‰\Ğı½<b\İËŸ\Í( 6†\èO\ë9 zakjg_´ˆ½\Ãpğ¢ÁWDù¼b¥iw\é‚\í÷; \\;nU5\éX^ğ\ÃÑ–c»kú/½-¾ß„8õ–\Şü\Ò(Ny§D\Ğ\Ö9}	=¹x\0\Î2/fŒ\í\Zü¢F¼\á\çcif¶\æbEY\ß8{}\ë—\íõõ@®\Íl\×\é)<×	‰\\95Iaı‚¸\á^a÷\àEÀ÷<³ À3bÁ[@‰\×\0|O\æ\ÌÁˆ\ÇÁª\'sï¦½Ñ¶&Ì¢\áz|œ4ahŒAD…~Šù¼½Nòun½ˆ\'mnœ÷OK\Ä×¡\îÜ»ÁÃ±kY¿V[­a\ÔaX\á\è\ãK7€pW*ÏP\éñópPS‘Fuû`-¶®`U•]„Ú”šg9İ­¾»F¦ğ\Ü	\ì…p¯ğy¼ÀÀË—Õ¯—‹¥\ÈZ\Õ#\\¼\"Xğ­\Âzl9ûŠ¸hyöBš‰p\èbÛ¼\ÖP9&\Ä\ëFlé†¡š¾¨·w\r>øRÿ£`\ÔwK\Ğb\äS€o}¸˜\×@TEV‚ma\Ãoú#˜ é¸›<<Ñ†6\0ˆ~€\ì\Ã8Í¬¶RNQ\è\'Ğ»\ÛôÁ˜‹r›0«‘mo\Ãuğ`ü³±u\É+c™~Û“\\\Ü!he93\ÕÜ®Rœ_0\å\Z\Ê*£8[\ÔXS¬­xƒû7clº®‚\ØA˜v+[Ç” xÁQ\İ\Ê\ÍvÑœb¾ğII«³`\í\ÊhJb¢\Ú g½Rø\Æ;\×F\ï\Å0­ˆ\ë\ä|\Âñ\Ê\ry\Æü~«|\ãd4…c\Z\Ê\Ä B‹aÊœ\×>\ÍTC`‘	=Nf¼\äú9fû,ƒrK‡\\Ö…i¯u\ì‰ÒõøRa\Ç0^w2\ä\ØE¢ PTG¤s>„-³¡\Úã¼¶mµ–c\éN\Ğ\ÅJ\à\Ùeˆ\à¤É¼+aº\0s\n.Gû4_‹\"@\\,·\Ù\ê²n€a™Á°z\r\r‚0\ã\ím›Ä¡gŒG´@\×dHt\Ì\ì\Í,Ÿ\Ù\É<ÁWe\r‚gn~3 Òº\Z¨\ße\Ñ\Ş²\Æ µ\ï©\æ\×}z84~7\0¼\"ˆ\'\ÌSıwe0\ä¹f|B¢ğ‹\0üÆ„®Š\Æ*¢ i]¡h\ÈÆ½¾(\ìrÙ¶eP\ä\n‹g\ën€¨õ\ëÃ­\è‹ğJ«Xgşq›‡\ÔÛò\ïƒFğst¥\ä~¢\å÷Hx6·\Ñ\æmVqJ\í¨\Ú\r¼^Zmiw~±‡µ\Û÷ŒaMy\"ğ\ë\n÷z%ˆ\álZ\éİˆ\İ|0\Ì@Uuˆ½b¾;6;\Ãó7\çôr!\Ñ(œÒ¦\"Íµ«ö«GÂ³ö\ÎÁ\åo›*~*ò©=÷e¦0ZÉºÈ—ıµ¸(\0±¹Qú°\Æ\Z*S\İSy(\É\Ì9]\Å@\Ô÷úZ\ß38@l)^b\Ö‘«Ú°t‡;3!^=ß˜=G)4Sn‡q‡D\ã‚\0\×\íñ\r(¢W\×ªYşf\ÌHğ\íóö²¢\\l\í\áSAo»‡—ûü³Š\Ú1`\î‡gw¥º4kúoPÚ§\"Pó=´õù\Íı\Ín=\ÂğÊ¢Vs\İ/{t¦Ä´* \0\ÔE´¸ûûl]x,»pI\Éc ˜hJ}ô ¹y„ü¾\Ív Šk=	P\"B³@ûb£Cg\Õ\Åÿ]\0\×ğƒVÁò‡¸\0aûó}\ëÆ¥ï‚³C-dp\à\×B‹\ĞU\r~aC.\\Ÿ•\á…/?ğ[\årD®\ã»\Z\î\Ì\æò!>ş@ƒª±½aSk$\Øİ˜^w¦p¥†\ÜPROùµ!\nœ\Û\ÓyúZ…^·ı*3j™\r$b [j·\Â\î\ÉÀ.ğ­Àins*4\î6\0±n•l\ÚĞ–“œŠBE…g9º=ò€50\Ë&\ÅB:m\ÖõıÒ¯5¯Y\é2®\Ü\àf­9c¶ˆk‘\ÅV…`Y‚£K/Õ¼\Õ	µ\\\â‰Ê´=A>ğ\Ğ\î¾nµŒ:\0ƒùw(J\Ş]+tr‘§\Ûò|ø{öS&-ø\ry}kòl©\ÕV\áw\×\r\Æh¸¦o0\Ï7¿.øZ\ÏÍ¶ó½W+=á¹w°\á\ÚücöU”ı\è	o\ĞIµ\çÊ»\Û`Å›<•i\ŞW\"\é7½\Î{}\Ã\Âx\æº‡\İ!ğ‰\à„ø±\Ä\n÷B÷ñ¿fõ]Œ¹’R÷˜]Aµ¸F4A±ö>%¥\Ö\Z›Ç¢§<\ÂË‚®]\Ëe^5:J<w-Û¦\á\Üa>cüj­\Ñ\'\ã¾…h‚û\Å\Â¥“\ÎÁ¥¢Dˆ\İp…ú\Ë\Â=1¾A˜\ïv´7òtRh\ÎÀT4\Ò,;_Pb8\ÅÌ‹\0ü\âø{\á\ĞğŒ[»Vp4\ä9\Ô\Õ\äõ-#œ0_\Î\ë[…>´”ù	x}‹ÀÇ•ˆªo\Òx\á\ÎˆW›µeˆ¼P`4zRc°§ıDş9¾\r\ç3`‹Ğ†\Ç\à4p3\ë\æ(O¯µ)4öø6o\ØQ‹H\Ï\Û6jš¿{®{2ø=\É}±bt\\¿Qv\í69|\ç\ëC¸V*B!\Ã%„w,cW€\Ù\çW\ß|g¡\â>Ô“…\â\n<Á¾q¸®0Kk\Æc¿\ÇBğŒ†‹f••›À\\ı$\âTª5N\n]ôaCş™û;+\0S;\Ì8\ŞS  !®H*\ÇÑ\çC5=T_\àB[‚F;òl‚1bå£¬ö¢\n\è\î¾\Ãb°#¥\ìph°\Ô!rE=+²$	\Å\\¸3\è\nÚºÁWœ¹\ÈÁ†zk™z\Å>øò\å\Æ\"\æ<¨ğ_\nz£BVŒc-B™!\"@/±!6\æô»7r\È_\å\Ãû¬«¬r˜Š\Æ\ë«ñ¯şúŒ&½¶‘iDAØ€CûT·*+÷8p<v~ó\â\Ù\Ä¯®Áµ–\Æ!\Ø\Ü\İd+5v5\Z8öŸ’7-±¬~\È9õŠşTƒ7\0|ø¥>e(.*\ß.”fûC±0ò\r\Ï¢ğ[	\Ïv¼¾±ß¬Wºÿ<üú¹³¡º¾¦M¨ğ”¡Aœ\Æøƒ€·uT\á·¾µ!Š)VwŠz9\ÏN\ç.|«`\Û¾lø4ı;¾1\è\rƒ,­‚­\İ\Û\Æ\Ó\ŞfÃ{yO	-\×i8y€u‘(Œ\Æ\Æ\éÈ›.\Ş\n\Ì1÷ú<\ÒM£F\ÙJ <+\à¾\r|œŠ’A\í\Ú\Üÿº78˜…Ùœ‡`³u!‚¸ö½\nDñşúSAœ\é\ÆyÁ\Ò\İ2 w¯#OÈ£|\áePŞ±¨…±	s¿5-0°¢\Ê3ˆk²ğ_\Äõú\Ú:\ÌqóÄ³¼=w±	c´Ùƒb¾\æn`3,\Ô‘@\ïCP€Á«­7€ocî¤Ÿ\ÅE˜À™w\\Ë¨r°^w„0x™\rŠ¦\æ÷\á\ÑZ¼º\ZŸ\ŞBqÇ‘\n\ÏC¤»òw[OF\á[©\ÂO‘rn\è¹Â«\äD\Â\Ïf.*\ÌB¡“\ìXw•R\Â(¾\ï\Ü\ç\à¶pM\àñ,Ş¿%i\æT©¿ö4X\Îhkh–\Ñ:à¹¼\à\æ¿\\~y•\ÕP‰#\â·„û¢º(„\Ñz}\àBk†:ŒB‚#\à7‹¦\Ç0\æõ¥\àgjl† ºhR\áÎ–g\×S*ç€š\ã\Åy\0\âQÀiøö‡k	s_C=ecVH-\0¾ŒŠ³D¼½\ÄÉˆX1@=\Ô\Ë\Û¼,G \Ù8j¹Z¯w)\ÔZ™\'1™lsš„¬f\í+\æ\ï¶\Ô\n\×\Ö\Şildp\0Ã\ÍH \É\Â\äfÃˆ›B¨gg{ùÁ\îQ/û„\ÓSB0±¾ª®ğ¦1ğ•óqi¥\æ“\0(›}F/0Ü„iœ­o\0\Ø{\ròGV\æ\æ\ÈG°\Ú†ßšSgm_s\r\ÂCq}¨\çÆ¶\Õõufp\ŞÕ°\×wap#	~9¯/\îŒUÀ\×ú\Úh¶/\â!Ã¨n\Ç4`¨¾_N\ä\Ë\Ù÷S°$&F˜ªz\Ù\Ğf\Ä!±	x‡\0VK0u\ì(\Ä/\ÚwO¬se_\à\é4~\àvn¯œ©\ÚÎ·ówV\Ùs\ë°É¿/6\Ï\ËEj°‹Â° )x\ïGop}}2}\ÆlHtb9™\äùQ \Ë\İòt²¼©ÁqXô\Z¼6~– ö­İ¢†Q\î2œºgZôñ_¼øXºòh•Bq\é\í\Ë÷­Áo¦kğ[ü÷L\Ã/%tUŸRX2,¨!KºX\Æ\\8\×7¿pÎƒJ\Ü\×ÀBj»åš¨\Ò`öfŒğ\Ñ\à\ë‚{\È\Ó\î\å“7€¯§\æL”ü¢Ã“Wôö2µz{7X\èEPü)Z\Ó6Z²gH%\ŞNr]ûŒS‹JŸ\Æ\æ\á>\ç:ú†¡¸	ˆ\Ñh\ÌÃ°:#pø\ÚSCRœW+\Ö}_=U®JôtS¹\ÌKÁ=-&´2›\çû¬\â\n`´ z\Û\\|\î+ñ²UNi{\Şz\á²\êûµS÷¨ÀOPMú\âøşe‚›\ÓVğüBF\Ù|ß±©\éœB\å™2¤-\Ï/h! \Ê\0…“x}K˜®\é[;—ñ\Îû\ï©	£Ô¤€—‘8\ç…ÃA¿Cø2PÏ‚o\ëÀo¼†v\à>F§öö\Æ6\n\ÆA/ú¡·yı5ªù›4¸\ê\î@U\æ³\Û \ÖC_\ÉÚ³ñ\êTF¥V\à\Ïi\Í\á:`Á0Œ‹‡\Ş¥NÂ¡’K7‚	ˆ\Õ%Â´¦Ä­b\âXS6\Ñ{¼”\Â\åN–Y\r\İUC¡Q\ä½/ğ¹£‰\á¶~\ê×´TÒ…°J–\\\\9¸z£pŒ2˜p…_¸ğ»n\È3jŸ½\n\Ä\Â4|£!Ï¤J‚ğ\Ïğr\îg\Â/\áõEP\îˆ£%üSF.<«h\İÔ§ ˜[¿·	EÄ­@]!¾Õ¾®\ì\íE\Ø\ÛK\'È™Ázz©ƒÀ‹6\àmf\è\Új\Åò›6k°ç¨»ö…@w›\æ%)a«®Ä8\ê\à\ãn´Bà¤‘ \ì!A8w4Ë½!\Ñu\Ğk„`„™Rº.X\àu\á\ä–\Ë	Á´ú;Pxù\ÛQ$ñ%\Ğ2\İ¼€üT Õ°\r€€oDó}ÿ³¿2~-\Ã;\æù%…®è†\å \× £\Z\"\ÃmŠ$y\0\n˜#e¶L£\Zu/]+–\ÒğHz¹[B…\ágğ÷¸PTÀ\ã»ø²Ç°\à\×\Ûk_‡	F[\Ó\Ğ2\\9\n½½\È-uˆÀ\î\Z ‹ğ«}G=²&\æA*\Zo¿Z(7.J±ß²e\á_Šs›py‚¼ÿ>kC©£È£\ê\ÛÏŠ‰Fì·A°¯ =.\'˜+N\Ü.˜¥fšÀ÷8øc\Ü	§÷×¾‘Gş\êS\îBt®\ë\rÁ\Òo\0x•\ÇbÁ/ª•s\ÛBgÿÁ”[1\á—*q„0üš5|Á\İ0F\å\\I~ıˆf«\Ş\ê\n^_/Ÿ=¹¾Œr¹_B*|1	¨\ß6\0_ğ0Éƒ/\ï½4Ë™\r_\ÂHg\à\Ù]oøù2\Zz#€Í³c\'\ì\İÈ¼ÿŒıÁ\Å\ê	\Ú5üQ(öq·E\åy‰¾.¼»|a{\Ë4H\ÕAX‹¤¤á²¼µU\É‰n(§ƒ`\Ğ\ãK\Öğc•€Cp\0 f^Ã¢wv\Í\\`\çjs®0³“R|2¶4û)\å­FuŸ~ù\0n}\0ˆÁo\ÙÆ	O\İù¾…\ï3hm¶\á·\Ù3ş‰\Ü\ãø%tå‚¯c˜\Â3zGz}	3\Ö¹f¾cO±šñ@Â¿‡…!\Ò\å/]O80w÷\Õz{¹’T4öv\ÔQ\Ê9€7ÿü\ÍV\\´\ÖÒ²K1„úbY(\Ä:\ä©\×a\Øó\n#¬<­ô\×\Èáˆ VÁˆ.{ƒC5Œ\Ä[Í´Ç½\ÜÁ‹Á5\ä\æ3\ÎI³A<#¼-£\Ç.\Zks\âl.şò\Åòö2‡=\"\Ú¿–\Ú¿€D¨\Üõ~~· ü\Â\Ì÷­\0Œ\Î:\ë4§òŒÙ© \ÚOÁ¯«lÌ”\ìõ…¿œ:rıR~)§6\Å\ê\ê’\í-\é$´;›G®®š¸|\Õ.¯p*\Ì\İ\Ş^öùGä ˜¹¾}$ô‚ôòr\ÑÁ\è€\İs€n[£>…\ár\ÖL\'„®\ÑÆòJó—T\Õ\éû#e‘\Ôo\Î+|x}.B¶\0l‰¥š73ƒ{™GYW\Z‚™\Æq\ÂV\\\Øu\çi?\Æ=\æ¦ú!dUóvvÖ·X$E~Š5õ\Ô\Î\Ş\Ï\â\ßp\ÙzR™š.\Ú\\\Ç\ç\æ\ìÁ/\Ê\Ëx«\Ò3m¨yù¾\ÖoğCcF>­ò\ì²mµ}yx?†¿†Fp0ÀÌ›5\Ìg£¶±	<­^_ò)(\æp`L=\ß>ğµ÷\ŞZ\ãıq\r|\í—XñD›À¯0ö´g• ùğf\î\ĞV\è\Ô+\æ\ær?\ìúı\îFI¾\Ş\É\àwd‹¸\Ö8\Ç…bw\"«­¡»>¾,\ÉŞ°\èÚ¿À*ó‰V/\í\Ï~¶Á&Tx¸á°€Ø©¬M\ï˜\Ú\ßõUp¯ü1›½z\Æeq9wƒ\Ë4Â³\ë²ñıB\0x9¬\éf~¯Á£\ïù¥ŒQ°\ç,k8Ÿn~	0nyvE¹\"%šÀ\Ã/—\çÉ…^\Â3I¡+°_<~›½¾\Ö\æ\r¸><Ú¥šÆ€/_\Âz`g÷ø\Ú\Öw.\Ì§÷ö¢½Nrùr\ÌA-z\â‘MÀ;ø|ö\Îa\ä`Ü­µ\á„ñj¬\ÇGG\êğ\ß+­W³\Ğ.&K\"ó L^\Z\Zñ\Ş\àúZ`dwBp¡Z!¸¡50Ş•&ñ(­\Ì\Ñ5kó=\Æ9\"¦O~Ï§&.ú=”‡­\Ë\r¾\0ö¼Q¹b4•ğŒq \0\Ö@wC‰\á÷Í€J~ù2F^É—h\È3¸”‡¶6şp\Å~L0	\Æ+1Tş©Á\ëKEX€\ÛP\Ó\×Q¦n†\ß\Ğyl,§Wƒ—‰¬ \Ó)ğ• ø\nñlli_Œß±\Ğ\Ë\ÖIn\Îy=ó6|\äw\ît\ÕjW‰›\î¿N\Ñ÷\Ç`¡\Æ÷O\Ûqö\ÔC¥•ø\ĞQ\æ\ßUû¾¡Kû>N\ÚL\å(†™ı<‚\×\ã­\áY¾„`ö¨\ÖºÇŒ\Ó<\Ô\Ù\\Á‰˜ø7\\¨eŸ\Ö#•Pyg.ù\ï\Ì\0t¨W±ü¡j\Î÷\rü6‡Gˆ\r¡²BApx\çò¸P,~ù\Z7\ä1(6\ÇYVñú\Â\Ë´T_¼¾\î=)ø½¯/E-!J4\'?qo\ë\ïı<ºÔœXIoog½š\ÓB/?}h\è!B\Ü®Œ1×‰ô÷\ä\Ôxöo>I¨g€\â\Ò[X5˜;½¶\Õ_P\áÀ\Ì\É]\áÒ’ªıá¶´7¸–…\àÀ³õ¡µ\r‚AW$\"i\Z\Ë\ßú\Ùh©\íU¿\ZùVº\ÂÃ«(3Ÿ_\Éx› ^Ä‹\ÏN\İ\Î\íyw\àP\n~¹=Š¥·®-g\Ñ\r„ïµ³²*(\Ö¿\ì¿#dT¢S\å\Ù]†úBW0¨\Zq \rA¯¯	¿Th0§l«s›H‘k\Ã9\×÷ºû\ï\Ü~EÀ·\Ó\ã\Ë\Ö&JÙEˆ‘\Å\ãzÀw\èx¿\Ù´&Db¥\ÓÆ™˜§À\ä&\î\Ú‡@§ª‡\Ê\å­ı2w$ûW€°ª–S­…½ÿ±7¸@‡![)¦f@r‚Û¸¥İ¥l±£6¬\æõºB°k®«5¼À­\ëÃ\Ğ\ÛÅ°¡†®\çn\ß\åÿ]|$\Åa°\r¿€e v–9\"=§¾‰k¢a\Ï\Æ\à÷0Ì›1œk+ocy}Q	8\r#!\ÏV˜0j\Ï\ÄS\î5sˆ™\Ä5_\áÙº.oJª¿~\Ù >\ÏW¬¦¤\Ñ0ğ\İÜ‡6¢\é­&‹>±‘\Óz{©”\Ş&O¯÷<\ã\×!ÁÆƒ\Ê­øŒq—j†N\æû¶Ú£v¹£!\Ò:s·Zs\å40l\Z\r\âEVŸ\å\î\â\rV\ç¸Pv#\ßB´§7–GV}n›\İMbY÷Cp\ç\ÅFÀ‘…^–¯\rcs¢´–\å6F­A*—\ê¾l\0FE«\0¿\Ì\ã¿‘²B•O>/\Ó\ëƒE\Óğóñ & Uù/¿vÈ³#D†<Û¬„X¨A\Åµ}É¥\îïˆO‡Zƒl\n8ğ%ù{¼\Ç7Xo\Ø\0mûŞƒÂ“_	¼	j#uƒ\èAM£\ÈĞ‹Rƒng¶ğ%%Óº×€MÕ¶¢\0•\ÍuNÁm\ÂğŠ\ÂVS—>VZV\ã³\Ğ\ï\r\ÆAHô’@5»!Ø‰¿\îñÒ²s¿\'l™ ’şü\ãVq+œ\ÚY\ä\Â>…\à¾/£”3£q\áğt\Ìöò§Gv˜®\"^~ó:ğnj×¼±¶\áÎ”o*\Ê  üŠ4MğR\å¹Z!\Ï\æìš¿½¾e£¿nL\ä\0Yr\ç\àkm„6:Lğejø¶\Åqği,ñ€öö\Â1gO\å\íTn\Z7f\Ó\Ée™óÁ\î\èœ\âKD\å\ámÆœxœÄˆ\à-\Ã\Æ\éL .F”R\Ë÷˜Ï¦\Óü9\Å\â—\Ç\Î\Ï!à»¾!\î)\î…Š1£8o\íòlZ7t\Å_¾¡T,\é‚ø\Î|·\Ç\ïJ¼vß“\í“k1â¡†\ç€\ßl¯\År9 ‚²¿V}_\'Äºì½¶a\Ç0*\Ï%N„\Ël-!\ÏUÃ—¬²C¥=O3+ˆı\æ\á5°\Æ“¾M¯\Û=\"<\ÖaX4xt\íù\0_\n4yğµ”œ\İbƒ\Æ7p£Á\ÉQJ\æ¡Á\ã\ÃÀ;(„M\Öú\è²JF›4\ë[‹\Õq„Ï½\Ä|”i—ŒV¨u\Õ`\İ\ßkœ¾b–s\È¬æª¡f5\İA\ìu¾‚Û©·ğ=\ÒX¨´Œ}¢U»Ö‡\"tc/\Ï\Ç\Ì\İu\Éü_òit\0¬ktµ$\Ê_CxP \Ì\Ñ:_\Â\Ó\Z‹r\á\áA®Ã¯\â\åû¢~‰üN\'\ä\ÙĞ \â\Õü%&“#\nU\Ïõ\åÄ¦|HeÁ44³\á\Î\×{\Ï:¬f\í½ÿ> õ\äøR¡*|\ÙH`°Í¥Õª#Uc;¼¼c€w-\Ğ\r\ØyOy›=\Ôør~±¶Ş³”\ÌIBñ|S\ê|R#!\Ò\í^\áƒEDõaj3\ã’\ØDyƒ˜;:‚\Ëeó`K+ƒ\Øp(4¹±¨\Îz¢+½\ê:\êV\ËNÄ•’\×_±N³~\êSkô“ø{2`\Z~¥\r~\Ù2GÌ¿»WD\á×‡\Çù¿Ç„–\ŞdDü\Â\Ş2K \Òòl\æ×ºğë·³>}¯/S†‡A	yo­ù\×\î,¼hoc/X®\"N<\ïX_*\Ì\Ù¸€^şXğ]z#\Ç#\Ü\ê\ã\'½¶\È\ÈÊ†ˆ\ç\ä\ÕFH\å[‡\Êü°\å\Ò:«´Ju¯\Âr$\æe¶_„7X\Û\Ëp  ‚\ïo‰\Ù\ïk@p°ym\êF\ÔlöŸ©cb\ç=P÷Ã¯^¼¼wG§\ß\0òe\00ı\ÌTDòq2\×3§”Î€2G>;\Æ,l=X„…ƒßªi\Ó\ê\çŒ~ö\ß]•g»\ÄQ{È³„\à—\ry¶By¼r\Íh]_N\áÙ«_\Û\æõ—ÿõr·ƒbc\Ãs\Øie€È™«\r\ß5½½=n\É\0ô¶„6»Ï©x×…Sœ~×¤\ép\Ó5*bŠN0®-P\Z9y‰¶¤\ç\Ôb\ÕÃ½ }?4m@&|Ht”›!Ø¿~+D´Z n¨	Jğ	‰uˆxaU·+{ºJ“´q6\ã®Ä˜ex²\\¾\ÖE{€\Ç\ÂìŒ\î\ZÁd^©¿D)–\ê÷\'\n¿s;\Z&Ø·Ào9‚Ü†”ñğ\Ëx}\ëÿ\n‘\í\nyö\Ê\"y v\ë!WÏ¬¦Œõú\nw–<_\ÄÁ—ğú‚Q§_\æ\ÌxrY|	\rŒ…\ŞH˜rgHsñÉ­”\Ï;„>/ 5-A\Ü\î£\ŞE M1{w\"L\ZG™\Æ\Z¿	\Â\Zº`\ß\×\îº\'—s{;1\Î	ÁŞ»\à@0Õ²\ÃÿBõ·\Öş‡\Ë&9nò=?9›¿_{Ù»uú\Ş.»¨fü›¿\'\r\n~s~	 \Â/¼2Hh„\ßF±«(üúb9ğ˜Pú\å\á\×óüF<…¾Á\r3%Ä³©‡<öúrğ\Û\ãõ%r\âƒ\àk‡¨×¯‰\0\âöx}kó•6¶W_P\Ï$\ÖG–ƒŸ\Ü3C\ïÀ\n»«œ\Ç9\Ò\ÇX+]I©§=\rd\Ò\Äc`Ø¨0„\Û\n\ÖğaÑ½\Ş`\0\ÇŞ¨fe¦q,Q¦C¡û9\r£Ş¡±QÓ§¢\Ğ&\Ú<‹_ø\Ü\ë&J\ã€\Ëy\\o\0¸gRePP5¸)¥Y¢–/¿\\=\Ş8ü¢K\ìj4üFŒmxò&ø\éİµ€T×¼gXÀy¦½¾,€ƒ\ßhm\ÜSz}\İ2\\!…_¿ö5J!\çó9<¾L,: ÆºÀ•½\ÆõH\ë%\\7<Ì´\Ğ\Ê†\×f†…4B\ì\âº³Jğ5r¼Â½ ¼¨•K\rŠı«\Í\í9ªw\ï©\ê\0­\×`\îQ†ö\â‹ú”{C^`.R½:dMBfk‰aµzg‡–ıı®\íû€¶\â\r\é>-\0†ˆH_\Ù5N.ÀWA·C\é¹j\ê\ZP\Ú¿S°Š»ª\Z\Ù±+8F.P´ü‚h‹=wÿ\äz˜*\Ï|È³¸L\Î2ºû×²§Q·o_n‰›¿h‚>·=°O|#\à\Ö\0¾ †}\èm£>2\Ã\r\ç4€²÷N?\å?„C…\Ù\Z¡¸ˆ0Ö¼\n\Â3•k5nC[\ß<)\Å!³u\ãL¤‘Q,û´$:¡r3w`G¨°¨\'XC\Ñùû¨n+\Şôò_\0\á=p\êõ²9¸#\ÊUpº–,k\ïÏ„<¿+À/Œ`\á×¸R¬¾/&\'\Ï\Ùr«±å§ˆñ¤C\ËÙšãŒ²7\r¾\Õ6•/\à[\êKñõê­£‹\ÇÀ\×\Ûü\"À\á\ÜT8¶ø¹\í÷iı<].z#¯\'„\İq\Ñ\Îjú\ÓQGy¥[\Äó`µ…aø Œ2\ëò½Ròa//\Ø÷`\ã´n*h\Ï>€„½ÀCnÛ·³ğº±Ÿ‹{\Ê{\âdsğ\r\0¯ıTs\éaÀóñó2ı\Z³øm³lú\à7\ê9«\ç+\Ö\rZ\Ë\0ø’B4üJ~…\Ì÷­<=°c/\æ&ò\Í¯¯¿œW»?Ü™„_!ÂYğ#7Ÿ\Ü÷º|\Åöºß}eôS­÷úş}öA\Çx\à\í	b\\®;#Ÿ¡C¾8%\Ï`\Økğa‘ôu”G¸\ê\Èxƒk:»}eú,Cğ\"”{UJ\î8°ûÖkŸI¹¹\ë–\Æ-Ï§%w{­…Ö¦\ÌY‘ü„\Äş€ŸYqMWë’´÷\Ú<\ÂÇ–£L;/«‡ß¾2Gl\Ès¥\Ñ>üJ9_•‡_?/9d˜S%|¸¥@¬)\ÍÕ›\æ74¢!Ï¾Â¸B\Ì;\ÏO.·\r6\Æ4» a¿\ï\Öa\Ş\æ\0\Ã\Şğ…gp¾\Ö_f›J\å °,E\Öı(ğj!w\Ø\èøu=\ãò„†S\ë~OA`ª>­cQ—÷\n»\êR3f\Ë\Õ\Æ:G‘,s¤­…Z\ê|Ô›>\ì.?t\"ˆ°#\áD¨ù?‡ğ\ãı‰\è2t¯)\ë?–\ãRg\çX’qö¼\àÁ®.übI\à€¹\Í#\ì\Ã/.}Áğ[\\˜\à\Ë\ÔpÿfK2B5[´E\å™\Ü8CQ\Ğ\ç2[ı€3\Şt?óú:¿E¼¾\Ş\æ‘T\ã¼w\Ó\Éó\r„Ÿ\Ï\ã\Ëx=\Ç\åö\Ò\ß\É\Ğµz›€·\Å99\ĞP8·À\Õ\ĞbJX[”½¦˜@Ì¡rP3ª„1[ğ}fk\×pVf`e\Î\â ¸\Ø,ºFr\ï[Csk\Ö8Ì\É<œFO±bœ±qCa9Ô½¤?ô>“\Ï`©¤­\\\ê{´Ä¯\Ï/ü\Ğ\ÎÁ_Ê‹I©U/\Û~.ø5ÿ½.\nŠ¶yüRõ}Yv @X~=¯vˆ|ø¥K.Á¼,œ\rŠ‰™˜$\Ï\ÈûlÏ·h9.¿™‰\Ótó ğõ\"BÂ¡\Ëğ\çú‰¡7\n¼^ıi\àw]«d­JÂŒÒ¸®a@:@\Ìx‡iŸ±{`\Ô#Œ\ãkı•â¼¢b\"m©f+ª\ã\Ô+\Õ™´\r\ï‡\Ãö„¤†±.‚‘ R\r2?c‹\Î46úZû›b¿O€©¿l\ì¨\ìœ÷U‡n„_\Çx\nğ›-øu\\\ÄÅ\Ä\Ë÷…a ó\0\ß,v(D‹”ÑŒ\çµÓ®—M—\\\"£(8lE\r’\à\Ú\Ô\î,AğõC¤\ßU&\Z	¾¶Šôˆ°\å§½§³\'pŠ›œ\Ó\Ær™	•Ó´«9j@j\ÍŒQ0Lƒ0ü\×|€ªaj\ÜXK‡>\İÑ–n‚&¢fl\0®\é}¢\ß%/pµ”•1X\Ì\åFJ+§‘÷ó<\Æ-)½\ËV«ª÷\êpü\æ\ï3ÀÁ]xõ¨A˜š¼\è†_küŸAø¥BF\Ç\ÂoŸ\×n\ßjÀ<DĞª;\ä9¿´×—\ÙHr ­ğ\Û\æõ\î\ì@\n\ZUŸğ\rˆ—Ñ›9Q°\í_ğÀ‚\Ş5wÖ¨†·\ÙÁO‘\î\\\áSÁ/s¼ò`\Ü\n\Å\êü€\0\ÍÒ¼\é‚ğ\ãœW!,rg.\ÔÀğ¶\ãğ\Z‡\à[‚z\È	n\n\İ\í…\àe\ì£Ç»—<\ÎA.±\ÌU\È/.z¢ECc\Ä}™J—³8/ö>£\Î\ã\íIf\ã*Ï·\Ï\é”E\é\r{Â¯¥l\Â/‘yŠœ_Šy9¾\ç!\r;\Ì#\á7\à1õ@–­Z\ã	Å„£\\Á®A!Ï¾’\Ïôfr\å\×ÿ[\ä=nR\ä¦À. \à’Á7\æYoï¹¡l\ï\Â\ï3|\Ñğğ\×\âÏ¯uT}s´”úÁ?¨„ÁB] p\Zu°§‹ùô¯\åi\ë/\ÕS9²7\Z\Æ\Ó\nzŸŠI\Şv¿\ãÙˆS­)«\Ã]§\ßx¢/;\ZR\ÎS1$Œ\rl\0X~3\"f°U\ã÷\Øb<üJü¢A\ì\Êú\í”ğK¦b\ÚóŒ4r\áô¼ü\ÆBÁ©<‹D¶HY,üZ\'Á…f~{Âı\\^/Dü\â=¾¡<Sğ<z>ª£\Û\æ\ÜlSgnö\nVøq f±¨†\æÂ˜\çóò{­3¼Á\Ê6¦	‚Á#+|=*¸ö\Îiür4Ü‰ôdA÷<˜!õaOEõ„ññ·_SûYG<Ø³ı\Æû›\Ş\0p\×b}P¼=ŒğËœ~QË³¬Á¯WCu<ü\Úq~=\åá™µ[‡\Ğ\Ñğ\Ëıf\n–:	&CÏ™„_r›…Á\ÛHrq4\á r@tlU¯/“¿nÂ£‹{4X‡À·2šBidr„\ÛCœ#mºP|>t3ğ2õ\âW0˜\Îa_0\'Á^Ÿb\İX¹#†\×\0aF\ì\"\Ú\é\r‚\Û\03V+˜ƒ\à\Öú¾«‰(­U©\áZ\Ç\'R\â0Hm~şË¿ş“ÿ¬q¯)ÿ>,\ÆHF9µÁ„Ü¼\Zü¢\Åó\ë\Zfˆ\èÔ\é0\ßü2\æ#˜²2§‚__®‡’‡_Th\Ø7\Ê{\İ\àI¿¸¾g¢ş.œ·\âb¼¾\Ş;‡_|@¾ ‰\ÌagŒ‡\Ş\Ö:€·v\ÛÂŸ\Û9¿’+cM*\â6>’!rJ50È°\ÜNo°œ‚­¹\Èİ©$û\0t¼˜Z/¼(€³õ\"pğ‘\ç\í\Ï	KF\æ\ê›\è\á\0œ†\Ï\É$Ge\nP™Z\×ó[wª\ÂT\ÇHq\Å\àRG¥>»ğ\ë“{„_95üÚ€:,ß·21\"^_gF8B[¼\×7\Æky}÷‡õúŠŸ—iE3°°_¢}\\®\ÇrP˜s¨´ú”—X\èQ\Û6»ö\Ñ3±÷\":\æ†\èF\á wÀğ£0Ìq(ut?_q÷?›j\êÙ›H{RO°\Ğº¡\Ğ=T1ÀüX\Õxô|’˜\á\Ïü¥\Û#\Âû\×o\îu˜k›\0x\Ìn\Õ\á\ßtœL€\ì$u\Ôù¿\Ò\âùµj\ÌZmY	~YuœpÎ©\"m\\‚šW&…‡\ßR­\ï=ğ\ë_»üO\r¡\îüº‹š¼¾õ)\à\æ6”,Tj$‚³)Ó\ç\ë<‘ğ%=¹øõöD÷/o@Áú,öNp3ğ]SŠ/ŠWÁ¹‡a2ŸV*\ÊRJô\ï.\ÏU;\è\Ì‰>ƒMsœüô…B÷z^ı\à\r.Šm\Ñ?¾$\Ö1\Í`7\ë\ä1Ø°W@¬×Œb¹·\Õ\åª!¢\é$Ÿ«Kà®Šm…-\Î;\è€ñªu~\nÁ1ø\r°\Å@ø\r²#\à7ô\ï8úiy±« üzbW^($mó\íRµ}ƒ¿ù¿\ÃQ\Õ\Æ\0¯¯§|M<\è*@\âz±C\àı~l47f\Â\à\Ûd<‡^\Æ\Ë\îB—ac^ˆ\İ\ëmn¨i¹º•|W€\á\ÊQ¡\"+Ñ•û÷§\×\\	‰\ë¯Á­\á\Â\'\è]5¾ú0°ø5ón\Îû)\ÚY£w\î\ã<…õ-\ìW]\ZòF/;<a0\0\ëR³ªu2(ª*Ğ°êº¬\n¿şy\Ë\ã\á•\å)|\Ï\éù­…\ÅvÁ/ø%=‚|Hk~k\0Úš\ï»KL\Ë\Î\Ë\î‚\ß0À¿\ÕwL^{¯ow¸3o\Å\r\áK\'ø¶y{AŒ\Å@\èE`\ÄZ*\è=r½\È\ëU‹°\Ì\ÅC±†\Æ\ê0ˆ™·š-\Z(sñ„\ç\ÇyB\ï¼ÁVH4º!8\Æ(¯6\Â\ÉHA¬ğš£+\Íù\Ö0h¬öê ±ˆ\Z†\\l\È=?ƒ)¯:²\ÓÁ‡¯\ëHz`ˆd\íM\İ\ÍY *WÛ­R\Æq\\O\ÉL*²»\Ù	ö†\Ø\00„o`G\àWZ\à—ø7_A~s\Ã/¼26ğ+üº j\äûÀ1¿¿\ÑòP±sŒô\0\×ó(\Â\ï\ÃØg;\×\×\Ë\ïga\ÊÈ±\áÎ¾\'>n^šÀ\å‚/ˆ‹U”B\Ğkş´J¸ö\È#V\0\ÕÕ®ª\æ+V£—;z|uyV©9\àšm‚0Ñ¤^o°\İÁŒLõ\ÌnC‚Ï„£­a\Ç\r¥–N÷–0ş&\Í\å©9£mJ¬\êÆ¾ü(\ÊCŸ)\Ó\î\Ğ\Ì\ÍúQM\Ò\ìf]\\3oEğ‰Jú:\Ğv£ò\â\ÙÕ½t\"›9R¿«ª\ÜL;@RJ\Ä‚ñŸ­a§¶gpÀ¶°–Y~\Ç5PO¿\Ìy\Â/,ø%`Ì…_=O\ãù\å}­qò\ì\Ão»g×†\ßv¡+g\î\Ô.Az}	\Â\ã\æ¿×—†pg\ĞÏ…„\ßğ\Åğ\ÒDü\ÆUôö|\Ò\Ğí«ƒ\îk­cƒ\ì|8 \Ö\ås\Ò\ÚZ¯>xCXh,½kB¢\ål,\Ãrnc\×%¼À—ƒ\İ\ãü\Ô\İk›\ÚcÊ£Á+®u†ñü\è#Z#À¶\Û\ÜĞ¾$òÀn½\ä\rˆ<Û¦œ!\ÏFŒ‰Š\n$²U‘D\åw\ĞöI«ò\ì\ê\êş“\âu(;&¡¤\ÍFnnö\äò•\àÒ‚\ß\"l¡\ÔdX-\n„\ç·h\ç–J\ä\à¤ğ\ë\å:º\Ö<·*\Ãğü¢\Ü8„_z\ãÅ_&\ß×­Q\\¹\"\0\Ë\0X#üz\Ì\î7\Z–ryıw\Æ\èKs¸3¿\ÜpŠ\Ì#Á·\ç\Ã\È{{9\Ïw?ô¶\Ô\ê\íÊ·\î2\Ô/\áo”Ul\çşX©Ia‚s„™¡\×\Z4Ç…€\à^\ävğœÕ±k¡\Ğu¿ÿ¨@Ü‹f‹¸×’¡#n³v½\è©VV=ñı|\ÛVimš\Ë)Q\à\r\çIDY¶W›¼Q\Õi\Äp¨¨B>\Ú\n\ä\İ$Á\ÔÙ”6£jr°iú\å|\ëõı\ä\ÓO%—\Ü\èt­ ø‡\Ô\à\×1™A„Âƒl&\â\â7kÀo}€‡_Xğ\Ş¿\rÿ‹¿g\áY_G\\lø~™\É\ÇFAô‡<K \ä™yöE®\åõ5\ÚE±›÷Q:ø\"¤\Ì\æ·{ # —^\Ê@\Z	»xT\Ğ\Â\n\çß¿À°n¥\á\å\é#\Ï0Æ‚pd\\«a\Ñc ]Lú{\ÌHZ\Ï[‹ÅŒ\n\İ\å6\èªa\Ğ±\áJL—Fö8}WN{={Ÿ\ãp\Ü\0ûª’s–I [²d¤³ˆ^m6Y À\0YiMI°ÏŸlE\ä£$\"{¤i‘\å\Ù\ÕV\å6KªCÅ™ID®¯od·ß‹nT0Á?dF\Ãğk‰}£\Êğ\Û\Şp x&\Ï/\ëMy~\áÀ/jcSÖ¨v¼³‚ro\ÌÄˆĞ¹±‹\Ò¿\í*\Ï,\'\Ó\è\Ë\Ü\çõõ\æ+	¾ˆÌ¾x|\é/\"Ÿc\İ½/3[\æ©x\Ñ8&\Ñq^\ÍFB\ÃaZ3—\Ğ~_²~\ï\áxkô>:„«\Ş\à€\ÔU5/8€\Õ=|¶i)64¢\r]«1\Şw\rX½ø]|GN\à\Ï>sô³?…´—`³ˆl\äN:g?\Z\ŞC\Îòüù³]J\Ú=bY[\Í\"%QùXTn\Úñ7MY>ÿ\Ö[²Iªw\É\Ï\Õ\Â¸\îæ”’ì¦½ü\ìƒ\äj³•Œpƒ–\à¤/MŠÏ°\åx+\á¯ğB<¿5#ƒÃ%\êùu…rüüQ~‰V\ä\Ól„_¸ğ\ë–î±¼¾U \ì€_H=D\å•\Ï\Ô67;ƒ„\ß\Ç\'ÁÀo¡\é+z}~šŒ\â¦X€£\Â\ÌQ~¶¸$\ã÷Y_Q›0DYŞ£\ç\å\\gy\êÿŠƒ1C\íûƒ\ê5\ÜÃˆşµY1ƒnX8õaLÇ¨µy\ä\á–\×¹©ÿQ^\ç™/°\Í&\Z\Ø!O´ö\Ñè˜¦ƒ\íõ‹cœøh¹\íùEúp‘\Û8øk-\ëkï¿ a_&gy~u%7û½\èüÖ®‚½\Ó&Lús_úb\Şn·ıC˜ómST>N\"òQo‚tJI¦<É—¿üE¹\Ún79gû\ÛL‚{·wù°”’\äœ\å§| )é‘“Œö¸>~‰FÀ\ï\Ü°4\á¾¸\Ò`Á+Où¸üÏ¼wj±lˆõø•\Ï/ø	¿ˆÀ¯U›\Ö÷ü6‡<÷À/9/¬&—TÁA?_øğkN{§.6„\0\È\Ù&\n¥\Şc\rƒ	¿\äY&>\r¾nk=°\åÀÿ\ï¼\Ğk\0¯K„\ãyxşm‚d„¦JS?:`¸a*\×V¦k\Îò\Ì\"¨TO^´‚G\éz‡\Æ-‚K\'DÚ‰‹i\î\ë²Gğt{qN:®¦*›\ÍFnnn\ØS&±U	’ˆ\ì¾üù\Ï?Ÿ0]\åœtEED>Jı‰ªFı‹ûı$Ï]É‹\Ï7SÎ’RrB\nl/pÎg›­üñŸüL¦}©‰45\ÛuvË¢IX~\ë\á¸Øœ\×ó[~)kú\ß@\Ş%Šû\Ä6p\Şó+®wüzŠ\Â\\¹!T\Şğk\Í3‰¦ñ­\İ\Ä(x…»¼¾”Un\ä/P§)|5¶\ß\n’Æ¤	b[ õ©¯„\r?¯\îğB\Â\Ü\ÛŞƒğ\á±\Ş\à\Ëp\î1\İ\á¸ò±\ïğ£³\å\ÃĞ¥\Ó%S	Aa\ä¼\Örô\'ˆ2×‹f}HZÁ\Ğ÷0\ç,ÏŸ?\0òj·“\ÍfC¼\"ND0 \"ró\Å\Ï^¦Œ\Ô;r·)º*ıIR•=jRl4\É\ßş\Ü&çœœ‰€\Û0h;™v{µ•?ùH>øğcy¶\İŞ­Å¶µŒ¦”¿±ğ[V£ö\î\Õ¿A(&\á\×ú\",Cu~°ŠbŸz~aõß­~jÚTiÖ–0\0<š$û\à·\æ\å,…÷.Ãš9!(TH‹/c\ä]!¦˜÷ú\Ú\ïk ?òv[¸3`E‰´y}\ÛÀ\×s^l<5{{[ w9n>\ì\rc\á.ótôÿu\İx±s\ã†\æ\Û\0´FA¸˜À¾Á}·¨„Z\ÇÑ&\Ã\rq¬vµQ!¦g¤‘×›7/n\Î>\Ü\ZZ\ÜV\Z4\ÌnMù6öÃ?–D]“8ù¿ûi’\ífƒ÷¿òÎ”§,Ü…ı\áW•$\ç\ß\Ş\í÷Î­9g\Ùn7ò\î;?·™òÉ£\Õ/ÀÎ»fR•<Mò¿ü\ÑJ\Ún$›\Ş-\×\ÏZIN9=üV©®óGÁ/ø•øõ=\É\rğK‚Œ¡¥ªaº\Èu\È-Q%\"y\ÖÜš*5¨wÀ»’\Æ|_*\Ï0˜\ŞyF|\Ë^\ßúhK®/ı!A¸swo!¸D±}\àk\íšx­ƒ˜±¶\èµ\ï\ë\í`\Ø\Å\ìkÿ/„¶hóÌ†úc¼\×\ç2B\Ûeö;Ë…D‡`4m™­c\î®\Z{\Ú\Óa›O\ëÇ‡ŸüzgB²zÁ\Ãş4÷`4\Z\Æt»¹’\çÏŸ\ÉO?ø@®®®\ÄSl†\ÈNh\ä,/^<¿\Ù^]}n¿\ßK\ê%\à”6»ı^$\ç\ßN\Ølÿ%r¾\Ñóbš&y÷/mT$\İw\\\Ë%\Ê’÷\Şı2 \Ûg\Ï\äÿøO\ä\æf\'\ÛM­•K˜0\Êú\Òœğë–¾\Ñ(ü†øŠğú\"Àª\ß|Føu¬\ëÏ´hxJb¾z K\Ç\ÃÿAmÊŒ»r6M\ào@\Ø\à¿ö|_»¼Q~Ió\İtb­\î,=\ßUÀW¤\Ê<a8a\Ò=Ğ‹ •µÂ®¸\âıj®\İ@/\ß\Æ\0!\à€0Ø¹l<kDjö³‚c‡¼Z\Ôj\rB\él\Ë\ëMxM\îñ\äFk#~ÏŸ:~\ŞÂ¿ª\È\Ín\'_y\çKòÑ§Ÿ\Ê\î\æF”’\ÕÆõ\ë&%\Ü\ì§\Í7¾ò•’\Ê\ç\' w  ·P}ƒ\Íö_&\Ü\àwD\å\İt9€oU›ovò\Õw\ßÕ·?\ßN\Ós<!`«‰ˆ\\¥$Ÿ~úR~\ïÿP_=,‡$õ0Y.÷R\Zÿº´…™Y…Ô±<ø\Ã“\ß<~\İ\ÚÀüš¨X\ë³¿ş\á`¿b„\çW\Z\à\î¤ó½\Åmğ+\ëÁ/\Ñ$~KEûp\Ìùwšgˆ_\Ø\í\íõ-œgm(pi‚¯+^\Õ¾ep­bC!\Ä\Öf„§¼\Ç\ÕÂ•%Ø­û·+\ëC>n\ÍH0\ÄÀ0¯b‚0\ÕlH´›\Z€\à¼\Ì>¥Ö¨„\Ë!8+\ÇP ü > £\İ}_/X½ÿ¹>¸\æ\áWÿpj\ÑV+6\Êv³‘/¼ı9ùƒ?ü#yö\ì\Ù\ÌÆª\Ä}\ß2`h³H‚\Èõ·¾ñ\Õ4‰¾X›ˆ\Ê¸Á\ï¤\İ\Ûo¸\Ñôo\Óm\á\â®q\ß\å,/=“÷\Ş}\ç\ê\æf÷ \\UñSa\Ğ\"\"\Û\íF~\ç÷~_nv;I›ôh{ZŠøYµ\ÎR(,C¿\â@Rñ\Z*¢lÿûJğ+\rğ‹€\ç\×ı\0uÕ›\Õg0¦D£ç—¯\ã[ŸXxjğ[MQæµ…¶q\ï\Â/ı^\ÅiE@m÷úV\çHCø\"Š$k©:7€/\ÑÌˆ·× +Jm™™Cô¥»!¸mt\í6Á4\Ê+W\î2‹«j\ì\ruC^p«\0TK>ğX/pa§Œ¨¬ö^4¾x-\Å\Z½ˆ>M_­\ßj•7ƒ6J?©\ÊõÍ¼ÿ\Ş{ò³?”O>ı„¿\0;¹U€®ş\åœSJú\É/|\ã\ëº\ßï·½“4çŒ¤*Mÿv÷ö\Û¦ÿø\ÇSJ\é_mSM©¯‘³l6ù\Æû\ïmól\Èt\éV®™µü\ê\êJ>şøSù\ßû}yñ\â…aÀ\ìd4œc‚®Vµ{e§\í8?)ü\Z­1¤º\İ\0/Tv-ø~CŠd gƒ\ß\Ö\Z¿\Ò\0¿p\Ş+§Ù‡\ßp©ªÁù¾\\m“‡x}\Ù6\ØP\à\åù.Á\æ\æñ\á«j°ƒ\Ì\í­Ş¸zp0¼¦g7D«²^¨s£\âóªPan~õ•\Ş»7Ağˆ|\àV\\Áy\ãO.ºÙk\ë˜ö]p‘Y=ÁO\"g¿\éö%\Ô}·\ÊíŸ¦I\Ş~ñB¾ü…/\È\ïşş\ï¼¿\Õü\Êúu£Š\İnŸ~\îKŸÿ\èso¿øò~¿ŸUj\ècJy›’¤”şÕü\ã)‰ˆ\\={ö?Œ˜rIDnnn\ä\ëï¿»\İh\Ò)Â½b>~Lr»\à\ZLÏŸ?“\ßş\İ#|ô‘\\]m\ÈÌ–r,±0>%düsò\Ì ÀÀPŞ¯]ò= a…Rş\å¥6(@\Ã/‚ğ‹•\á\×>\0fol\Ãğ+\í¡ÿ­_~¹	ƒ.ø­¢iÁb¦C	Ë¾¬G\Ğ\ëõ\ZüLğ\áò|K¿5y|)-\éXnokˆsñ|€&¼».qrğy\Öô_ó¢+@q%_¸\çzh\0\Øú»\ÑÁ½h…\Æó\ÑrPùñ\ç\æ¬VøE\×\ÜŸP?º\Zò%ş)w´¾F£€‹l‘¬*7û½üü×¿&ÿ\æ÷_®_\İP\Ş_dn\ìÇ§²Ÿ&ù\åo~\ëOsÖ¯L\Ó4dwD\ï˜÷Yeü½W»¨È¶€“\Ü\ì÷òÎ—¾”¾şŞ»\Û\ë›‰]E\æyÅŒÿ&%™¦Iş\é¿úm\Ù\Î«ACŠœWñyö‘\'zÅ¯²¥0f¾\n¯\İ>\ëW\á\Í^\Í\ÛRy~™•pF‰\Ş$\éôüZ\í¿-!ø…\'Ÿ8û8Q\Ès`\îI<\ä™óúr\ß\'7\å‚\nw¶ 8\n¾%µq|«(\Û\á\í-B/\ê\Ğk¹A\Ò\å\è½\È?\ÊS<\è@h®\Üe•¶¾\'—j¾Ã½Æ·\ç˜Ü¼M\Ó{/=ók\Çƒ8q¯cJzM|\å„\×i‚Ÿ•÷¡\Ï_{÷\É\Ó$ÿöşP\Şz\ëyÁ\Ş\Ò\ÒØ¾\'üyŸó6‰ü\Ù¾÷}ysıùƒ¥\"\ÛW»l€¿÷\0Àÿ\Ë\æ­ÿ^õ¶(°8’\Ô\Ş_\ÎY’ª|\ï¿ù,g`>³Ph\äÀˆ{#ö\Åó\çò“?şSù×¿÷ûòö\Ûo=„\Ò\Ñù¶V.p\'üZ\çP!\Ñ.ü\Â2¸\ív\á—(w\Ô\"z‰Ç”KÁûP\Å\à´•\Ò\îùu½p>¶ŸøuŸŒ³{Å®\è\Í$\Öxnyö\êúò\Ö}e¼{Â\Ûó|K!Í§\0\ß\á\Ğ\Ëzxƒ\Ş\Ü\×\âoM\Z\İ\İmz./ğ¸gòºÿ\é“{/³	xó”Cw^\è™\é\é\ÚR\ÈS­\Şš&y\ëùsy\ï+\ï\È?ùW¿-\Û\í†}\äk«gU\Ü\ìwÛ¯½û\Î¼ó\Å/}u¿\ßkJ©w*\å¤*ªú“ÿeó\Ö/r«°¥\ç¿ú/?ºÚ¦¿¿½\Ú\Ş\ë7ÿ¥;/ğ7¿ö\Õ\ço½xöÓœm¡\Ğ\0ğ’úòüÙ•ü³õ\ÛòÓŸşL^<?\Üm\0e\Ä6‰^P\×b5 *¿v?\á\Öñ=¡kÃ¯\ëñ‹‚’\Ù~\î>\Z\Ôüğ\æÉ¥Á¯ğ\ëQ=—–K\áò}ksr\íú¾\î³v\ß\'\äÙ­\ë\ç‘\ê6 X\ç[±:À·±”\ï\ÅXª\à»8\Ãÿ­Ã\×\ìÅ·3@pK(ôia§»\Â\éä®Ÿ\0ª^VŸu…!|}4\Í;]i\æ\Ş\Ûª§{ÿğ„v\\\0\È4Mò‹¿ğMù—ÿú\ßÈ«W¯\äj»e\Ï}%·õ-õg¦|ó\ë?üşO?~uı\í\éVı9uv\Ş^m\åj›şş\ßù¯şË ¢\é?ı\ë}#\"²Ù¤¿›$\ryv»¼ıö\ç6\ßı…Ÿ\ß\\\ß\ì i\à­ù\àF\n\äk\ì™9šnÅº\ä·ş\é?“—7\×rµ=.¶¼®\è\\Ñ«ŠŸ¶!®\â3“«÷rÑ«sÀ/—\Û\çÙ‚±ZÈª¥E¢\ÎfG`³…ğŸ~¥Iş›‘øğ+9\éŠ\ä• ªUVµŒG\Ûò\ì}¢\Í>¶z}Amvø¬²\ßE^s|m.ª‚¯O\Éô¶o/ä®ƒ\ÅñöpG²0Œn/n7R€\às±&\Ü/À\Ğk^ª‚µ\ÕV¸/V\ìK+‘¶\Îa]\ë9¢w\Ätœc×¿œÚº—\Ş\ÆÈ·k7Mò\İo}Kş\èÿDş\İO~\"ÏŸ?g½¿\àS\ï˜ı~õ\Öó«÷ı\ï~ûùË››Ï‰jñ’$\Ùl\Ò\ßùOÿú_ß¤úşûw­\Î÷fw-\"²\éH@öû½üğ»\îj£2\å)\ë²1GBFş”y\Z\0\ä\Ùv+¯^¾’ÿ\ßÿø?I\Æ$\Û\í\Ö|%C\Ğ\æE\rp\Ñ\â\ß„‰\ØĞ‚.ø\r\íŒôüZ%ˆÀSöª\Şn8ğWÁ%0\r:j‡\n^ÕŸED¬~\å”ğ[ ]L\á\Âo}c«~\Û\rµ¯o•\ëÉ\'\ï\áE€¯Gg–·½x9\rlGÉ£ Wô¯¯8G\Í<\Â\ÜÁO\Íü$\ÃR™•\íT\á%WD)\îY=_\é#O	ƒö½N\éı½L6.·ñ\æf\'\ßúú\×\å“W¯\ä_ü\î\ï\Ê[o½eğ\×\"\Ü÷•ˆ]ûw£Š\ë\İ~ók\ßûs¿=eınrŸ\ë÷\àÒ·Œ›ÿ®ˆ\È?}ÿ}¤ÿø\ÇYD\ä\'7W¿¥ºù½”’Ê€0\èW\×\×ò\Î\Ï}\és\ßûÎ·ò\Ë\ëha6\é#Õ«\07€\Ü0s\ã>øƒ>”øOş‰l’\Êv»•e\ã‘ğ\ë‹^U’`î¢¡Ï‘×‰S|n+w4\n~\á$•\"\0¿—\àù…\Å¿üğ\Ğğ‹ü\â”ğ\Ø\Ûq?RµÙƒ9[w\Ôr(@\Z\Ìğ·<…\ç\ÊA\á\ïs1\Ï\×\ê\ã\n\à\Ë\äöV\éõğzRhÚ‡F‡\ÏUò\È<aù~AfÁ.z„û\ì²q\Üc’|1\ÔÙ©\îs\Êpfr\"OCi\çBÕ®z™›\rƒ;¢z9£ gzX(¼zôO**\"×»|\ã«\ïKÎ“üOÿò_\Êº\ä‘È­òsş\Ôyq“ó³\ç›\Íş¯ÿòo\Üüô\ã\È\éf\àœRR\Õ\Í\ïı\ä\æ\ê·DD~ü\ã\ç$\"ø\Í\ßü\Íô_ÿ\í¿õ\év£ÿÍ³«­\äN\0¾·S÷û)ı\ê¾ÿVR¹\É9kyò\é-4}\Â~\Ñ\0\È[/^ÈŸş\É\Ï\äüÿH2²<»º:\Î	6ê‘¢W®\â³5HAø­‰a•,z^ñ9çµ“{\á—^\è*\Ì~a‚Œ\r€vø¥Vò“Ã¯\ï-\\+\ìù\ä\ßü:Åju«\r\ÔÜªˆªš¸{\Ü<O\á¹\ÖR_§.Tg{}Gƒ¯}`=\Ä\Ä9.\Ê\ÊI¸–\rÅ•gc\ë[³M <\0‚»\rñ‹`…†0\è\'•v«gl3õ`Lğñ²v0\Î\Ô#‹\Ü\Æ>öE±şs\Å9\àó\âògZ\Å\"²\Û\ï\å\ç\ßOò´—ü\Ïÿ…<¿º\r\ì\0øX\å\ç*®¯o¶ñ\Ï\ïÌ_™¦¬GŒ\ØJ¿\"ù\Ù\ÕV¶ıoş\ë¿ı·>ı\Í\ßü\Í$\"H\"\"ÿ\àü¹JWs·Û‹\ä\Ü’\ê«\ëky\ç\Ë_ú\â/\ç\Û7/¯ojƒ…»* €O*/^¼Ÿş\ìùÿğ”\ë›y\ëù‹\Û\ZÁ†â­\Åõm½‚\rZığ[\â÷Û¶IB¼-\åk< \ç\ÇÛ‚_.\ÉöEÔ½\ß0ü²ª¦H¯\r¿ \á\×û¹~c{d$\îV\ãz^\ßşpgû¾\ãÀW¸\nF³ù„n\à\rº ÿ_÷Í‚m†Xµ¡Ù\ÓCpO\àfUh2\ï¶•º¸È§­7:\æş—³p¢~;×¬$\ã\êF\í\éhF©	—Ş¦Â¹gb\ÎY³|\ã«_•W77ò\Ïşõ\ï\ÈU~_É­ø•\éı½öÏo¶ÿ\îó\ïÿ¥Oòg|ÿÎ¨H:±\Ù\íör•®ş\æ!ó&‘ÿ\ì?ûÏ²ˆÈ§oá¿“,ÿ\âÙ³mwô]§±\Ûï·¿ñ~ğ|›\Ò\ÇS¬¡ªPUò+\È](4\rÁ\Ï\å“O?‘¿÷KşøOÿD\Ş~ë…¨ªd øQ@\Ì\rê˜¢\å\ÓÜ (Œ€_tŠ^\Éø¤ø÷@\Ã÷¸\Î:ÆˆA-ª\ç¹iÊ¤#¸¦ø\\\Ûp— FKù3ü\á—\Øtqó\×»\n­8p \ØJk0¼¾2\Ä\ë+ş\Üu¼¾kƒ¯İ·²/²x[\Ñ¥ÿ:¬xÜ8ú¿$ó,\0r®\Ú \ì½rˆg\ÔöBğ‰\Ğ\è¢\ë:¿ùAŒ>M\n‘yıÆ¬\î®\äg\Ûe}\Zõgr\Ã\0§|=w6ô\0~·›¼û\Î;ò\Ç?ı©üö\ïşy¶İ’ğûpLd×±™Tqs³¿úkñGÿ\ÕN~5\çœ=‡ü\ì\ÙV%Ë¿øô\í/üw‡\Ì{O\Öø\ãolş‹\ßüÍ›Í³\Í\ßŞ¦+À)%}u}-Ÿÿ\Ü\ç\ßûK?ú\áÇ¯®o&c\àpO\ä\é&ú\Å\0\äÙ³g’\'\Èoı\ãÿIş\Åÿü;²\İn\å\Ùó\çn~\Ûò~¥.ª1p\ær_4Ào¸\Ì\Éò~Ñ«¦²D\Şf†¿\Öú”B‚,>~8‡]\ç7ò</~†ßšHFlş‚‰õ\í¶Ög»p·¨x¯o\í<\Ë)xJğ]\Öü\ÇS\Ü¼5\È=Y8ô’ÁØ¯¯Ë…®\î™\Ó\ÜÚ†X‚\Ï\á~¼Ÿ@¿\Ï\Ë\'\Î\Í=Da\\^3/öôù¿°{Ë™$Y²¼õü…|\áóŸ—\ßÿ\Ã?”?ü\ÉO\äÅ³g!Ï¯ˆ\0yúPnCŸ-\á«üòúú­w¾ğö?û\ßıõ¿ú\ê~ö³_»£·\éJ6\Ï6û¿ø\Íß¼ù\ãol\îGúÁµ¼\Ù\Ü:g¯\ë\ß\ÚMû,Ô \ïÿ^^__ı{?úÁ»_ù\Ò\çÿ\äú\æf»1bº\ïÂ¡÷\Èø(‚‘\0d³\Ù\È\ÕÕ•üö\ïşù{¿õ\ß\Ë\Ïş\ì\Ïä­·^\È\Õ]\æ\éDy¿0¹².ş½ızª<9\ìµü–u0ğKŠ^\éxø|\Zø…»©r^ø¥ğ\éÌ_Y\r~+ŒØ•ÿ=¯…6ó*\ÏÒ‡Å¼¾\Âö¼¾koM	š†^—5a÷\"r~y€\â`\é$÷÷\Ş`:\Ê\'ÁOŠ±\Üw\ä½¾L¿N-Vy@JqªşkÃˆ\èyg­z‡\Ğ6,:ü\å9Û¼~ğ³\ê¨Y2®)%yñü…\\\ïvò?ÿ\Ûß“O>ıT^<¯Pü±\ÜFôš\İ\Øçœ¦Œ\ëÿøÿ¿ıÿş\ë÷\ÇÿA\Îcr\ïñv7\íó\Õsı[‡¬[\Z[ı¿ıŸÿ£¿‹,ews“%¥n\Î9\ãso¿-?û³Ÿı£¿ù\ßş\Ş}û\Åó·\Äó0C ª/Tõ‹ñ]•›\İN³|\íı÷\ä¿õMù\â\ç?\'»}–ı~/9gI)-\r,l\à\Zô\Ü@\Âo\İû\Êû\ÖÀp€cÀÁQZr\á·brÃ‚K˜bEv¤3/z…S(>“@ŠJ\Ã@Á/†\Â/<\é\è\áğ[Ac R\İ2¿V—\Ñh×µÀo \Ú#\ìõu\ŞkuA\rkŠQ+¼²\Æ\í&°z\'6\Ñt\È\É\ÚuòeÔ½Ø­\r…\ÈE%Î‹\Ø¸<\ÏN\å®T=…Ÿ\Ô\ä¦yÀŸ†[-u{?˜#Y}fv;\Ô}<\\\rVb\Ûgreg\ÆÀ•\ÚC¤\á§`±%€¥\í®4úp\ÚJc=\Ã\Ç}\Ö\n\0\Ïq\Ú5\Å\Â\íK\"\"Io…\Ó$Ÿ¾|)¯®¯e»\İ6]À§rÀf’jşø\å«/ü…\ï~û¿ıÿÿ\áôO~\ç\ßşŸô–G\äşNWÏ%MòşŸ?ş;MfÛ±G7ø¿ÿ\'ÿI‘¼\ÙlÿsMªy\ĞØ§”\ä\å«Wú\Õw\ßû\Î_üş/ı\ÛO_]o’G÷**‚W|6\"\0yvµ•««gò\ï~ò\Çò÷\ëô\Ïÿ•|üñ\'rµ}&o¿ı\â\á¡fd\ÉS–œsÅ°d\á×´¿\Å\Ì\î‚\ß\ÇkÂ¢/0,¨d\è\Ö\á«À¯¥\áS‡\Ü>ø*ğ±• -o~k\Ïy‘C\à—!\Z¡\Î\r¿AĞ¬E\"œ~‚°œh\Ëšµ³\Ó\ë‹\ÊûQUx¶€°5\Ü\ÙS%®‹;Kù\ß=Œ¨LôıYs/±4Rº\ë>Ô¤\â¼ÁÎl}>\ÂQ]^`t\îJ[ü•tô\Ïø÷&)¹}ŒVÀ:\Ã#jWmª¬¿\ä \á²ò·II6ª²G–O_¾’>üH~ö\á‡r³\ÛuÀo~y—÷köd£‚—»İ‹Ï½xö»ÿÿ\ãô\Ïÿù¿ùıÿğ|†Œ@QMª›\Íö?‘|Ç¸\åa\Æ\í³\Çòù¿~\á\Ïn>şÇªú­} ¢\İ$sÆ³g[ıò\ç>ÿÿ\Ëÿ\×ÿûÕŸ~ô\á÷?÷üù«	P·ªo\'M_@\ËWJUr\Îr½\ÛIJ\"_şü\å«\ï¿+_ùò—å­·\ÉV·\ÉûIrÎ’’\ëj`*¢Y$C*y¾\r¨ùö\ç\Å?«\äû½¿\Ä!\åk–œ\çM¾mó<^E$«Š\ä\én{H\åş\ê\Ü>¥|û6/T\Ìpp\Ù§\Éw&ƒ\Î&GG’ÿ{÷eW]\å	|\ïı;{S•\à2I¤Êˆø¤,\Ò\Ğ@ƒŠAÀ0L“G‘\Â\Ãn§eÍ´\Ã,Y3\ã\Â\îµz9¡BR‰D!<„fl¥{Z	4‚¨‘„$@\Ş\äQU÷s~{\Ï·ª’\ÔóŞª{\ë‘|?k\ÕªŠS¿s\Î\ïœ{¾gÿ\Î\ï{\êú›B=Kù\r}\îjs?7	úú,d=\çU\ï¯2l•¿¿¶¼\ç~7\ãó\Ğ&½\ê?Hö\Ù\î^Y•ºju6ğUe¹#%¿}`\ëÿ†X¹xÀ¶—~‰Ê¯4öÓ‡¨Ÿ\ã¢\â×‡Y9\Í\êû\ÆK…•\ßşo\àõ˜û]®UÔ„Êª¹V\ÑûZ­Œ\ä4–.\å+ŸW†µ¬²+Á\Üós«\ì6tUN†R\æ!l\n\ä\æ\ãò¶%÷½±ú­\0[‹\ê6\ÛlYÛ­&`«¨7Õ¦<p¸\Ù\np¿V\ÙòªRıø0¬|?s?˜+>:û\rÀ}hø«¿t(`\ĞğTK^)\ró)\åï©¤”$	¥iJÄ¥£_\Ü\à#ŸµwT~üUU/\Å$³\Û\æ\\¹’\âø\â\ï\íûW\í\Ù_\Ó@›\Ù[“¢úû\á‡tf\Ü>û\è\ÜÅ‹]KS“_xå¬¯qÀwÚ‹¾\ZÃ K!˜,—‹(û\Ù\êµ\ë¦Q\à\Şˆ¤e¬¬1sY\ÆWö¬lÇŠŠii´÷\\Ğ¸|N˜8‘r¹\Ë\å¨.Ÿ#	1I\×“—\ÈJ]SóyL•~f„A+sr¾\ÖQ»-„\Éz	º}\Ã-ı§vû\ÔÓ(\Ûk\íyFP\"\íıÎ×²\Ã\Ë\ß\êv\Ğ\ß\êıÅ¿Ú½#÷ò³e°Ã•ºõø>úY·F\Ñ­$üR¿Ã›;¢½\ÌZ…ç’‡~õ±{Vù\Ğ1\Ôı\Ñ\Çgˆ\ê\á\r\Ússö\Ñ6\ë\ãY‹A„ßz«÷\×İ®D\ÍzO´\ÇKY3v2øvŞœc>¬—\é€w];ö5‚o\Ç\ê\ĞCo9¶Ÿ¦Uğ+ˆ\Õ\åı¨²1²\Õ\Ä<¸ \\Q6\Z xTq(´tÿÌ‘/({üZ\ßo\í\èúIŸ¿2\Ø\0\\ñz\ì\Â#\ã¡ƒğ ö?÷sNfªV/g µ\\yÌ¡\Æ\å\ß&\Z¸\ïõò¾\Ör#\å‡ª\r=®aM£[\ÎZt\Î=¤}·Fz9h\ÏW#\0w…_\ív\Î8J‡?›e™§4KI½R1I)SO\ÌL\ÂL\Ò‡ò‡KÃ\í`9Kb=X(\Ô]|ö\Çºğ3Ÿ®{e\ã\æ9Ä¦\ÌC/¸v\\¼ø\\>v–\Ù\í+{ò[\Ùöğ_\éQß¾ğœs¬¥©‰I\â\æ4kÿ	‚\ÉZ\Z<\äF‰\n	OŸÿ³Y\Ñğy\æ\ç‚\\\ĞÀ3N³™J¥OrvøÕ¢w^ö÷y\Ü\Ì\ç(pL\ÚZ\Ûh\ßşDh•:\03›—;ğj€®\ß3\Ø\r\éü\Ù\ë‡\'÷¾ğ\ê^õµH\î~Q¨\Ã×„~ş’ñ„uä‰¨-ä²¶Ó€“7q\Õ.¿«ªGX\Â>\éÿB™ûûûcc¶M;\âj\ßz~kğÁ©V=¢¬gË¸JK«|K–·¬¬öŠ®¨‡³\ÏU9\0—=i¥ò\n†C÷ı¶Ë²^gC\èñ¦WÀ~\ÇÔ°n«»\Ã?½ğVe\ĞGù@¯CµaŞ¢<²:¨\İi\ÚQyµP~¿°Jº`¯<²g«e\'\Ó\Zo3\ée»i\×ú±™±v¦`\"\ïX|Š†\ÎY×€~Š$$\àbY\á—\Ùl/Œ?uÚ”3\ë\â]\Ïüê•¿&c®\Ú\í• 4ó\Û\É7wdÛ;Î‚\\ss³_8{\ÖgrW(´W­\nÜ±[\ä„	“6ÿ\ê×¿~\éÿ½üêŸ\Ë\Å\éPW#\ã^¦\É+\ç\Ô\Ç\"R\nm\ïZ´C•‹Ş®£ğ€JÏÈƒ?»\Şsğ0«d+xdPƒ6\\d°Ÿƒı­\r\É\Ñ\×-†\ç]¦#•Ù²s\ßH\îöQ\ĞóF\áv<6?R\Æ\Üñk66·£!lM~Dû^_•7­\à\ë€\çaÜ„‡\ßt“*mC\ícŸ°ulP\ç\Ä3³f/\Â*,\æUG\ä\ê˜ôj\Üqõuÿñ«Kş§\ßü~i’eS«6ñQ©ú›\Ë;#ÿ?V®}òë™¶û¯õú„óÌ™3­¹¹™%\äû’Bv;7\ŞJÉ°\Z\"²½÷OŸyö\'¶lm}î•›ş¼>µ«1f\ãòac\é©g ¿!\Ó|ø\äW\ÌDT\ß+{Ö±q†´Z0G\éV¶Zn1+o»\ê§2&Ä´a\Şc<\nÖº;Ñ†\Ò-\Ñ\0n#¼Û«¾¾µô’Ë»ğ\å‘?(‡·+¹A\æQyü¸\İ\á‘C\é¸u\è:.j\Ú÷úú•T^\\Id8\×[W¯\æ-\×õ\Ğ3+1)3«K©¾×™Ìˆ¼\éˆô\\aÖ¶b’«‹\ãw\î\\zıC6nº*IÓ©\\zÆªZE\Ù9I}¶?\Ê\É}D\Ä™¶üû‚]sóJ¿\à\ê/\Ş%\Ä_+´Wµ\nLff\Î9:ù„Ÿ=¼\î\Ç\ÉÆ·\ß=·>ŸkU³c\ç\æ\Z\0\0\0À±k4\ÄHk\r\Í4\Â\è!\ZM}·—i2F\Íş\"mO²\Ø	\ï»sñõ÷\ï./Ü¶s÷L¬\ÌU¼# \êsù¼S²o5?ü\Ã\Û;³lŸ÷@z3s\æyFDœµù»\Ò,\Û\Z¨Y\Õj\æ\Ì\Ì\Ş{{{\çó¯ù\Â%~\êûN\Øp°½P/ÌŠş\0\0\0pL\\Àô×˜kp_V\ã¯\áøø*o?tŸ/p\'\Ö8üfYD\ä=÷K«jgoİ¹û.½Ø¦j\áW\Í4I³lk\Ö\æ\ï\"\"\îÈ²TQ\07o666\Ê÷Ö¯Û£f_\'f®öƒ\Ì\ÌY–Ù–{>\Ûx\Õe{Oşw\'üò`{¡^ˆñ¬-\0\0\0\0\0ÀTªü&1µ}\åÚ«—Ošp\Üi¯m}ûr!ªŞŒ\Ï]w¦Œˆ™\Õ\ì\ë\ß[¿nOcc£Ì›7¯Ï¢j¿Cš_|ñEºşú\ë\İ\Ç\Ï=\ï\×\Û^\í‚(OQŸyªb£™™U\Õö\n<ÿ\Ï>ş\Ê\Û\Ûwn{w\Ï\ŞS\ÃÀe“ƒcˆ\0\0\0\0\0ÀX¿\Ì\ÚZ,\æ£8\Üõ_\ç_³2__÷¡ß¼ù\Öa®AøUÅ±óIòóO\\x\éßœ8y²¬ZµJ\çı/²¡¡Á¾r\ë­\Z…ÁW\Í(\íhsU+´\ÌLY\æyóö]—_{\Ùgù#§Ÿú\Ú\nI¤j\Îa\æe\0\0\0\0\0€1~¶\ê\Ç\çÇ½õ\Í[\ZWH\Î}u\Ó\Ö\Ù\ÂlU¿D\Æ,dFi_ıÊ­·jCCÃ€78©Õºu\ëlÁ‚…®y\ÍC\Û>ö¡\Ó\'GQø\é,I•ª»\ÌÌ¤ª¶¯µm\Æ\'\Ïü\à®Xh\Ã¶¼=İˆr¡s©¡\0\0\0\0\00\ê8\"óf\ÜV(\ÖMü¾¾u\ë\r¼şÎY[wî¹ &•_\"\"U\Í\çcg¦Ëš]¿rÁ‚…\î\Î;¿1\à|Re5¤\á‚óˆ„e\ÜIšş1ˆBW\Í	±OÁ^½mÙ¾«\á£>ó¬ù—_ú´°lm-\ê„yP“\0\0\0\0\0\0@m³²,,“\àœ³\Îxü¾²ø\Ù}\í·\ï\Ùw.\×\â™_\ê˜ø*\n]’¦dwIGf8s–ûG–\É\"\"]0ûó\ç“?MÓ”­ «^™53#X—\ßY\ÅÏ®YÿôI[w\îşx.\n|\è‚\Ä\ãUI\0\0\0\0\0\0#\ÆuÄ¶ƒÅ¤.\Û\ç^vÑ£9\ãŒú_ş\î×©\Úfª\æ{~ˆ‹L¤a\ZqvqóÚ§~Ö™U\Ëlwy\Ö\Ù\Â%K\\ów×¼9\ãŒ\Ó5ˆ\ã‹(\Ë|-VŠ™™‰´PL\ê\Û\Óô\Ìó\Ïş\Ø¡\Ø\Ëon}÷„b\ê\'E¡`‚,\0\0\0\0\0€ \ÌZH³¸fÁû§œô/·h\îz£O¾¼q\Ó#¥vá—ˆ\Ès>´yÇƒ¬oY¸d‰»sÃ†²G\'W\Z ù\Ú\ÆFyp\Å\n½fö¬3¾´P,zq5Z9S3v\Ğû&L|²ô…\Ç~úO“7o\ßñ‘0‚\\}\é\ÕL\Â\0\0\0\0\0\05\ä˜5U\r\n\Å$7.o¾\ê¢ó~r\ÎG\Ît/½±iVk{2ÈŒ™k–\ÏT\Õ\ç\âØµ±=ııµO~\îº\ÆFY³b…R\ÊVšÊ­¡¡Á˜Èˆ³…¦úN†\Îjğ<pg\àf\Ò\ÌlÇ½§\íi+\\=\ç—\Ô]ù\r?·\é@{!J½\0\0\0\0\0¨Yğ539\Ğ^¨OÒ¤øñœºş›·,\\?å¤“>õ‹—_»¥µLg&-\r\ä­Mø53\r\ÂĞ™\ê;\Ä\ÙB\îÈ¦•\æÀA5®±±Ñ­X±\Â/¼òs—šŸJ“\Ôjõ<ğ\á\ë¬f\ìD¨~\\~o}?¿\á•W¿zå·§¶“©ap©t\Ì@†n\n\0\0\0\0\00øü\å˜-S\r\n\Å4f²}˜>\í\Å+/œùz¾¾\îı¯oy\ç/3\Õ:²\ÚV};\Û\ÂD\ZF!³O?¿ò±=İ™I+]Ğ yÃ¢E\îş\å\Ëı¼«f-‚\à\îöBÁC&\"R3“ ¨~\\nG\ä\Üoÿ\í\ÕW\Ïÿ\æS[\Å)\ÎID2\0\0\0\0\0¨,ôz3I½\Ò4\Ù{úŸLyy\Öù\çm0q\Â\É\ß\Şş™$M\'3b\æZ>\ë{Dø\Í\çr.É²›W?ú\ä=Yt0R8\ì\nÁ³g}#v\á­\í\íÃ±c”ˆØŒƒ  º\\no\Ê\ï7¾¹e\ÏK¿ı\Ãñ\Ûv\ïšbF\Ã0\à\Ğ9u\"‘WE\0\0\0\0\0\è\àˆŒDÌ«:o\æ’$	Ì¨0a\\¼\å¬\Óÿt\ã9;s_]¾\î\ä-;ö|º¦¾5\î\ÜMV—\ÏEŸŞ¹z\í“ÿm(á—ª\Ğ`nll”+Vøy—^vo\ÅKX{&2,!¸„U‰™9Šã¨­>\n\ßÚ»ÿÀ\ÎW_{\Ã~÷\Ö[\Ç8\Ø>ˆ\Æ;NE\ÄDD¹c¬¸W%B•\0\0\0\0\0næ˜ˆ:^Ë«¦¢F.Ë¼¤Y\ÆD\Ô9\Ù3}\ÊI[\Ï>\ë?\ìœ1}Z]k!±\ë½ı§e\ê£¾¤J\Ùx\ÎÅ¤¸lõ\Ó\ëo\êö\\Ñ¤W\ÕÀDD|Ï½«y\é’yv\íe—ÿ`\\\\\İ\Ö^\Î\Ü„ÉˆTœs\ÅQ¸?÷\Ö\î÷ö\Üò\Î;~Ó¶w\âww\íT\Ì|DDy\"\nˆ¹À•^*,\ÒU»!«}%\0\0\0\0\0 V\áñ\Ğ\è\×R\ÍO\Ù{\åL½˜‘\'¢3·?¡nß©Sÿı÷O›šMŸ29 œ¸¯µı´ö$\ïU‰G øv†\ßqù8hkÕ‡×¬b\Î=\ËVóÒ›\æ\ryò\ãj­\0}éš™¹ñ\É\Ä\Ç\ç.)“\á\Z\İK.U…s8GqµY›(½»c÷®d÷şıv\à@k²c÷\Şx\ßÁu\Åb¤jl¤lJ<L\Ï2\0\0\0\0\0\ÔybR!6¡(\Òúqùö\É\ÇM\Üwü\Ä\ãtâ¤º\à\äOJ£(8\ÎOio/WÌ²œª’•B¯U93V\"\Ë\ÅQyÿ\ãÑ¾+ùş\Ï°*l—\êh\"’\ÅDz\Õ¼füø\ì\àƒ\â‚/‹ÅŒG&†‰ˆY„\ç(„\ç\ç$ñ™y\Ú\ïWõY[’H±Pt…$aUò8l\0\0\0\0\0`Ì…_!‹¡\\œ÷¹8\Ö(ˆM##®7¢ñD\Ó4ŸyxUR\ïK\É\Ò\ØJ£aGn8¬eq\ê³u‚ú\ë}\èû:³f•nT•‘\Ş÷——\Ï—_°›\ß\Ú\Ú\êId4TTMÕ¬4‰1‘3‘3““—†B3\ã¥\Â\0\0\0\0\00f™•F«\ZuI\ÍJÏZW\Ú11\Z\æ\á\Í}f_U­««s™ùUg\ïm_t\ãO~œufÌª\İ¨AÃ»\Z8\ï\Ê\Ëş>\n£ÿ\ÔV(¨š±t¼ j´õÒx\í^\â\Çh\0\0\0\0\0“ù·\Û?‰EˆGi\ÖQ3f—\ËI’&ÿ°ú±õ\Û=[\æ\0LDÄ«V¯\æùó\æ\é\ÂÙ³¾&\ì\î*$	™WO\Âı\0\0\0\0\0\0HÍ³—‹\"Ró·¯\\û\ä·V­^-ó\ç\r}Â«\áÀDD¼°±QV®X\á\çÏ¾|.›\İcD\ã\Ób\âI!\0\0\0\0\0\à˜¿\ê\Ã8rLtÀ˜—®ZûD\Ë\Â\ÆF·rˆ¯:\êOMƒè¿½ø¢İ°h‘[Ù²æ¥ö§?!\áOFa<5IS5\æ\ÃKğ\0\0\0\0\0\0p,\ä^\"3U\Ë\çò\ÎL_¤\Ìi\ÕcëŸ¾a\Ñ\"·\âşûk:q\Í+±/¾ğB)¯ùÁ¶>ñû1ç¢\èlScó\Ş3^¸\0\0\0\0\0pL¤_õ\Î9\É\åb6Ò¦ı²÷º5=»\é†E‹\ÜıË—\×üM<\ÃV]²\ä&·lÙ½ˆ¨ñŠ\Ëçš³4\â’b\Ñ+‹£\Z\0\0\0\0\0pT\æ^#S\â\Ø1\Ùnöü\×+¢¥{V¬µa{wÃ†çˆø\Æ%K\Üò–^ú\è‡>ğ”ˆ;=¢j\ÚY\r\r\Óo\0\0\0\0\0@u©ªœ\äs91\æg”lNó£O>s\ã’%nÃ†\r´a\Ãó:\\‘°\Ù\Ø\Ø\èV¬Xá‰ˆ\æ^q\Å|\'şÀ¹SÚ‹Eb3OŒ™¢\0\0\0\0\0\Ævô5o\Ì.Ç”e~³7÷–\Ç_\Õ=§«¶65µÈ¢Es™lş\ìKNt”û/™×¥\"\â\nÅ¢‰\0\0\0\0\0CTU‰ˆrq,ª\ê\'÷x*ü\ÏUk¼İŒxùò^¼x®D\ÛF|¸ñ‚·¸\æ\æ\ïx\"¢f_şic¹“˜.ö™§b’™*^›\0\0\0\0\00ê“¯W‰£€]\àˆŒ~Ê¦wÜ¿ö‰\íıF\ÊhyŞ–/^,MMMˆ\è¦\ë¾tU’ú[Uu&Q1M‰U=•*\ÂxF\0\0\0\0\0`t0RUqq‘ˆü<\n\İÿº÷ÁG%\"Z¼x±kjjªÙ»}\Çb\0&\"¢––™;÷P)ü\æ/\Ïùl!).Í¼ÿ| L\Å4%3\ÊTU0<\Z\0\0\0\0\0`dh)”)3qR¦FsO\å¢ø»øÁÿ\î+\ã!\0÷\â¶\Ûns\ßşö·»J\ã7^wõy>M–&‰¿\"Œ‚(ó²,#\"Ê”H„a\0\0\0\0\0 –¡—H…H‰(‚€\ç(M²$Š\Ü\ã.Œ\î¹\ïÁ‡\ÑW¦C\0.?w•\Êo¼\êŠYg«\×+T\í¬8\n(\É2RU#\"\ßQÆ«”\0\0\0\0\0\0†\ÎJ£›E‰È‰GA@\Å$#~Yœ<›¬½\ï\Ñ\Ç_\íÌ—·\İv›Œ\Æ\à;&p§\ï~w\n\×\Ò\âÅ¤DD{û\Ù\áş\Í\ï?7KWe\êg1»\éA(”eJ\Ş{ò\Ş+‰(!\0\0\0\0\0Tx;³”sNœsBYªd\æ7\â\ÂÜ£¦¿ù/\×ó)QSI.·†®¿şZ\í+8¦‚\áªU\ÈÚµ?ıh}\Öù½\ÅK>_§ûòj1»\Èûô¼\ÔôƒQ\æ‚@(\Í2ò\Ş\È\Ì\ÌT\ÕXŒMÙˆ¸#\É\í\0\0\0\0\0\00˜€\Ûù/ªjLd‰E„™\Ù9¦0(Ë”’,-„,¿w.ü…\ÄÁ32±ıÙ¦eOµv.\ãsŸ»,˜={ÎŸÿe+`¬?¾ù\æ›%\Ë<\İwß²®òú_Í›\ç¢¦K@\r)\é§|’—©?-`\ÎEa@,¼÷¤¦ä½’™q§CˆÌˆÈ˜FÁe\0\0\0\0\0\0ƒ\ÍLl\ÆLDz¨\0È¥09\'$,\äœ#SOIšQfVÄ½\î¢\à!\É/5£\ç’ñ\ã7oõ\êCó3İ¸\Ä£»\ï¾{T\Ì\ê|¬\àa\Ø{OË–-;b¬ù=^üfrİ´”\ä6ÁD§d™Ÿ\á½\ÎÈ¼Ncòu,Î‰1;b&rÌ¥Gş\0\0\0\0€1Êˆ\ÉÌ“7#3\"3OªD¦\Ş¹\ÖÀ\ÉV\ç\ä po\Ñ&c{#$ıİ™;Z·.}ö™\ìğe-Y²\Ä97vC\ï\Ñ€XŸ ^³\ær9ù”©vß½÷öúğõ\íÿùS\á¾M3&d\Öş\'L2‰LëŒ­Y\êH­\Å\êU)\Æa\0\0\0\0\0c‘Mù 	·ši+$–V#}/\àü–‰§¼±ÿ®oş2\í\íÿ½ñ¦›\Ü[›¶ñµ\×>¡_ş2U£cög_¹…ˆÿù–[xÛ¦Mìœ£şğ‡0¼\0\0\0\0\0€¿ø\Å/:\ï=M=\åû\Ìw¾cs‰\ê\ÇA\ÕÉŸ˜ˆ¨¥¥…Ÿ{\î9)½Fx\ëÖ­l\Ìô‰÷\Ş\ã\Òhy\0\0\0\0\0€1x\Ì\è…I“Œ\ÍhÚ´iFD¤ª\Ô\Ğ\Ğ`s\ç\Î\í¸(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À±\åÿ´‹÷4õ\ß[\0\0\0\0IEND®B`‚'),(1,44,0,'asd','',NULL),(1,63,0,'<p>asd</p>','',NULL),(2,48,0,'prueba.pdf','application/pdf','asdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\nasdnkas,dnbmvBN;ASDBMASDNA SBASNJakjsdbaksjdn .as;ASN,DKASBDAKJsndNASdbaksjdnA:;kasbfalknsfla nsjfa.sdkkkkknmksdjfbaksdjnkfb,asnmdfl akndfmaknsd.mgasd jkgnÃ±lasdnnkfakms.dnf anlsndfkajbkjaskdfn\n\n');
/*!40000 ALTER TABLE `document_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_history`
--

DROP TABLE IF EXISTS `document_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_history` (
  `id_document` int(11) NOT NULL DEFAULT '0',
  `event_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_user` varchar(100) NOT NULL DEFAULT '',
  `event_message_key` varchar(255) NOT NULL DEFAULT '',
  `document_state_key` varchar(100) DEFAULT NULL,
  `document_space` varchar(255) DEFAULT NULL,
  KEY `index_history_id_document` (`id_document`),
  KEY `index_history_event_user` (`event_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_history`
--

LOCK TABLES `document_history` WRITE;
/*!40000 ALTER TABLE `document_history` DISABLE KEYS */;
INSERT INTO `document_history` VALUES (1,'2017-04-29 17:22:52','admin','document.history.message.documentCreated','document.workflow.state.writing.name','Images'),(2,'2017-04-29 20:10:18','admin','document.history.message.documentCreated','document.workflow.state.writing.name','Fichiers PDF');
/*!40000 ALTER TABLE `document_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_indexer_action`
--

DROP TABLE IF EXISTS `document_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_indexer_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `id_record` int(11) NOT NULL DEFAULT '0',
  `id_task` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_indexer_action`
--

LOCK TABLES `document_indexer_action` WRITE;
/*!40000 ALTER TABLE `document_indexer_action` DISABLE KEYS */;
INSERT INTO `document_indexer_action` VALUES (1,1,1),(2,2,1),(3,2,3),(4,2,1),(5,2,3),(6,2,1),(7,2,3),(8,2,1),(9,2,3),(10,2,1);
/*!40000 ALTER TABLE `document_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_list_portlet`
--

DROP TABLE IF EXISTS `document_list_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_list_portlet` (
  `id_portlet` int(11) NOT NULL,
  `code_document_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_portlet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_list_portlet`
--

LOCK TABLES `document_list_portlet` WRITE;
/*!40000 ALTER TABLE `document_list_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_list_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_page_template`
--

DROP TABLE IF EXISTS `document_page_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_page_template` (
  `id_page_template_document` int(11) NOT NULL DEFAULT '0',
  `page_template_path` varchar(255) DEFAULT NULL,
  `picture_path` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_page_template_document`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_page_template`
--

LOCK TABLES `document_page_template` WRITE;
/*!40000 ALTER TABLE `document_page_template` DISABLE KEYS */;
INSERT INTO `document_page_template` VALUES (0,'/skin/plugins/document/document_content_service.html','images/admin/skin/plugins/document/page_templates/page_template_document0.png','DÃ©faut'),(1,'/skin/plugins/document/page_templates/page_template_document1.html','images/admin/skin/plugins/document/page_templates/page_template_document1.png','Pleine page'),(2,'/skin/plugins/document/page_templates/page_template_document2.html','images/admin/skin/plugins/document/page_templates/page_template_document2.png','Rubrique en-dessous');
/*!40000 ALTER TABLE `document_page_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_portlet`
--

DROP TABLE IF EXISTS `document_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_portlet` (
  `id_portlet` int(11) NOT NULL,
  `code_document_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_portlet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_portlet`
--

LOCK TABLES `document_portlet` WRITE;
/*!40000 ALTER TABLE `document_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_published`
--

DROP TABLE IF EXISTS `document_published`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_published` (
  `id_portlet` int(11) NOT NULL,
  `id_document` int(11) NOT NULL,
  `document_order` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `date_publishing` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_portlet`,`id_document`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_published`
--

LOCK TABLES `document_published` WRITE;
/*!40000 ALTER TABLE `document_published` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_published` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_rule`
--

DROP TABLE IF EXISTS `document_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_rule` (
  `id_rule` int(11) NOT NULL DEFAULT '0',
  `rule_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_rule`
--

LOCK TABLES `document_rule` WRITE;
/*!40000 ALTER TABLE `document_rule` DISABLE KEYS */;
INSERT INTO `document_rule` VALUES (1,'moveSpace'),(2,'moveSpace'),(3,'moveSpace'),(4,'moveSpace'),(6,'moveSpace');
/*!40000 ALTER TABLE `document_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_rule_attr`
--

DROP TABLE IF EXISTS `document_rule_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_rule_attr` (
  `id_rule` int(11) NOT NULL DEFAULT '0',
  `attr_name` varchar(255) NOT NULL DEFAULT '',
  `attr_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_rule`,`attr_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_rule_attr`
--

LOCK TABLES `document_rule_attr` WRITE;
/*!40000 ALTER TABLE `document_rule_attr` DISABLE KEYS */;
INSERT INTO `document_rule_attr` VALUES (1,'id_space_destination','3'),(1,'id_space_source','2'),(1,'id_state','2'),(2,'id_space_destination','4'),(2,'id_space_source','3'),(2,'id_state','3'),(3,'id_space_destination','2'),(3,'id_space_source','3'),(3,'id_state','4'),(4,'id_space_destination','15'),(4,'id_space_source','4'),(4,'id_state','5'),(6,'id_space_destination','4'),(6,'id_space_source','15'),(6,'id_state','3');
/*!40000 ALTER TABLE `document_rule_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_space`
--

DROP TABLE IF EXISTS `document_space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_space` (
  `id_space` int(11) NOT NULL DEFAULT '0',
  `id_parent` int(11) DEFAULT NULL,
  `document_space_name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `document_space_view` varchar(20) DEFAULT NULL,
  `id_space_icon` int(11) DEFAULT NULL,
  `space_order` int(11) DEFAULT NULL,
  `document_creation_allowed` int(11) DEFAULT NULL,
  `workgroup_key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_space`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_space`
--

LOCK TABLES `document_space` WRITE;
/*!40000 ALTER TABLE `document_space` DISABLE KEYS */;
INSERT INTO `document_space` VALUES (0,-1,'Racine des contenus','Racine des contenus','detail',1,0,NULL,NULL),(1,0,'Contenu Editorial','Contenu Editorial','detail',1,0,NULL,NULL),(2,1,'Espace de travail','Espace de travail','detail',10,0,1,NULL),(3,1,'Espace de validation','Espace de validation','detail',11,1,0,NULL),(4,1,'Espace de publication','Espace de publication','detail',12,2,0,NULL),(5,0,'Bibliotheque multimedia','Bibliotheque multimedia','detail',1,1,NULL,NULL),(6,5,'Images','Images','thumbnail',2,0,1,NULL),(7,0,'Fichiers en telechargement','Fichiers en telechargement','detail',1,2,NULL,NULL),(8,7,'Fichiers PDF','Fichiers PDF','detail',4,0,1,NULL),(14,0,'Acteurs locaux','Contient les fiches acteurs locaux','detail',5,3,1,NULL),(15,1,'Archives','Archives','detail',9,4,0,NULL),(16,5,'Fichiers son','Fichiers son','detail',8,1,1,NULL),(17,5,'Video','Video','detail',7,2,1,NULL),(18,5,'Icones et pictos','Icones et pictos','detail',2,NULL,1,NULL),(19,5,'BanniÃ¨res','banner','detail',2,NULL,1,NULL),(20,5,'Flash','Objets Flash','detail',6,NULL,1,NULL);
/*!40000 ALTER TABLE `document_space` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_space_action`
--

DROP TABLE IF EXISTS `document_space_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_space_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_space_action`
--

LOCK TABLES `document_space_action` WRITE;
/*!40000 ALTER TABLE `document_space_action` DISABLE KEYS */;
INSERT INTO `document_space_action` VALUES (1,'document.spaces.action.createSpace.name','document.spaces.action.createSpace.description','jsp/admin/plugins/document/CreateSpace.jsp','glyphicon glyphicon-plus-sign','CREATE'),(2,'document.spaces.action.deleteSpace.name','document.spaces.action.deleteSpace.description','jsp/admin/plugins/document/DeleteSpace.jsp','glyphicon glyphicon-trash','DELETE'),(3,'document.spaces.action.modifySpace.name','document.spaces.action.modifySpace.description','jsp/admin/plugins/document/ModifySpace.jsp','glyphicon glyphicon-pencil','MODIFY'),(4,'document.spaces.action.manageUsers.name','document.spaces.action.manageUsers.description','jsp/admin/plugins/document/ManageSpaceUsers.jsp','glyphicon glyphicon-user','USERS'),(5,'document.spaces.action.moveSpace.name','document.spaces.action.moveSpace.description','jsp/admin/plugins/document/MoveSpace.jsp','glyphicon glyphicon-move','MOVE');
/*!40000 ALTER TABLE `document_space_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_space_document_type`
--

DROP TABLE IF EXISTS `document_space_document_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_space_document_type` (
  `id_space` int(11) NOT NULL DEFAULT '0',
  `code_document_type` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_space`,`code_document_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_space_document_type`
--

LOCK TABLES `document_space_document_type` WRITE;
/*!40000 ALTER TABLE `document_space_document_type` DISABLE KEYS */;
INSERT INTO `document_space_document_type` VALUES (2,'article'),(2,'shortarticle'),(3,'article'),(3,'shortarticle'),(4,'article'),(4,'shortarticle'),(6,'image'),(8,'pdf'),(14,'actor'),(15,'article'),(15,'shortarticle'),(16,'sound'),(17,'video'),(18,'image'),(19,'banner'),(20,'flash');
/*!40000 ALTER TABLE `document_space_document_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_space_icon`
--

DROP TABLE IF EXISTS `document_space_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_space_icon` (
  `id_space_icon` int(11) NOT NULL DEFAULT '0',
  `icon_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_space_icon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_space_icon`
--

LOCK TABLES `document_space_icon` WRITE;
/*!40000 ALTER TABLE `document_space_icon` DISABLE KEYS */;
INSERT INTO `document_space_icon` VALUES (1,'images/admin/skin/plugins/document/spaces/space.png'),(2,'images/admin/skin/plugins/document/spaces/space_images.png'),(3,'images/admin/skin/plugins/document/spaces/space_download.png'),(4,'images/admin/skin/plugins/document/spaces/space_pdf.png'),(5,'images/admin/skin/plugins/document/spaces/space_users.png'),(6,'images/admin/skin/plugins/document/spaces/space_multimedia.png'),(7,'images/admin/skin/plugins/document/spaces/space_video.png'),(8,'images/admin/skin/plugins/document/spaces/space_sound.png'),(9,'images/admin/skin/plugins/document/spaces/space_archive.png'),(10,'images/admin/skin/plugins/document/spaces/space_working.png'),(11,'images/admin/skin/plugins/document/spaces/space_validation.png'),(12,'images/admin/skin/plugins/document/spaces/space_published.png');
/*!40000 ALTER TABLE `document_space_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_type`
--

DROP TABLE IF EXISTS `document_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_type` (
  `code_document_type` varchar(30) NOT NULL DEFAULT '',
  `document_type_name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `thumbnail_attr_id` int(11) DEFAULT NULL,
  `default_thumbnail_url` varchar(255) DEFAULT NULL,
  `admin_xsl` mediumblob,
  `content_service_xsl` mediumblob,
  `metadata_handler` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code_document_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_type`
--

LOCK TABLES `document_type` WRITE;
/*!40000 ALTER TABLE `document_type` DISABLE KEYS */;
INSERT INTO `document_type` VALUES ('actor','Fiche acteur','Fiche acteur local',41,'',NULL,'<?xml version=\"1.0\"?>\r\n\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"publication-date\" select=\"publication-date\" />\r\n	<!--\r\n	How to display the publication date :\r\n	<xsl:value-of select=\"$publication-date\" />\r\n	-->\r\n	\r\n    <xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n     <xsl:template match=\"actor\">\r\n        <p>\r\n            <xsl:choose>\r\n                <xsl:when test=\"actor-photo/file-resource!=\'\'\">\r\n                      <img src=\"document?id={actor-photo/file-resource/resource-document-id}&amp;id_attribute={actor-photo/file-resource/resource-attribute-id}\" align=\"left\" valign=\"middle\" hspace=\"20\" />\r\n                </xsl:when>\r\n                <xsl:otherwise>               \r\n               </xsl:otherwise>        \r\n            </xsl:choose>\r\n             <strong> <xsl:value-of select=\"actor-firstname\" /> &#160; <xsl:value-of select=\"actor-lastname\" /></strong>\r\n        </p>\r\n        <p>\r\n                 Fonction : <xsl:value-of select=\"actor-function\" />\r\n        </p>\r\n        <br />\r\n        <br />\r\n        <br />\r\n        <br />\r\n     </xsl:template>\r\n\r\n \r\n   <xsl:template match=\"file-resource\">\r\n        <xsl:choose>\r\n            <xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\" >\r\n                <img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" align=\"right\" />\r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n                <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n                    <img src=\"images/admin/skin/plugins/document/filetypes/file.png\" border=\"0\" />\r\n                </a>\r\n            </xsl:otherwise>        \r\n        </xsl:choose>\r\n    </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n \r\n\r\n','dublincore'),('article','Article','Article',0,'','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n    <xsl:output method=\"html\" indent=\"yes\"/>\r\n    \r\n    <xsl:template match=\"content\">\r\n        <xsl:apply-templates select=\"article\"/>\r\n    </xsl:template>\r\n    \r\n    <xsl:template match=\"article\">\r\n        <p>\r\n            <strong>#i18n{document.document_admin_default_xsl.labelTitle} :  </strong>\r\n            <xsl:value-of select=\"document-title\" />\r\n        </p>\r\n        <p>\r\n            <strong>#i18n{document.document_admin_default_xsl.labelSummary} :  </strong>\r\n            <xsl:value-of select=\"document-summary\" />\r\n        </p>\r\n        <p>\r\n            <strong>Fichier : </strong> \r\n         </p>\r\n         <p>   \r\n            <xsl:choose>\r\n                <xsl:when test=\"article-attachment/file-resource!=\'\'\">\r\n                       <xsl:apply-templates select=\"article-attachment/file-resource\" />\r\n                </xsl:when>\r\n                <xsl:otherwise>               \r\n               </xsl:otherwise>        \r\n            </xsl:choose>\r\n        </p>        \r\n	      <p>\r\n              <xsl:value-of disable-output-escaping=\"yes\" select=\"article-body\" /> \r\n	     </p>	\r\n        <br />\r\n        <br />\r\n        <br />\r\n        <br />\r\n     </xsl:template>\r\n\r\n \r\n   <xsl:template match=\"file-resource\">\r\n        <xsl:choose>\r\n            <xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\" >\r\n                <img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" align=\"right\" />\r\n            </xsl:when>                                                                           \r\n            <xsl:otherwise>\r\n                <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n                    <img src=\"images/local/skin/plugins/document/filetypes/file.png\" border=\"0\" />\r\n                </a>\r\n            </xsl:otherwise>        \r\n        </xsl:choose>\r\n    </xsl:template>\r\n</xsl:stylesheet>\r\n','<?xml version=\"1.0\"?>\r\n\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n    <xsl:param name=\"publication-date\" select=\"publication-date\" />\r\n    <!--\r\n   	How to display the publication date :\r\n   	<xsl:value-of select=\"$publication-date\" />\r\n   	-->\r\n    <xsl:output method=\"html\" indent=\"yes\"/>\r\n	\r\n    <xsl:template match=\"content\">\r\n        <xsl:apply-templates select=\"article\"/>\r\n    </xsl:template>\r\n    \r\n    <xsl:template match=\"article\">\r\n        <p>\r\n            <strong>\r\n                <xsl:value-of select=\"document-title\" />\r\n            </strong>\r\n        </p>\r\n        <p>\r\n            <xsl:choose>\r\n                <xsl:when test=\"article-attachment/file-resource!=\'\'\">\r\n                    <xsl:apply-templates select=\"article-attachment/file-resource\" />\r\n                </xsl:when>\r\n                <xsl:otherwise>               \r\n                </xsl:otherwise>        \r\n            </xsl:choose>\r\n        </p>    \r\n        <p>\r\n            <xsl:value-of disable-output-escaping=\"yes\" select=\"article-body\" /> \r\n        </p>	\r\n    </xsl:template>\r\n\r\n \r\n    <xsl:template match=\"file-resource\">\r\n        <xsl:choose>\r\n            <xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\" >\r\n                <img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" align=\"right\" />\r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n                <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n                    <img src=\"images/local/skin/plugins/document/filetypes/file.png\" border=\"0\" />\r\n                </a>\r\n            </xsl:otherwise>        \r\n        </xsl:choose>\r\n    </xsl:template>\r\n</xsl:stylesheet>','none'),('banner','BanniÃ¨res','BanniÃ¨res du site',0,'',NULL,NULL,'none'),('flash','Flash','Flash',0,'',NULL,'<?xml version=\"1.0\"?>\r\n\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"publication-date\" select=\"publication-date\" />\r\n	<!--\r\n	How to display the publication date :\r\n	<xsl:value-of select=\"$publication-date\" />\r\n	-->\r\n	\r\n	<xsl:output method=\"html\" indent=\"yes\"/>\r\n	<xsl:template match=\"flash\">\r\n		<h1><xsl:value-of select=\"document-title\" /></h1>\r\n		<p>\r\n			<xsl:value-of select=\"document-summary\" />\r\n		</p>\r\n		<p>\r\n			<xsl:choose>\r\n				<xsl:when test=\"(flash-object/file-resource/resource-content-type=\'application/x-shockwave-flash\')\" >\r\n					<object \r\n						data=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" \r\n						type=\"application/x-shockwave-flash\" \r\n						width=\"{flash-width}\" \r\n						height=\"{flash-height}\"\r\n						align=\"{flash-align}\"\r\n						classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"\r\n						codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0\"\r\n					>\r\n						<param name=\"Autostart\" value=\"{flash-autostart}\" />\r\n						<param name=\"Quality\" value=\"{flash-quality}\" />\r\n						<param name=\"Loop\" value=\"{flash-loop}\" />\r\n						<param name=\"menu\" value=\"{flash-menu}\" />\r\n						<param name=\"allowScriptAccess\" value=\"samedomain\" />\r\n						<param name=\"movie\" value=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" />\r\n						<EMBED \r\n							src=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" \r\n							type=\"application/x-shockwave-flash\"\r\n							width=\"{flash-width}\" \r\n							height=\"{flash-height}\"\r\n							align=\"{flash-align}\"\r\n							quality=\"{flash-quality}\"\r\n							loop=\"{flash-loop}\"\r\n							menu=\"{flash-menu}\"\r\n							allowScriptAccess=\"samedomain\"\r\n							pluginspace=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\">\r\n						</EMBED>\r\n					</object>\r\n				</xsl:when>\r\n			</xsl:choose>\r\n		</p>\r\n		<blockquote>\r\n			<xsl:value-of disable-output-escaping=\"yes\" select=\"flash-credits\" />\r\n		</blockquote>\r\n	</xsl:template>\r\n \r\n	<xsl:template match=\"file-resource\">\r\n    </xsl:template>\r\n</xsl:stylesheet>\r\n','none'),('image','Image','Image',43,'',NULL,'<?xml version=\"1.0\"?>\r\n\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"publication-date\" select=\"publication-date\" />\r\n	<!--\r\n	How to display the publication date :\r\n	<xsl:value-of select=\"$publication-date\" />\r\n	-->\r\n\r\n    <xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n     <xsl:template match=\"image\">\r\n	<p>\r\n	    <strong> <xsl:value-of select=\"document-title\" /></strong>\r\n	</p>\r\n\r\n            <xsl:choose>\r\n                <xsl:when test=\"image-file/file-resource!=\'\'\">\r\n                             <img src=\"document?id={image-file/file-resource/resource-document-id}&amp;id_attribute={image-file/file-resource/resource-attribute-id}\"  />\r\n                </xsl:when>\r\n                <xsl:otherwise>               \r\n               </xsl:otherwise>        \r\n            </xsl:choose>\r\n	<p>\r\n      	<xsl:value-of select=\"document-summary\" />\r\n	</p>\r\n	  <p>\r\n              <xsl:value-of disable-output-escaping=\"yes\" select=\"image-credits\" /> \r\n	</p>	\r\n        <br />\r\n        <br />\r\n        <br />\r\n        <br />\r\n\r\n     </xsl:template>\r\n\r\n \r\n   <xsl:template match=\"file-resource\">\r\n        <xsl:choose>\r\n            <xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\" >\r\n                <img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" align=\"right\" />\r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n                <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n                    <img src=\"images/admin/skin/plugins/document/filetypes/file.png\" border=\"0\" />\r\n                </a>\r\n            </xsl:otherwise>        \r\n        </xsl:choose>\r\n    </xsl:template>\r\n</xsl:stylesheet>','dublincore'),('pdf','PDF','Fichier PDF',0,'images/local/skin/plugins/document/filetypes/pdf.png',NULL,NULL,'dublincore'),('shortarticle','BrÃ¨ves','BrÃ¨ves',0,'',NULL,NULL,'none'),('sound','Enregistrement sonore','Enregistrement sonore',0,'',NULL,NULL,'dublincore'),('video','Video','Video',0,'',NULL,NULL,'dublincore');
/*!40000 ALTER TABLE `document_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_type_attr`
--

DROP TABLE IF EXISTS `document_type_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_type_attr` (
  `id_document_attr` int(11) NOT NULL DEFAULT '0',
  `code_document_type` varchar(30) DEFAULT NULL,
  `code_attr_type` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `document_type_attr_name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `attr_order` int(11) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `searchable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_document_attr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_type_attr`
--

LOCK TABLES `document_type_attr` WRITE;
/*!40000 ALTER TABLE `document_type_attr` DISABLE KEYS */;
INSERT INTO `document_type_attr` VALUES (8,'dossier','multiline','body','corps','Corps du dossier',0,1,1),(10,'article','url','url','Url','Url liÃ©e Ã  l\'article',2,0,0),(11,'article','file','attachment','Piece jointe','Piece jointe',4,0,0),(12,'article','richtext','body','Corps','Corps de l\'article',5,1,1),(30,'actor','text','firstname','Prenom','Prenom',1,1,1),(31,'actor','text','lastname','Nom','Nom',2,1,1),(32,'actor','multiline','function','Fontion','Fonction',3,0,0),(39,'video','multiline','comments','commentaires','Commentaires sur la video',2,1,1),(40,'video','file','file','Fichier video','Fichier video',3,1,0),(41,'actor','image','photo','Photo','Photo',4,0,0),(43,'image','image','file','Fichier','Fichier image',2,1,0),(44,'image','text','credits','Credits','Credits',3,1,0),(48,'pdf','file','file','Fichier','Fichier',2,1,1),(50,'sound','file','file','Fichier','Fichier son',2,1,0),(51,'sound','text','author','Auteur','Auteur',3,0,1),(52,'banner','image','image','Image','BanniÃ¨re en image',1,1,0),(53,'banner','text','description','Description','Description de la banniÃ¨re',2,1,0),(54,'flash','file','object','Objet','Objet Flash',1,1,0),(55,'flash','text','credits','CrÃ©dits','CrÃ©dits',2,1,1),(56,'flash','numerictext','height','Hauteur','Hauteur de l\'animation',3,1,0),(57,'flash','numerictext','width','Largeur','Largeur de l\'animation',4,1,0),(58,'flash','listbox','autostart','Autostart','DÃ©marrage automatique de l\'animation',5,1,0),(59,'flash','listbox','quality','QualitÃ©','QualitÃ© de l\'animation',6,1,0),(60,'flash','listbox','loop','Boucle','Jouer en boucle l\'animation',7,1,0),(61,'flash','listbox','align','Alignement','Alignement de l\'animation',8,1,0),(62,'flash','listbox','menu','Menu','Affichage du menu',9,1,0),(63,'image','richtext','htmltitle','HtmlTitle','Html title',3,1,1);
/*!40000 ALTER TABLE `document_type_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_type_attr_parameters`
--

DROP TABLE IF EXISTS `document_type_attr_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_type_attr_parameters` (
  `id_document_attr` int(11) NOT NULL DEFAULT '0',
  `parameter_name` varchar(255) NOT NULL DEFAULT '',
  `id_list_parameter` int(11) NOT NULL DEFAULT '0',
  `parameter_value` mediumtext,
  PRIMARY KEY (`id_document_attr`,`parameter_name`,`id_list_parameter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_type_attr_parameters`
--

LOCK TABLES `document_type_attr_parameters` WRITE;
/*!40000 ALTER TABLE `document_type_attr_parameters` DISABLE KEYS */;
INSERT INTO `document_type_attr_parameters` VALUES (30,'maxlength',1,'50'),(30,'size',1,'50'),(31,'maxlength',1,'50'),(31,'size',1,'50'),(44,'maxlength',1,'100'),(44,'size',1,'60'),(51,'maxlength',1,'60'),(51,'size',1,'60'),(53,'maxlength',0,'60'),(53,'size',0,'50'),(55,'maxlength',0,'60'),(55,'size',0,'50'),(56,'maxlength',0,'4'),(56,'size',0,'4'),(57,'maxlength',0,'4'),(57,'size',0,'4'),(58,'items',0,'true'),(58,'items',1,'false'),(58,'value',0,'true'),(59,'items',0,'low'),(59,'items',1,'high'),(59,'items',2,'autolow'),(59,'items',3,'autohigh'),(59,'items',4,'best'),(59,'value',0,'high'),(60,'items',0,'true'),(60,'items',1,'false'),(60,'value',0,'true'),(61,'items',0,'left'),(61,'items',1,'right'),(61,'items',2,'top'),(61,'items',3,'bottom'),(61,'value',0,'top'),(62,'items',0,'true'),(62,'items',1,'false'),(62,'value',0,'true');
/*!40000 ALTER TABLE `document_type_attr_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_type_attr_verify_by`
--

DROP TABLE IF EXISTS `document_type_attr_verify_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_type_attr_verify_by` (
  `id_document_attr` int(11) NOT NULL DEFAULT '0',
  `id_expression` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_document_attr`,`id_expression`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_type_attr_verify_by`
--

LOCK TABLES `document_type_attr_verify_by` WRITE;
/*!40000 ALTER TABLE `document_type_attr_verify_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_type_attr_verify_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_view`
--

DROP TABLE IF EXISTS `document_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_view` (
  `code_view` varchar(20) NOT NULL DEFAULT '',
  `name_key` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code_view`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_view`
--

LOCK TABLES `document_view` WRITE;
/*!40000 ALTER TABLE `document_view` DISABLE KEYS */;
INSERT INTO `document_view` VALUES ('detail','document.view.detail'),('thumbnail','document.view.thumbnail');
/*!40000 ALTER TABLE `document_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_workflow_action`
--

DROP TABLE IF EXISTS `document_workflow_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_workflow_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  `id_finish_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_workflow_action`
--

LOCK TABLES `document_workflow_action` WRITE;
/*!40000 ALTER TABLE `document_workflow_action` DISABLE KEYS */;
INSERT INTO `document_workflow_action` VALUES (1,'document.workflow.action.deleteDocument.name','document.workflow.action.deleteDocument.description','jsp/admin/plugins/document/DeleteDocument.jsp?','glyphicon glyphicon-trash','DELETE',NULL),(2,'document.workflow.action.modifyDocument.name','document.workflow.action.modifyDocument.description','jsp/admin/plugins/document/ModifyDocument.jsp?','glyphicon glyphicon-edit','MODIFY',NULL),(3,'document.workflow.action.submitForApproval.name','document.workflow.action.submitForApproval.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=2&amp;','glyphicon glyphicon-cog','SUBMIT',2),(4,'document.workflow.action.approveDocument.name','document.workflow.action.approveDocument.description','jsp/admin/plugins/document/DoValidateDocument.jsp?id_state=3&amp;','glyphicon glyphicon-ok-sign','VALIDATE',3),(5,'document.workflow.action.assignDocument.name','document.workflow.action.assignDocument.description','jsp/admin/plugins/document/ManageDocumentPublishing.jsp?','glyphicon glyphicon-globe','ASSIGN',NULL),(6,'document.workflow.action.rejectDocument.name','document.workflow.action.rejectDocument.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=4&amp;','glyphicon glyphicon-minus-sign','VALIDATE',4),(7,'document.workflow.action.submitAgain.name','document.workflow.action.submitAgain.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=2&amp;','glyphicon glyphicon-ok-sign','SUBMIT',2),(8,'document.workflow.action.archiveDocument.name','document.workflow.action.archiveDocument.description','jsp/admin/plugins/document/DoConfirmArchiveDocument.jsp?id_state=5&amp;','glyphicon glyphicon-download','ARCHIVE',5),(9,'document.workflow.action.changeDocument.name','document.workflow.action.changeDocument.description','jsp/admin/plugins/document/ModifyDocument.jsp?id_state=6&amp;','glyphicon glyphicon-edit','CHANGE',6),(10,'document.workflow.action.submitChanges.name','document.workflow.action.submitChanges.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=7&amp;','glyphicon glyphicon-cog','SUBMIT',7),(11,'document.workflow.action.rejectChanges.name','document.workflow.action.rejectChanges.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=6&amp;','glyphicon glyphicon-minus-sign','VALIDATE',6),(12,'document.workflow.action.approveChanges.name','document.workflow.action.approveChanges.description','jsp/admin/plugins/document/DoValidateDocument.jsp?id_state=3&amp;','glyphicon glyphicon-ok-sign','VALIDATE',3),(13,'document.workflow.action.unarchiveDocument.name','document.workflow.action.unarchiveDocument.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=3&amp;','glyphicon glyphicon-upload','ARCHIVE',3),(14,'document.workflow.action.history.name','document.workflow.action.history.description','jsp/admin/plugins/document/DocumentHistory.jsp?','glyphicon glyphicon-list','VIEW_HISTORY',NULL),(15,'document.workflow.action.previewDocument.name','document.workflow.action.previewDocument.description','jsp/admin/plugins/document/PreviewDocument.jsp?','glyphicon glyphicon-eye-open','VIEW',NULL),(16,'document.workflow.action.moveDocument.name','document.workflow.action.moveDocument.description','jsp/admin/plugins/document/MoveDocument.jsp?','glyphicon glyphicon-move','MOVE',NULL),(18,'document.workflow.action.publishDocument.name','document.workflow.action.publishDocument.description',NULL,'glyphicon glyphicon-globe','PUBLISH',NULL);
/*!40000 ALTER TABLE `document_workflow_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_workflow_state`
--

DROP TABLE IF EXISTS `document_workflow_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_workflow_state` (
  `id_state` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(255) DEFAULT NULL,
  `state_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_workflow_state`
--

LOCK TABLES `document_workflow_state` WRITE;
/*!40000 ALTER TABLE `document_workflow_state` DISABLE KEYS */;
INSERT INTO `document_workflow_state` VALUES (1,'document.workflow.state.writing.name','document.workflow.state.writing.description',1),(2,'document.workflow.state.waitingForApproval.name','document.workflow.state.waitingForApproval.description',2),(3,'document.workflow.state.approved.name','document.workflow.state.approved.description',3),(4,'document.workflow.state.rejected.name','document.workflow.state.rejected.description',4),(5,'document.workflow.state.archived.name','document.workflow.state.archived.description',5),(6,'document.workflow.state.inChange.name','document.workflow.state.inChange.description',6),(7,'document.workflow.state.waitingForChangesApproval.name','document.workflow.state.waitingForChangesApproval.name',7);
/*!40000 ALTER TABLE `document_workflow_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_workflow_transition`
--

DROP TABLE IF EXISTS `document_workflow_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_workflow_transition` (
  `id_state` int(11) NOT NULL DEFAULT '0',
  `id_action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`,`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_workflow_transition`
--

LOCK TABLES `document_workflow_transition` WRITE;
/*!40000 ALTER TABLE `document_workflow_transition` DISABLE KEYS */;
INSERT INTO `document_workflow_transition` VALUES (1,1),(1,2),(1,3),(1,14),(1,15),(1,16),(2,2),(2,4),(2,6),(2,14),(2,15),(2,16),(3,0),(3,5),(3,8),(3,9),(3,14),(3,15),(3,17),(3,18),(4,1),(4,2),(4,7),(4,14),(4,15),(4,16),(5,1),(5,13),(5,14),(5,15),(6,9),(6,10),(6,14),(6,15),(6,16),(7,11),(7,12),(7,14),(7,15),(7,16);
/*!40000 ALTER TABLE `document_workflow_transition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-15 18:27:32
