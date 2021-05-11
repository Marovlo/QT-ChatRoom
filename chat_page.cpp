#include "chat_page.h"
#include "ui_chat_page.h"
#define left Qt::AlignLeft
#define right Qt::AlignRight

chat_page::chat_page(QString username,QWidget *parent) :
    QDialog(parent),username(username),
    ui(new Ui::chat_page)
{
    ui->setupUi(this);
    this->grabKeyboard();
    this->setWindowTitle(username);
    socket=new QTcpSocket();
    timer=new QTimer();
    timer->start(5000);
    QString host="175.24.100.167";
    //host="localhost";
    connect(this->ui->pb_send,&QPushButton::clicked,this,&chat_page::pb_send_clicked);
    connect(socket,&QTcpSocket::readyRead,this,&chat_page::ready_read);
    connect(socket,&QTcpSocket::connected,this,&chat_page::connected);
    connect(this->ui->lw_contactors,&QListWidget::itemClicked,this,&chat_page::tb_contactors_clicked);
    connect(this->timer,&QTimer::timeout,this,&chat_page::get_onliner);
    this->setWindowFlags(Qt::Dialog | Qt::WindowMinMaxButtonsHint | Qt::WindowCloseButtonHint);
    this->ui->tb_chatlog->hide();
    this->ui->te_content->hide();
    this->ui->pb_send->hide();
    socket->connectToHost(host,9899);
    while (!socket->waitForConnected()) {
        socket->connectToHost(host,9899);
    }
    get_onliner();
    this->rival="";
    this->ui->lw_contactors->addItem("all");
    //this->ui->lw_contactors->item(0)->setBackground(QBrush(Qt::red));
}

void chat_page::get_onliner()
{
    socket->waitForBytesWritten();
    socket->write("*check*");
}

void chat_page::tb_contactors_clicked(QListWidgetItem* item)
{
    QStringList info=item->text().split(' ');
    QString name=info[0];
    this->ui->lb_rival->setText(name);
    this->rival=name;
    item->setText(name);
    item->setBackground(QBrush(Qt::white));
    this->ui->tb_chatlog->show();
    this->ui->te_content->show();
    this->ui->pb_send->show();
    if(rival=="all")
    {
        this->ui->tb_chatlog->clear();
        int all_size=all.size();
        for(int i=0;i<all_size;i++)
        {
            if(all[i].split(")$(")[0]==username)
                add_words(all[i],1);
            else
                add_words(all[i],0);
        }
    }
    else if(chat_log.find(rival)!=chat_log.end())
    {
        this->ui->tb_chatlog->clear();
        int rival_log_size=chat_log[rival].size();
        for(int i=0;i<rival_log_size;i++)
        {
            if(chat_log[rival][i].split(")$(")[0]==username)
                add_words(chat_log[rival][i],1);
            else
                add_words(chat_log[rival][i],0);
        }
    }
    else
    {
        this->ui->tb_chatlog->setText("");
    }
}

void chat_page::connected()
{
    socket->write(("change_socket "+username).toUtf8());
    socket->waitForBytesWritten();
}

void chat_page::ready_read()
{
    QString content=socket->readAll();
    //qDebug()<<content;
    QStringList check_list=content.split(" ");
    int check_size=check_list.size();
    if(check_size!=0&&check_list[0]=="check_list")
    {
        //this->ui->lw_contactors->clear();
        int all_item_count=this->ui->lw_contactors->count();
        QListWidgetItem* now_item;
        for(int i=1;i<all_item_count;i++)
        {
            int flag=0;
            now_item=this->ui->lw_contactors->item(i);
            for(int j=1;j<check_size;j++)
            {
                if(check_list[j]!="")
                {
                    //qDebug()<<now_item->text();
                    if(now_item->text().split(" ")[0]==check_list[j])
                    {
                        flag=1;
                        break;
                    }
                }
            }
            if(flag==0)
                this->ui->lw_contactors->removeItemWidget(now_item);
        }
        all_item_count=this->ui->lw_contactors->count();
        for(int i=1;i<check_size;i++)
        {
            if(check_list[i]!="")
            {
                int flag=0;
                for(int j=1;j<all_item_count;j++)
                {
                    now_item=this->ui->lw_contactors->item(j);
                    if(now_item->text().split(" ")[0]==check_list[i])
                    {
                        flag=1;
                        break;
                    }
                }
                if(flag==0)
                {
                    this->ui->lw_contactors->addItem(check_list[i]);
                }
            }
        }
    }
    else
    {
        QStringList info=content.split(")$(");
        content=info[0]+")$("+info[2];
        int all_item_num=this->ui->lw_contactors->count();
        if(info[1]=="all")
        {
            all.append(content);
            if(rival=="all")
            {
                add_words(content,0);
            }
            else
            {
                QListWidgetItem* now_item=this->ui->lw_contactors->item(0);
                QStringList origin=now_item->text().split(' ');
                if(origin.length()==2)
                    now_item->setText(origin[0]+" "+QString::number(origin[1].toInt()+1));
                else
                    now_item->setText(origin[0]+" "+QString::number(1));
                now_item->setBackground(QBrush(Qt::red));
            }
        }
        else
        {
            if(rival==info[0])
            {
                add_words(content,0);
            }
            else
            {
                QStringList origin;
                QListWidgetItem* now_item;
                for(int i=1;i<all_item_num;++i)
                {
                    now_item=this->ui->lw_contactors->item(i);
                    origin=now_item->text().split(' ');
                    if(info[0]==origin[0])
                    {
                        if(origin.length()==2)
                            now_item->setText(origin[0]+" "+QString::number(origin[1].toInt()+1));
                        else
                            now_item->setText(origin[0]+" "+QString::number(1));
                        now_item->setBackground(QBrush(Qt::red));
                        break;
                    }
                }
            }
            chat_log[info[0]].append(content);
        }
        if(this->windowState()==Qt::WindowMinimized)
        {
            QApplication::alert(this);
        }

    }
}



void chat_page::keyPressEvent(QKeyEvent *event)
{
    if(event->key()==Qt::Key_Enter||event->key()==Qt::Key_Return)
    {
        this->ui->pb_send->click();
    }
    else if(event->key()==Qt::Key_Left)
    {
        this->ui->te_content->moveCursor(QTextCursor::Left);
    }
    else if(event->key()==Qt::Key_Right)
    {
        this->ui->te_content->moveCursor(QTextCursor::Right);
    }
    else if(event->key()==Qt::Key_Up)
    {
        this->ui->te_content->moveCursor(QTextCursor::Up);
    }
    else if(event->key()==Qt::Key_Down)
    {
        this->ui->te_content->moveCursor(QTextCursor::Down);
    }
    else if(event->key()==Qt::Key_Backspace)
    {
        this->ui->te_content->textCursor().deletePreviousChar();
    }
    else if(event->key()==Qt::Key_Space)
    {
        this->ui->te_content->insertPlainText(" ");
    }
    else if(event->key()==Qt::Key_0)
    {
        this->ui->te_content->insertPlainText("0");
    }
    else if(event->key()==Qt::Key_1)
    {
        this->ui->te_content->insertPlainText("1");
    }
    else if(event->key()==Qt::Key_2)
    {
        this->ui->te_content->insertPlainText("0");
    }
    else if(event->key()==Qt::Key_3)
    {
        this->ui->te_content->insertPlainText("3");
    }
    else if(event->key()==Qt::Key_4)
    {
        this->ui->te_content->insertPlainText("4");
    }
    else if(event->key()==Qt::Key_5)
    {
        this->ui->te_content->insertPlainText("5");
    }
    else if(event->key()==Qt::Key_6)
    {
        this->ui->te_content->insertPlainText("6");
    }
    else if(event->key()==Qt::Key_7)
    {
        this->ui->te_content->insertPlainText("7");
    }
    else if(event->key()==Qt::Key_8)
    {
        this->ui->te_content->insertPlainText("8");
    }
    else if(event->key()==Qt::Key_9)
    {
        this->ui->te_content->insertPlainText("9");
    }
    {
        //    else
        //    {
        //        if(LOBYTE(GetKeyState(VK_CAPITAL)))
        //        {
        //            if(event->key()==Qt::Key_A)
        //            {
        //                this->ui->te_content->insertPlainText("A");
        //            }
        //            else if(event->key()==Qt::Key_B)
        //            {
        //                this->ui->te_content->insertPlainText("B");
        //            }
        //            else if(event->key()==Qt::Key_C)
        //            {
        //                this->ui->te_content->insertPlainText("C");
        //            }
        //            else if(event->key()==Qt::Key_D)
        //            {
        //                this->ui->te_content->insertPlainText("D");
        //            }
        //            else if(event->key()==Qt::Key_E)
        //            {
        //                this->ui->te_content->insertPlainText("E");
        //            }
        //            else if(event->key()==Qt::Key_F)
        //            {
        //                this->ui->te_content->insertPlainText("F");
        //            }
        //            else if(event->key()==Qt::Key_G)
        //            {
        //                this->ui->te_content->insertPlainText("G");
        //            }
        //            else if(event->key()==Qt::Key_H)
        //            {
        //                this->ui->te_content->insertPlainText("H");
        //            }
        //            else if(event->key()==Qt::Key_I)
        //            {
        //                this->ui->te_content->insertPlainText("I");
        //            }
        //            else if(event->key()==Qt::Key_J)
        //            {
        //                this->ui->te_content->insertPlainText("J");
        //            }
        //            else if(event->key()==Qt::Key_K)
        //            {
        //                this->ui->te_content->insertPlainText("K");
        //            }
        //            else if(event->key()==Qt::Key_L)
        //            {
        //                this->ui->te_content->insertPlainText("L");
        //            }
        //            else if(event->key()==Qt::Key_M)
        //            {
        //                this->ui->te_content->insertPlainText("M");
        //            }
        //            else if(event->key()==Qt::Key_N)
        //            {
        //                this->ui->te_content->insertPlainText("N");
        //            }
        //            else if(event->key()==Qt::Key_O)
        //            {
        //                this->ui->te_content->insertPlainText("O");
        //            }
        //            else if(event->key()==Qt::Key_P)
        //            {
        //                this->ui->te_content->insertPlainText("P");
        //            }
        //            else if(event->key()==Qt::Key_Q)
        //            {
        //                this->ui->te_content->insertPlainText("Q");
        //            }
        //            else if(event->key()==Qt::Key_R)
        //            {
        //                this->ui->te_content->insertPlainText("R");
        //            }
        //            else if(event->key()==Qt::Key_S)
        //            {
        //                this->ui->te_content->insertPlainText("S");
        //            }
        //            else if(event->key()==Qt::Key_T)
        //            {
        //                this->ui->te_content->insertPlainText("T");
        //            }
        //            else if(event->key()==Qt::Key_U)
        //            {
        //                this->ui->te_content->insertPlainText("U");
        //            }
        //            else if(event->key()==Qt::Key_V)
        //            {
        //                this->ui->te_content->insertPlainText("V");
        //            }
        //            else if(event->key()==Qt::Key_W)
        //            {
        //                this->ui->te_content->insertPlainText("W");
        //            }
        //            else if(event->key()==Qt::Key_X)
        //            {
        //                this->ui->te_content->insertPlainText("X");
        //            }
        //            else if(event->key()==Qt::Key_Y)
        //            {
        //                this->ui->te_content->insertPlainText("Y");
        //            }
        //            else if(event->key()==Qt::Key_Z)
        //            {
        //                this->ui->te_content->insertPlainText("Z");
        //            }
        //        }
        //        else
        //        {
        //            if(event->key()==Qt::Key_A)
        //            {
        //                this->ui->te_content->insertPlainText("a");
        //            }
        //            else if(event->key()==Qt::Key_B)
        //            {
        //                this->ui->te_content->insertPlainText("b");
        //            }
        //            else if(event->key()==Qt::Key_C)
        //            {
        //                this->ui->te_content->insertPlainText("c");
        //            }
        //            else if(event->key()==Qt::Key_D)
        //            {
        //                this->ui->te_content->insertPlainText("d");
        //            }
        //            else if(event->key()==Qt::Key_E)
        //            {
        //                this->ui->te_content->insertPlainText("e");
        //            }
        //            else if(event->key()==Qt::Key_F)
        //            {
        //                this->ui->te_content->insertPlainText("f");
        //            }
        //            else if(event->key()==Qt::Key_G)
        //            {
        //                this->ui->te_content->insertPlainText("g");
        //            }
        //            else if(event->key()==Qt::Key_H)
        //            {
        //                this->ui->te_content->insertPlainText("h");
        //            }
        //            else if(event->key()==Qt::Key_I)
        //            {
        //                this->ui->te_content->insertPlainText("i");
        //            }
        //            else if(event->key()==Qt::Key_J)
        //            {
        //                this->ui->te_content->insertPlainText("j");
        //            }
        //            else if(event->key()==Qt::Key_K)
        //            {
        //                this->ui->te_content->insertPlainText("k");
        //            }
        //            else if(event->key()==Qt::Key_L)
        //            {
        //                this->ui->te_content->insertPlainText("l");
        //            }
        //            else if(event->key()==Qt::Key_M)
        //            {
        //                this->ui->te_content->insertPlainText("m");
        //            }
        //            else if(event->key()==Qt::Key_N)
        //            {
        //                this->ui->te_content->insertPlainText("n");
        //            }
        //            else if(event->key()==Qt::Key_O)
        //            {
        //                this->ui->te_content->insertPlainText("o");
        //            }
        //            else if(event->key()==Qt::Key_P)
        //            {
        //                this->ui->te_content->insertPlainText("p");
        //            }
        //            else if(event->key()==Qt::Key_Q)
        //            {
        //                this->ui->te_content->insertPlainText("q");
        //            }
        //            else if(event->key()==Qt::Key_R)
        //            {
        //                this->ui->te_content->insertPlainText("r");
        //            }
        //            else if(event->key()==Qt::Key_S)
        //            {
        //                this->ui->te_content->insertPlainText("s");
        //            }
        //            else if(event->key()==Qt::Key_T)
        //            {
        //                this->ui->te_content->insertPlainText("t");
        //            }
        //            else if(event->key()==Qt::Key_U)
        //            {
        //                this->ui->te_content->insertPlainText("u");
        //            }
        //            else if(event->key()==Qt::Key_V)
        //            {
        //                this->ui->te_content->insertPlainText("v");
        //            }
        //            else if(event->key()==Qt::Key_W)
        //            {
        //                this->ui->te_content->insertPlainText("w");
        //            }
        //            else if(event->key()==Qt::Key_X)
        //            {
        //                this->ui->te_content->insertPlainText("x");
        //            }
        //            else if(event->key()==Qt::Key_Y)
        //            {
        //                this->ui->te_content->insertPlainText("y");
        //            }
        //            else if(event->key()==Qt::Key_Z)
        //            {
        //                this->ui->te_content->insertPlainText("z");
        //            }
        //        }
    }
}

void chat_page::pb_send_clicked()
{
    QString content=this->ui->te_content->toPlainText();
    if(content.length()==0)
    {
        this->ui->te_content->setPlaceholderText("不能发送空白消息");
        return;
    }
    else
    {
        this->ui->te_content->setPlaceholderText("");
    }
    QString local_content=username+")$("+content;
    if(rival=="all")
    {
        all.append(local_content);
    }
    else
    {
        chat_log[rival].append(local_content);
    }
    add_words(local_content,1);
    this->ui->te_content->clear();
    content=rival+")$("+content;
    socket->write(content.toUtf8());
    socket->waitForBytesWritten();

}

void chat_page::add_words(QString words,int align)
{
    QStringList info=words.split(")$(");
    QString name=info[0];
    this->ui->tb_chatlog->append(name+':');
    this->ui->tb_chatlog->setAlignment(align==0?left:right);
    QString slice;
    int line_len=20;
    int word_len=info[1].length();
    for(int i=0,sum=0;i<word_len;++i,++sum)
    {
        slice.append(info[1][i]);
        if(sum>=line_len)
        {
            sum=0;
            this->ui->tb_chatlog->append(slice);
            slice.clear();
        }
    }
    this->ui->tb_chatlog->append(slice);
}

chat_page::~chat_page()
{
    socket->close();
    delete socket;
    delete ui;
}
