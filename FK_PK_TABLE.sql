CREATE TABLE temp_schema.pk_table (
      col_1 INTEGER,
      col_2 VARCHAR(10),
      PRIMARY KEY (col_1)
      );
      -- creating the foreign key table
	CREATE TABLE temp_schema.fk_table (
    col_1 VARCHAR(10),
    col_2 INTEGER,
    foreign key (col_2)
      REFERENCES temp_schema.pk_table (col_1)
);
SELECT * FROM temp_schema.pk_table;
SELECT * FROM temp_schema.FK_table;

