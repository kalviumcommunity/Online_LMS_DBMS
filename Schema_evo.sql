CREATE TABLE SchemaVersions (
  version_id INT PRIMARY KEY,
  version_name VARCHAR(50) NOT NULL,
  description TEXT,
  applied_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO SchemaVersions (version_id, version_name, description) VALUES (1 , '1.0', 'Initial schema setup');
