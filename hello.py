from flask import Flask,render_template,request
from flask_script import Manager
from flask_bootstrap import Bootstrap
from flask_moment import Moment
from flask_wtf import FlaskForm
from wtforms import StringField,SubmitField
from wtforms.validators import Required
from datetime import datetime


app = Flask(__name__)
app.config['SECRET_KEY'] = 'This is jack-hug\'s KEY'
bootstrap = Bootstrap(app)
manager = Manager(app)
moment = Moment(app)
 
class NameForm(FlaskForm):
    name = StringField('What\'s your name?',validators=[Required()])
    submit = SubmitField('submit')

@app.route('/',methods = ['GET','POST'])
def index():
    form = NameForm()
    name = None
    if form.validate_on_submit():
        name = form.name.data
        form.name.data = ''
    return render_template('index.html',name = name,form = form,current_time = datetime.utcnow())

@app.route('/user/<name>')
def user(name):
    return render_template('user.html',name = name)

@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'),404

@app.errorhandler(500)
def internal_server_error(e):
    return render_template('500.html'),500

if __name__ == "__main__":
    manager.run()
