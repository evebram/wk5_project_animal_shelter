DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
  id SERIAL4 PRIMARY KEY,
  owner_name VARCHAR(255)
)

CREATE TABLE animals (
  id SERIAL4 PRIMARY KEY,
  animal_name VARCHAR(255),
  breed VARCHAR(255),
  ready_to_adopt BOOLEAN,
  admission_date INT4,
  owner_id REFERENCES owners(id) ON DELETE CASCADE
)
