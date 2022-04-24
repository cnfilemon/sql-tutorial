DROP TABLE cities;
DROP TABLE users;
DROP TABLE addresses;

-- ALTER TABLE users
-- ADD CONSTRAINT users_address_id_fkey FOREIGN KEY address_id REFERENCES addresses (id) ON DELETE CASCASE ON UPDATE RESTRICT;