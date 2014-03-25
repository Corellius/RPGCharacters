from flask import Flask, render_template, request, redirect, url_for, session
import utils, MySQLdb

app = Flask(__name__)
app.secret_key = 'Zq4oA4Dqq3'

@app.route('/')
def mainIndex():
    return render_template('index.html', selectedMenu='Home')

@app.route('/starwars')
def starWars():
  db = utils.db_connect()
  cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
  query = 'SELECT * from Star_Wars'
  cur.execute(query)
  rows = cur.fetchall()
  return render_template('starwars.html', Star_Wars=rows, selectedMenu='Star Wars')


  
@app.route('/team')
def contact():
    return render_template('team.html', selectedMenu='Team')
  
@app.route('/something')
def forcePowers():
  db = utils.db_connect()
  cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
  query = 'SELECT * from Force_Powers'
  cur.execute(query)
  rows = cur.fetchall()
  return render_template('something.html', Force_Powers=rows, selectedMenu='Force Powers')
  
@app.route('/page')
def page():
    return render_template('page.html', selectedMenu='Page')
  
@app.route('/login', methods=['GET', 'POST'])
def login():
    db = utils.db_connect()
    cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
      username = request.form['username']
      session['logged_in'] = username
      passwd = request.form['passwd']
      query = "select * from users WHERE username = '%s' AND password = SHA2('%s', 224)" % (username, passwd) 
      cur.execute(query)
      db.commit()
      
      if cur.fetchone():
        
        return redirect(url_for('mainIndex'))
    return render_template('login.html', selectedMenu='Login')
  
@app.route('/logout')
def logout():
  session.pop('logged_in', None)
  return redirect(url_for('mainIndex'))
  
if __name__ == '__main__':
    app.debug=True
    app.run(host='0.0.0.0', port=3000)