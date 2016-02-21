-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-02-21 16:12:03.116




-- tables
-- Table items
CREATE TABLE items (
    id int  NOT NULL,
    name varchar(255)  NOT NULL,
    weight int  NOT NULL,
    qty int  NOT NULL,
    shelf_id int  NOT NULL,
    CONSTRAINT items_pk PRIMARY KEY (id)
);

CREATE INDEX items_idx_1 ON items (id);


-- Table items_taxonomies
CREATE TABLE items_taxonomies (
    id int  NOT NULL,
    id_item int  NOT NULL,
    id_taxonomy int  NOT NULL,
    CONSTRAINT items_taxonomies_pk PRIMARY KEY (id)
);

CREATE INDEX items_taxonomies_idx_1 ON items_taxonomies (id_item);


-- Table shelfs
CREATE TABLE shelfs (
    id int  NOT NULL,
    name varchar(255)  NOT NULL,
    CONSTRAINT shelfs_pk PRIMARY KEY (id)
);

CREATE INDEX shelfs_idx_1 ON shelfs (id);


-- Table taxonomies
CREATE TABLE taxonomies (
    id int  NOT NULL,
    id_term int  NOT NULL,
    terms_id int  NOT NULL,
    CONSTRAINT taxonomies_pk PRIMARY KEY (id)
);

CREATE INDEX taxonomies_idx_1 ON taxonomies (id);


-- Table terms
CREATE TABLE terms (
    name varchar(255)  NOT NULL,
    id int  NOT NULL,
    CONSTRAINT terms_pk PRIMARY KEY (id)
);

CREATE INDEX terms_idx_1 ON terms (id);






-- foreign keys
-- Reference:  items_shelfs (table: items)

ALTER TABLE items ADD CONSTRAINT items_shelfs FOREIGN KEY items_shelfs (shelf_id)
    REFERENCES shelfs (id);
-- Reference:  items_taxonomies_items (table: items_taxonomies)

ALTER TABLE items_taxonomies ADD CONSTRAINT items_taxonomies_items FOREIGN KEY items_taxonomies_items (id_item)
    REFERENCES items (id);
-- Reference:  taxonomies_items_taxonomies (table: items_taxonomies)

ALTER TABLE items_taxonomies ADD CONSTRAINT taxonomies_items_taxonomies FOREIGN KEY taxonomies_items_taxonomies (id_taxonomy)
    REFERENCES taxonomies (id);
-- Reference:  taxonomies_terms (table: taxonomies)

ALTER TABLE taxonomies ADD CONSTRAINT taxonomies_terms FOREIGN KEY taxonomies_terms (terms_id)
    REFERENCES terms (id);



-- End of file.

