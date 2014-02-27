from flask import Flask, render_template
#import utils, MySQLdb

app = Flask(__name__)

@app.route('/index')
def mainIndex():
    return render_template('index.html', selectedMenu='Home')

@app.route('/another_page')
def anotherPage():
    return render_template('another_page.html', selectedMenu='Another Page')
  
@app.route('/contact')
def contact():
    return render_template('contact.html', selectedMenu='Contact')
  
@app.route('/examples')
def example():
    return render_template('examples.html', selectedMenu='Examples')
  
@app.route('/page')
def page():
    return render_template('page.html', selectedMenu='Page')
  
if __name__ == '__main__':
    app.debug=True
    app.run(host='0.0.0.0', port=3000)