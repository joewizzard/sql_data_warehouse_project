/*
========================================================================
Create Database and Schemas
========================================================================
Script Purpose:
	This script is to create a new Database called 'DataWarehouse'. Before
	creating this database, the script checks if this database already 
	exists, and if it does, it drops it and recreates it. Additionally, this 
	script creates schemas, 'bronze', 'silver', and 'gold'.

Warning:
	Running this script will drop the entire 'DataWarehouse' database if 
	it exists. All data in the database will be permanently deleted. Proceed
	with caution and ensure you have proper backups before running this 
	script. 
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse
End;
-- Create the Database 'Data Warehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
