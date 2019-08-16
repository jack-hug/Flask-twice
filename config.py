import os,mysql.connector

class Config():
    SECRET_KEY = 'This is your KEY' or os.environ.get('SECRET_KEY') 
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    FLASKY_MAIL_SUBJECT_PREFIX = '[Flasky_晃]'
    FLASKY_MAIL_SENDER = 'Flasky Admin <46361381@qq.com>'
    FLASKY_ADMIN = os.environ.get('FLASKY_ADMIN') or '15078843336@163.com'
    FLASKY_POSTS_PER_PAGE = 10

    @staticmethod
    def init_app(app):
        pass

class Development(Config):
    #smtp服务器连接
    DEBUG = True
    MAIL_SERVER = 'smtp.qq.com'
    MAIL_PORT = '587'
    MAIL_USE_TLS = True
    MAIL_USERNAME = os.environ.get('MAIL_USERNAME') or '46361381@qq.com'
    MAIL_PASSWORD = os.environ.get('MAIL_PASSWORD') or 'hxbomrvbrqzabifg'
    #数据库连接
    SQLALCHEMY_DATABASE_URI = 'mysql+mysqlconnector://root:HUANGzeng123@localhost/flask-twice_dev'

class TestingConfig(Config):
    TESTING = True
    SQLALCHEMY_DATABASE_URI = 'mysql+mysqlconnector://root:HUANGzeng123@localhost/flask-twice_test'

class ProductionConfig(Config):
    SQLALCHEMY_DATABASE_URI = 'mysql+mysqlconnector://root:HUANGzeng123@localhost/flask-twice'

config = {
    'development':Development,
    'testing':TestingConfig,
    'production':ProductionConfig,

    'default':Development
}
