FROM mysql

ENV MYSQL_ROOT_PASSWORD="admin123"
ENV MYSQL_DATABASE="Restaurant"

ADD DatabaseSetup/restaurantDDL.sql /docker-entrypoint-initdb.d/restaurantDDL.sql
ADD DatabaseSetup/restaurantDML.sql /docker-entrypoint-initdb.d/restaurantDML.sql
RUN chmod -R 775 /docker-entrypoint-initdb.d