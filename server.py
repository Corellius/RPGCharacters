from flask import Flask, render_template, request, redirect, url_for, session
import utils, MySQLdb

app = Flask(__name__)
app.secret_key = 'Zq4oA4Dqq3'

@app.route('/', methods=['GET', 'POST'])
def mainIndex():
  db = utils.db_connect()
  cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
  queryType = 'None'
  rows = []
  rows2 = []
	
  if request.method == 'POST':
    searchTerm = MySQLdb.escape_string(request.form['search'])
    query = "SELECT * FROM Star_Wars JOIN Appearance JOIN Ability_Scores JOIN Class_Levels ON Star_Wars.ID = Appearance.ID AND Star_Wars.ID = Ability_Scores.ID AND Star_Wars.ID = Class_Levels.ID WHERE Star_Wars.Name LIKE '" + searchTerm + "%'"
    query2 = "SELECT * FROM Force_Powers WHERE Name LIKE '" + searchTerm + "%'"
    queryType = 'yes'
    print (query)
    cur.execute(query)
    rows = cur.fetchall()
    cur.execute(query2)
    rows2 = cur.fetchall()
  return render_template('index.html', selectedMenu='Home', results=rows, power=rows2, queryType=queryType)

@app.route('/starwars', methods=['GET', 'POST'])
def starWars():
  db = utils.db_connect()
  cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
  query = "SELECT *, ((a.Con - 10) DIV 2)*(c.Soldier+c.Jedi+c.Scout+c.Scoundrel+c.Noble)+(c.Soldier*6)+(c.Jedi*6)+(c.Scout*5)+(c.Scoundrel*4)+(c.Noble*4) as HP, 10+(c.Jedi+c.Soldier+c.Scoundrel+c.Scout+c.Noble)+((a.Dex - 10) DIV 2) as Ref, 10+(c.Jedi+c.Soldier+c.Scoundrel+c.Scout+c.Noble)+((a.Con - 10) DIV 2) as Fort, 10+(c.Jedi+c.Soldier+c.Scoundrel+c.Scout+c.Noble)+((a.Wis - 10) DIV 2) as Will FROM Star_Wars JOIN Appearance JOIN Ability_Scores a JOIN Class_Levels c ON Star_Wars.ID = Appearance.ID AND Star_Wars.ID = a.ID AND Star_Wars.ID = c.ID"
  cur.execute(query)
  rows = cur.fetchall()
  queryType = 'None'
  rows2 = []
  if request.method == 'POST':
    searchTerm = MySQLdb.escape_string(request.form['search'])
    query2 = "SELECT * FROM Star_Wars JOIN Appearance JOIN Ability_Scores JOIN Class_Levels ON Star_Wars.ID = Appearance.ID AND Star_Wars.ID = Ability_Scores.ID AND Star_Wars.ID = Class_Levels.ID WHERE Star_Wars.Name LIKE '" + searchTerm + "%'"
    queryType = 'yes'
    cur.execute(query2)
    rows2 = cur.fetchall()
  #queryHP = "SELECT ((a.Con - 10) / 2)*(c.Soldier+c.Jedi+c.Scout+c.Scoundrel+c.Noble)+(c.Soldier*6)+(c.Jedi*6)+(c.Scout*5)+(c.Scoundrel*4)+(c.Noble*4) as HP FROM Ability_Scores a JOIN Class_Levels c ON Ability_Scores.ID = Class_Levels.ID"
  #cur.execute(queryHP)
  #rowsHP = cur.fetchall()
  return render_template('starwars.html', Star_Wars=rows, results=rows2, selectedMenu='Star Wars', queryType=queryType)
  
@app.route('/team')
def contact():
    return render_template('team.html', selectedMenu='Team')
  
@app.route('/something', methods=['GET', 'POST'])
def forcePowers():
  db = utils.db_connect()
  cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
  query = 'SELECT * from Force_Powers'
  cur.execute(query)
  rows = cur.fetchall()
  queryType = 'None'
  rows2 = []
  if request.method == 'POST':
    searchTerm = MySQLdb.escape_string(request.form['search'])
    query2 = "SELECT * FROM Force_Powers WHERE Name LIKE '" + searchTerm + "%'"
    queryType = 'yes'
    print (query2)
    cur.execute(query2)
    rows2 = cur.fetchall()
  return render_template('something.html', Force_Powers=rows, results=rows2, selectedMenu='Force Powers', queryType=queryType)
  
@app.route('/add')
def page():
    return render_template('page.html', selectedMenu='Add a Character')
  
@app.route('/confirm', methods=['POST'])
def report2():
  query = 'INSERT'
  query2 = 'INSERT'
  query3 = 'INSERT'
  query4 = 'INSERT'
  print query
  print query2
  print query3
  print query4
  db = utils.db_connect()
  cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
  query = "INSERT INTO Star_Wars (Name) VALUES ('"
  query += request.form['name'] + "')"
  query2 = "INSERT INTO Appearance (Species, Gender) VALUES ('"
  query2 += request.form['species'] + "', '" + request.form['gender'] + "')"
  query3 = "INSERT INTO Ability_Scores (Str, Dex, Con, Intl, Wis, Cha) VALUES ("
  query3 += request.form['str'] + ", " + request.form['dex'] + ", " + request.form['con'] + ", " + request.form['intl'] + ", " + request.form['wis'] + ", " + request.form['cha'] + ")"
  query4 = "INSERT INTO Class_Levels (Soldier, Jedi, Scoundrel, Scout, Noble) VALUES ("
  query4 += request.form['soldier'] + ", " + request.form['jedi'] + ", " + request.form['scoundrel'] + ", " + request.form['scout'] + ", " + request.form['noble'] + ")"
  
  print query
  print query2
  print query3
  print query4
  cur.execute(query);
  cur.execute(query2);
  cur.execute(query3);
  cur.execute(query4);
  db.commit()
  return redirect(url_for('starWars'))
  
@app.route('/login', methods=['GET', 'POST'])
def login():
    db = utils.db_connect()
    cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
      username = MySQLdb.escape_string(request.form['username'])
      passwd = request.form['passwd']
      query = "select * from users WHERE username = '%s' AND password = SHA2('%s', 224)" % (username, passwd) 
      cur.execute(query)
      db.commit()
      
      if cur.fetchone():
        session['logged_in'] = username
        return redirect(url_for('mainIndex'))
    return render_template('login.html', selectedMenu='Login')
  
@app.route('/logout')
def logout():
  session.pop('logged_in', None)
  return redirect(url_for('mainIndex'))
  
if __name__ == '__main__':
    app.debug=True
    app.run(host='0.0.0.0', port=3000)