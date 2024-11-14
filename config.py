import pymysql

def get_db_connection():
    return pymysql.connect(
        host='mysql://root:123456@junction.proxy.rlwy.net:35494/AMT',
        user='root',
        password='123456',  #Senha do MySQL
        db='AMT',
        cursorclass=pymysql.cursors.DictCursor
    )
