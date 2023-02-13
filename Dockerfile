FROM postgres 
# ENV POSTGRES_USER langteam
ENV POSTGRES_PASSWORD Aa1234
ENV POSTGRES_DB langex_general
COPY LangGeneral.sql /docker-entrypoint-initdb.d/