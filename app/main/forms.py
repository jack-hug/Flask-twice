from flask_wtf import FlaskForm
from wtforms import StringField,SubmitField,TextAreaField,BooleanField,SelectField
from wtforms.validators import DataRequired,Length,Email,Regexp,ValidationError
from ..models import Role,User

class PostForm(FlaskForm):
    body = TextAreaField('文章内容',validators=[DataRequired()])
    submit = SubmitField('提交')

class EditProfileForm(FlaskForm):
    name = StringField('真实姓名',validators=[Length(0,64)])
    location = StringField('位置',validators=[Length(0,64)])
    about_me = TextAreaField('关于我')
    submit = SubmitField('提交')

class EditProfileAdminForm(FlaskForm):
    email = StringField('邮箱',validators=[DataRequired(),Length(1,64),Email()])
    username = StringField('用户名',validators=[DataRequired(),Length(1,64),Regexp('^[A-Za-z][A-Za-z0-9_.]*$',0,'用户名必须以字母开头，并且只能包含字母，数字，点和下划线')])
    confirmed = BooleanField('确认')
    role = SelectField('角色',coerce = int)
    name = StringField('真实姓名',validators=[Length(0,64)])
    location = StringField('位置',validators=[Length(0,64)])
    about_me = TextAreaField('关于我')
    submit = SubmitField('提交')

    def __init__(self,user,*args,**kwargs):
        super(EditProfileAdminForm,self).__init__(*args,**kwargs)
        self.role.choices = [(role.id,role.name) for role in Role.query.order_by(Role.name).all()]
        self.user = user

    def validate_email(self,field):
        if field.data != self.user.email and User.query.filter_by(email = field.data).first():
            raise ValidationError('邮箱已经存在')

    def validate_username(self,field):
        if field.data != self.user.username and User.query.filter_by(username = field.data).first():
            raise ValidationError('用户名已经存在')