import xml.etree.ElementTree as ET
import psycopg2

DB_HOST="localhost"
DB_NAME="Data_mining"
DB_USER="postgres"
DB_PASS="root"

conn= psycopg2.connect(dbname=DB_NAME, user=DB_USER, password=DB_PASS, host=DB_HOST)

cur = conn.cursor()

#cur.execute( "CREATE TABLE data_mining ( Numar_inregistrare VARCHAR(100), Data_inregistrare DATE, Cif INT, denumire VARCHAR(300), An_rap INT,  Luna_rap INT, dataAng DATE, dataSf DATE )")


mytree = ET.parse('code.xml')
myroot = mytree.getroot()
for x in myroot[0]:
    mydict = x.attrib
    columns = ', '.join("" + str(x).replace('/', '_') + "" for x in mydict.keys())
    values = ', '.join("'" + str(x).replace('/', '_') + "'" for x in mydict.values())
    sql = "INSERT INTO %s ( %s ) VALUES ( %s );" % ('data_mining', columns, values)
    print(sql)
    cur.execute(sql)

conn.commit()

cur.close()

conn.close()
