#rsync -v schema_hello_bi_star.xml ~/knowhowERP/saiku-server/tomcat/webapps/saiku/WEB-INF/classes/hello_bi/schema_hello_bi.xml
HOST=www@fit.bring.out.ba
ROOT_DIR=/home/www

rsync -v schema_hello_bi_star.xml $HOST:$ROOT_DIR/saiku-server/tomcat/webapps/saiku/WEB-INF/classes/hello_bi/schema_hello_bi.xml
rsync -v postgresql-8.4-702.jdbc3.jar $HOST:$ROOT_DIR/saiku-server/tomcat/webapps/saiku/WEB-INF/lib/postgresql-8.4-702.jdbc3.jar

