from flask_wtf import FlaskForm
from wtforms import StringField,SubmitField,TextAreaField
from wtforms.validators import DataRequired,Length

class NameForm(FlaskForm):
    name = StringField('What\'s your name?',validators=[DataRequired()])
    submit = SubmitField('submit')

class EditProfileForm(FlaskForm):
    name = StringField('真实姓名',validators=[Length(0,64)])
    location = StringField('位置',validators=[Length(0,64)])
    about_me = TextAreaField('关于我')
    submit = SubmitField('提交')