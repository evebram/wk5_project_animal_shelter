DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS owners;

CREATE TABLE owners(
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE animals(
  id SERIAL4 PRIMARY KEY,
  animal_name VARCHAR(255),
  breed VARCHAR(255),
  age INT4,
  ready_to_adopt BOOLEAN,
  admission_date VARCHAR(255),
  owner_id INT4 REFERENCES owners(id) ON DELETE CASCADE
);
