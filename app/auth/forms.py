from flask_wtf import FlaskForm
from wtforms import StringField,PasswordField,BooleanField,SubmitField
from wtforms.validators import DataRequired,Length,Email,Regexp,EqualTo
from wtforms import ValidationError
from ..models import User

class LoginForm(FlaskForm):
    email = StringField('Email',validators=[DataRequired(),Length(1,64),Email()])
    password = PasswordField('密码',validators=[DataRequired()])
    remember_me = BooleanField('保持登录')
    submit = SubmitField('登录')

class RegistrationForm(FlaskForm):
    email = StringField('Email',validators=[DataRequired(),Email(),Length(1,64)])
    username = StringField('用户名',validators=[DataRequired(),Length(1,64),Regexp('^[A-Za-z][A-Za-z0-9_]*$',0,'用户名只能包含字母，数字或下划线')])
    password = PasswordField('密码',validators=[DataRequired(),EqualTo ('password2',message='密码必须一致')])
    password2 = PasswordField('确认密码',validators=[DataRequired()])
    submit = SubmitField('注册')

    def validate_email(self,field):
        if User.query.filter_by(email = field.data.lower()).first():
            raise ValidationError('邮箱已经被注册')

    def validate_username(self,field):
        if User.query.filter_by(username = field.data).first():
            raise ValidationError('用户名已经存在')

class ChangePasswordForm(FlaskForm):
    old_password = PasswordField('旧密码',validators=[DataRequired()])
    new_password = PasswordField('新密码',validators=[DataRequired(), EqualTo('new_password2',message = '密码必须一致')])
    new_password2 = PasswordField('确认密码',validators=[DataRequired()])
    submit = SubmitField('修改')

class ResetPasswordRequestForm(FlaskForm):
    email = StringField('邮箱',validators=[DataRequired(),Email(),Length(1,64)])
    submit = SubmitField('发送认证邮件到您的邮箱')

class ResetPasswordForm(FlaskForm):
    new_password = PasswordField('新密码',validators=[DataRequired(), EqualTo('new_password2',message = '密码必须一致')])
    new_password2 = PasswordField('确认密码',validators=[DataRequired()])
    submit = SubmitField('修改')

class ChangeEmailForm(FlaskForm):
    email = StringField('邮箱',validators=[DataRequired(),Email(),Length(1,64)])
    password = PasswordField('密码',validators=[DataRequired()])
    submit = SubmitField('修改')
    
    def verify_email(self,field):
        if User.query.filter_by(email = field.data.lower()).first():
            raise ValidationError('邮箱已经存在')
