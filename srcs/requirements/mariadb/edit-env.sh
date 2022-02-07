sed -i -e "s/DB_PASSWORD/$DB_USER_PASSWORD/g" ./createdb.sql;
sed -i -e "s/DB_NAME/$DB_NAME/g" ./createdb.sql;
sed -i -e "s/DB_USER/$DB_USER/g" ./createdb.sql;
sed -i -e "s/DB_ROOT_PASSWORD/$DB_ROOT_PASSWORD/g" ./createdb.sql;
