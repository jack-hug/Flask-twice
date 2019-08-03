from flask import render_template,session,redirect,url_for,current_app
from datetime import datetime
from config import config
from . import main
from .forms import NameForm
from .. import db
from ..models import User
from ..email import send_mail

@main.route('/',methods = ['GET','POST'])
def index():
    form = NameForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username = form.name.data).first()
        if user is None:
            user = User(username = form.name.data)
            db.session.add(user)
            db.session.commit()
            session['known'] = False
            if current_app.config['FLASKY_ADMIN']:
                send_mail(current_app.config['FLASKY_ADMIN'],"一个小萌新",'mail/new_user',user = user)
        else:
            session['known'] = True
        # old_name = session.get('name')
        # if old_name is not None and old_name != form.name.data:
        #     flash('Seems you have changed your name!')
        session['name'] = form.name.data
        form.name.data = ''
        return redirect(url_for('.index'))
    return render_template('index.html',form = form,name = session.get('name'),known = session.get('known',False),current_time = datetime.utcnow())
