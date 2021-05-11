#ifndef LOGIN_PAGE_H
#define LOGIN_PAGE_H

#include <QMainWindow>
#include<QTcpSocket>
#include<QMessageBox>
#include<QDebug>
#include<chat_page.h>
#include<QKeyEvent>

QT_BEGIN_NAMESPACE
namespace Ui { class login_page; }
QT_END_NAMESPACE

class login_page : public QMainWindow
{
    Q_OBJECT

public:
    login_page(QWidget *parent = nullptr);
    QTcpSocket *socket;
    QString user;
    void keyPressEvent(QKeyEvent *event)override;
    void connected();
    void read_socket();
    void pb_signin_clicked();
    void pb_signup_clicked();
    void reconnect();
    void action_prog_triggerd();
    void action_about_tirggerd();
    QString host;
    QTimer *recon;
    ~login_page();

private:
    Ui::login_page *ui;
};
#endif // LOGIN_PAGE_H
