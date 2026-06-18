RESTORE DATABASE AdventureWorks2025
FROM DISK = '/var/opt/mssql/data/AdventureWorks2025.bak'
WITH MOVE 'AdventureWorks2025' TO '/var/opt/mssql/data/AdventureWorks2025.mdf',
MOVE 'AdventureWorks2025_log' TO '/var/opt/mssql/data/AdventureWorks2025_log.ldf';