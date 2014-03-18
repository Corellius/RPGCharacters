from flask import Flask, render_template, session
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
def example():
    return render_template('something.html', selectedMenu='Something')
  
@app.route('/page')
def page():
    return render_template('page.html', selectedMenu='Page')
  
if __name__ == '__main__':
    app.debug=True
    app.run(host='0.0.0.0', port=3000)