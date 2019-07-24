FROM postgres
COPY create_data.sql /docker-entrypoint-initdb.d/
COPY select_data.sql /