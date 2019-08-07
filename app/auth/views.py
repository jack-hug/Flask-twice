from flask import render_template,url_for,request,flash,redirect
from flask_login import login_user,login_required,logout_user,current_user
from ..models import User
from . import auth
from .forms import LoginForm,RegistrationForm,ChangePasswordForm,ResetPasswordForm,ResetPasswordRequestForm,ChangeEmailForm
from .. import db
from ..email import send_mail

#登录路由
@auth.route('/login',methods = ['GET','POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(email = form.email.data.lower()).first()
        if user is not None and user.verify_password(form.password.data):
            login_user(user, form.remember_me.data)
            flash('登录成功')
            #根据github上的flasky文档修改内容
            next = request.args.get('next')
            if next is None or not next.startswith('/'):
                next = url_for('main.index')
            return redirect(next)
            #原书上内容// return redirect(request.args.get('next') or url_for('main.index'))
        flash('无效的用户名或密码')
    return render_template('auth/login.html',form = form)

#注册路由
@auth.route('/register', methods = ['GET','POST'])
def register():
    form = RegistrationForm()
    if form.validate_on_submit():
        user = User(email = form.email.data, username = form.username.data, password = form.password.data)
        db.session.add(user)
        db.session.commit()
        token = user.generate_confirmation_token()
        send_mail(user.email,'确认你的注册帐号','auth/email/confirm',user = user, token = token)
        flash('一封邮件已经发送到你的注册邮箱，请确认后再进行登录')
        return redirect(url_for('main.index'))
    return render_template('auth/register.html',form = form)

#确认帐户路由
@auth.route('/confirm/<token>')
@login_required
def confirm(token):
    if current_user.confirmed:
        return redirect(url_for('main.index'))
    if current_user.confirm(token):
        db.session.commit()
        flash('邮箱已确认，谢谢!')
    else:
        flash('这是一个无效链接或者链接已经过期')
    return redirect(url_for('main.index'))

#过滤未确认邮箱的用户
@auth.before_app_request
def before_request():
    if current_user.is_authenticated and not current_user.confirmed and request.endpoint[:5] != 'auth.' and request.endpoint !='static':
        return redirect(url_for('auth.unconfirmed'))

#转到未确认帐户模板
@auth.route('/unconfirmed')
def unconfirmed():
    if current_user.is_anonymous or current_user.confirmed:
        return redirect(url_for('main.index'))
    return render_template('auth/unconfirmed.html')

#重新发送电子邮件
@auth.route('/confirm')
@login_required
def resend_confirmation():
    token = current_user.generate_confirmation_token()
    send_mail(current_user.email,'确认你的注册帐号','auth/email/confirm',user = current_user, token = token)
    flash('一封新的邮件已经发送到你的注册邮箱，请确认后再进行登录')
    return redirect(url_for('main.index'))

#登出路由
@auth.route('/logout')
@login_required
def logout():
    logout_user()
    flash('你已经退出登录...')
    return redirect(url_for('main.index'))

#修改密码
@auth.route('/change-password', methods = ['GET','POST'])
@login_required
def change_password():
    form = ChangePasswordForm()
    if form.validate_on_submit():
        if current_user.verify_password(form.old_password.data):
            if form.old_password.data == form.new_password.data:
                flash('新密码不能和旧密码相同')
                return redirect(url_for('auth.change_password'))
            current_user.password = form.new_password.data
            db.session.add(current_user)
            db.session.commit()
            flash('你的密码已经修改')
            return redirect(url_for('main.index'))
        else:
            flash('原密码错误')
    return render_template('auth/change_password.html',form = form)

#重设密码请求
@auth.route('/reset',methods = ['GET','POST'])
def reset_password_request():
    if not current_user.is_anonymous:
        return redirect(url_for('main.index'))
    form = ResetPasswordRequestForm()
    if form.validate_on_submit():
        user = User.query.filter_by(email = form.email.data.lower()).first()
        if user:
            token = user.generate_reset_token()
            send_mail(user.email,'重设你的密码','auth/email/reset_password',user = user,token = token)
        flash('一封邮箱已经发送到您的邮箱，请根据邮箱内容进行密码修改')
        return redirect(url_for('auth.login'))
    return render_template('auth/reset_password.html',form = form)

#重设密码
@auth.route('/reset/<token>',methods = ['GET','POST'])
def reset_password(token):
    if not current_user.is_anonymous:
        return redirect(url_for('main.index'))
    form = ResetPasswordForm()
    if form.validate_on_submit():
        if User.reset_passwrod(token,form.new_password.data):
            db.session.commit()
            flash('你的密码已经重设')
            return redirect(url_for('auth.login'))
        else:
            return redirect(url_for('main.index'))
    return render_template('auth/reset_password.html',form = form)

        