# utils.py
import MySQLdb


DATABASE='rpgChar'
DB_USER = 'user'
DB_PASSWORD = 'password'
HOST = 'localhost'

def db_connect():
  return MySQLdb.connect(HOST, DB_USER, DB_PASSWORD, DATABASE, unix_socket='/tmp/mysql.sock')