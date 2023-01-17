-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: los_puche
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `products_sales_weekends`
--

DROP TABLE IF EXISTS `products_sales_weekends`;
/*!50001 DROP VIEW IF EXISTS `products_sales_weekends`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `products_sales_weekends` AS SELECT 
 1 AS `product`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `category_sales_weekends`
--

DROP TABLE IF EXISTS `category_sales_weekends`;
/*!50001 DROP VIEW IF EXISTS `category_sales_weekends`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `category_sales_weekends` AS SELECT 
 1 AS `category`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!50001 DROP VIEW IF EXISTS `sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales` AS SELECT 
 1 AS `dt`,
 1 AS `month`,
 1 AS `product`,
 1 AS `category`,
 1 AS `qty`,
 1 AS `cogs`,
 1 AS `total`,
 1 AS `profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_10_product_overtime`
--

DROP TABLE IF EXISTS `top_10_product_overtime`;
/*!50001 DROP VIEW IF EXISTS `top_10_product_overtime`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_10_product_overtime` AS SELECT 
 1 AS `date`,
 1 AS `product`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `monthly_rev`
--

DROP TABLE IF EXISTS `monthly_rev`;
/*!50001 DROP VIEW IF EXISTS `monthly_rev`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monthly_rev` AS SELECT 
 1 AS `month`,
 1 AS `total_rev`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_10_category_overtime`
--

DROP TABLE IF EXISTS `top_10_category_overtime`;
/*!50001 DROP VIEW IF EXISTS `top_10_category_overtime`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_10_category_overtime` AS SELECT 
 1 AS `date`,
 1 AS `category`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `products_sales_weekends`
--

/*!50001 DROP VIEW IF EXISTS `products_sales_weekends`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `products_sales_weekends` AS select `sales`.`product` AS `product`,sum(`sales`.`total`) AS `total_sales` from `sales` where ((dayofweek(`sales`.`dt`) like 1) or (dayofweek(`sales`.`dt`) like 7)) group by `sales`.`product` order by `total_sales` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `category_sales_weekends`
--

/*!50001 DROP VIEW IF EXISTS `category_sales_weekends`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `category_sales_weekends` AS select `sales`.`category` AS `category`,sum(`sales`.`total`) AS `total_sales` from `sales` where ((dayofweek(`sales`.`dt`) like 1) or (dayofweek(`sales`.`dt`) like 7)) group by `sales`.`category` order by `total_sales` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales`
--

/*!50001 DROP VIEW IF EXISTS `sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales` AS select `v`.`dt` AS `dt`,month(`v`.`dt`) AS `month`,`p`.`product` AS `product`,`p`.`category` AS `category`,`v`.`qty` AS `qty`,(`p`.`unit_cost` * `v`.`qty`) AS `cogs`,`v`.`total` AS `total`,(`v`.`total` - (`p`.`unit_cost` * `v`.`qty`)) AS `profit` from (`ventas` `v` join `productos` `p` on((`v`.`product_id` = `p`.`product_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_10_product_overtime`
--

/*!50001 DROP VIEW IF EXISTS `top_10_product_overtime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_10_product_overtime` AS select cast(`sales`.`dt` as date) AS `date`,`sales`.`product` AS `product`,sum(`sales`.`total`) AS `total` from `sales` where (`sales`.`product` in ('TRÁMITES (Tipear nombre del trámite) 1','Coca Cola 2250ml','Philip Morris 20 Común 20','Lucky Strike  Convertible Box 20','Marlboro  Común 20','Marlboro Fusión 20 Box','Quilmes Bajo Cero Retornable 1000ml','Chesterfield 20 Común ','Imperial Golden  473ml','Schneider  473ml')) group by `date`,`sales`.`product` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `monthly_rev`
--

/*!50001 DROP VIEW IF EXISTS `monthly_rev`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `monthly_rev` AS select `sales`.`month` AS `month`,round(sum(`sales`.`profit`),1) AS `total_rev` from `sales` where ((`sales`.`month` <> 6) and (`sales`.`month` <> 12)) group by `sales`.`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_10_category_overtime`
--

/*!50001 DROP VIEW IF EXISTS `top_10_category_overtime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_10_category_overtime` AS select cast(`sales`.`dt` as date) AS `date`,`sales`.`category` AS `category`,sum(`sales`.`total`) AS `total` from `sales` where (`sales`.`category` in ('Cigarrillo','Cerveza','Gaseosa','Fotocopia','Agua Saborizada','Vino','Golosina','Chocolate','Galletita','Jugo')) group by `date`,`sales`.`category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17 20:13:55
