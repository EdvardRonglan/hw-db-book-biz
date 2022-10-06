USE `book_business`;


-- POPULATE TABLES

INSERT INTO `Editors` VALUES(1,'Sam');
INSERT INTO `Editors` VALUES(2,'Roger');

INSERT INTO `Authors` VALUES(1,'Maja');
INSERT INTO `Authors` VALUES(2,'Michael');

INSERT INTO `Publishers` VALUES(1,'Roger');
INSERT INTO `Publishers` VALUES(2,'Edvard');

INSERT INTO `Customers` VALUES(1,'Andreas');
INSERT INTO `Customers` VALUES(2,'Jose');

INSERT INTO `Books` VALUES(1,'Book1', 1,'Fantasy');
INSERT INTO `Books` VALUES(2,'Book2', 2,'Biography');

INSERT INTO `Orders` VALUES(1,1);
INSERT INTO `Orders` VALUES(2,2);

INSERT INTO `Books_editors_tab` VALUES(1,1,1);
INSERT INTO `Books_editors_tab` VALUES(2,2,2);

INSERT INTO `Books_authors_tab` VALUES(1,1,1,50);
INSERT INTO `Books_authors_tab` VALUES(2,2,1,50);
INSERT INTO `Books_authors_tab` VALUES(3,2,2,50);

INSERT INTO `Books_orders_tab` VALUES(1,1,1);
INSERT INTO `Books_orders_tab` VALUES(2,1,2);