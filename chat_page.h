#ifndef CHAT_PAGE_H
#define CHAT_PAGE_H

#include <QDialog>
#include<QTcpSocket>
#include<QDebug>
#include<QKeyEvent>
#include<QListWidgetItem>
#include<QTimer>
#include<unordered_map>
#include<QTextBrowser>
#include<QMessageBox>
using namespace std;

namespace Ui {
class chat_page;
}

class chat_page : public QDialog
{
    Q_OBJECT

public:
    explicit chat_page(QString username,QWidget *parent = nullptr);
    void pb_send_clicked();
    void add_words(QString words,int align);
    void ready_read();
    void keyPressEvent(QKeyEvent *event)override;
    void connected();
    void tb_contactors_clicked(QListWidgetItem* item);
    void get_onliner();
    unordered_map<QString,QStringList> chat_log;
    QStringList onliner;
    QStringList all;
    QTimer *timer;
    QString username;
    QString rival;
    QTcpSocket * socket;
    ~chat_page();

private:
    Ui::chat_page *ui;
};

#endif // CHAT_PAGE_H
