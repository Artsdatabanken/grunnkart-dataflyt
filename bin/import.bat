python pgSqlExecutor.py ..\sql\drop.sql ..\config\postgis.json

python pgSqlExecutor.py ..\sql\schema.sql ..\config\postgis.json

for %%f in (..\fme\in\*.fmw) do fme.exe %%f

python pgSqlExecutor.py ..\sql\post-process.sql ..\config\postgis.json

python pgSqlExecutor.py ..\sql\vacuum.sql ..\config\postgis.json