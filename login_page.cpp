#include "login_page.h"
#include "ui_login_page.h"


login_page::login_page(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::login_page)
{
    ui->setupUi(this);
    recon=new QTimer(this);
    socket=new QTcpSocket(this);
    host="175.24.100.167";
    //host="localhost";
    socket->connectToHost(host,9899);
    this->setWindowFlags(Qt::Dialog | Qt::WindowMinMaxButtonsHint | Qt::WindowCloseButtonHint);
    connect(this->ui->pb_signin,&QPushButton::clicked,this,&login_page::pb_signin_clicked);
    connect(this->ui->pb_signup,&QPushButton::clicked,this,&login_page::pb_signup_clicked);
    connect(socket,&QTcpSocket::connected,this,&login_page::connected);
    connect(socket,&QTcpSocket::readyRead,this,&login_page::read_socket);
    connect(this->recon,&QTimer::timeout,this,&login_page::reconnect);
    connect(this->ui->action_prog,&QAction::triggered,this,&login_page::action_prog_triggerd);
    connect(this->ui->actiona_about,&QAction::triggered,this,&login_page::action_about_tirggerd);
    socket->setSocketOption(socket->KeepAliveOption,true);
    QCoreApplication::processEvents(QEventLoop::AllEvents);
    this->recon->setInterval(5000);
    if(!socket->isValid())
        recon->start();
}

void login_page::action_about_tirggerd()
{
    QMessageBox::information(this,"info","作者：Marovlo","OK");
}

void login_page::action_prog_triggerd()
{
    QMessageBox::information(this,"程序说明","本程序为一公开聊天室\n在该聊天室中您可与每个在线的人在同一个大聊天室中聊天\n"
                                    "也可以与每个在线的人单独聊天\n"
                                    "注意聊天对话框没法输入英文，可以在中文模式下通过敲击回车输入英文。","OK");
}

void login_page::reconnect()
{
    qDebug()<<socket->isValid();
    if(!socket->isValid())
    {
        socket->connectToHost(host,9899);
    }
    else
    {
        recon->stop();
    }
}

void login_page::keyPressEvent(QKeyEvent *event)
{
    if(event->key()==Qt::Key_Enter||event->key()==Qt::Key_Return)
    {
        this->ui->pb_signin->click();
    }
}

void login_page::read_socket()
{
    QString res=socket->readAll();
    int code=res.toInt();
    if(code==2||code==3)QMessageBox::warning(this,"登录失败","请检查用户名和密码","OK");
    else if(code==4)QMessageBox::information(this,"注册成功","注册成功，请牢记您的用户名和密码","OK");
    else if(code==5)QMessageBox::warning(this,"注册失败","用户名已被使用，请更换","OK");
    else if(code==6)QMessageBox::warning(this,"登录失败","该用户已经登录，不能重复登录","OK");
    if(code==1||code==4)
    {
        chat_page c(user);
        //qDebug()<<user;
        disconnect(socket,&QTcpSocket::connected,this,&login_page::connected);
        disconnect(socket,&QTcpSocket::readyRead,this,&login_page::read_socket);
        this->close();
        socket->disconnectFromHost();
        c.exec();
    }
}

void login_page::connected()
{
    this->ui->pb_signin->setEnabled(true);
    this->ui->pb_signup->setEnabled(true);
}

void login_page::pb_signin_clicked()
{
    QString username,password,info;
    username=this->ui->le_username->text();
    password=this->ui->le_password->text();
    user=username;
    info="signin "+username+" "+password;
    socket->write(info.toUtf8());
    socket->waitForBytesWritten();
    return;
}

void login_page::pb_signup_clicked()
{
    QString username,password,info;
    username=this->ui->le_username->text();
    for(auto letter:username)
    {
        if(letter==' '||letter=='$'||letter==')'||letter=='(')
        {
            QMessageBox::warning(this,"error","用户名中含有非法字符$)(或空格，请重新输入","OK");
            return;
        }
    }
    password=this->ui->le_password->text();
    user=username;
    info="signup "+username+" "+password;
    socket->write(info.toUtf8());
    socket->waitForBytesWritten();
    return;
}

login_page::~login_page()
{
    socket->close();
    delete socket;
    delete ui;
}

