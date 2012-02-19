#rsync -v schema_hello_bi_star.xml ~/knowhowERP/saiku-server/tomcat/webapps/saiku/WEB-INF/classes/hello_bi/schema_hello_bi.xml
HOST=www@fit.bring.out.ba
ROOT_DIR=/home/www

#rsync -v postgresql-8.4-702.jdbc3.jar $HOST:$ROOT_DIR/saiku-server/tomcat/webapps/saiku/WEB-INF/lib/postgresql-8.4-702.jdbc3.jar

#rsync -v schema_hello_bi_star.xml $HOST:$ROOT_DIR/saiku-server/tomcat/webapps/saiku/WEB-INF/classes/hello_bi/schema_hello_bi.xml


SCHEMA=fit_olap_2.xml
rsync -v schema_hello_bi_star.xml $HOST:$ROOT_DIR/saiku-server/tomcat/webapps/saiku/WEB-INF/classes/fit_olap/$SCHEMA


DS=fit_olap_2
rsync -v saiku-datasource_$DS $HOST:$ROOT_DIR/saiku-server/tomcat/webapps/saiku/WEB-INF/classes/saiku-datasources/$DS


