-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-02-21 16:12:03.116



-- foreign keys
ALTER TABLE items DROP FOREIGN KEY items_shelfs;
ALTER TABLE items_taxonomies DROP FOREIGN KEY items_taxonomies_items;
ALTER TABLE items_taxonomies DROP FOREIGN KEY taxonomies_items_taxonomies;
ALTER TABLE taxonomies DROP FOREIGN KEY taxonomies_terms;

-- tables
-- Table items
DROP TABLE items;
-- Table items_taxonomies
DROP TABLE items_taxonomies;
-- Table shelfs
DROP TABLE shelfs;
-- Table taxonomies
DROP TABLE taxonomies;
-- Table terms
DROP TABLE terms;



-- End of file.

