from flask import Flask, render_template
#import utils, MySQLdb

app = Flask(__name__)

@app.route('/')
def mainIndex():
    return render_template('index.html', selectedMenu='Home')

@app.route('/starwars')
def anotherPage():
    return render_template('starwars.html', selectedMenu='Star Wars')
  
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