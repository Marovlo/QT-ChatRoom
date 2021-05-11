/********************************************************************************
** Form generated from reading UI file 'chat_page.ui'
**
** Created by: Qt User Interface Compiler version 6.0.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CHAT_PAGE_H
#define UI_CHAT_PAGE_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTextBrowser>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_chat_page
{
public:
    QHBoxLayout *horizontalLayout_2;
    QListWidget *lw_contactors;
    QVBoxLayout *verticalLayout;
    QLabel *lb_rival;
    QTextBrowser *tb_chatlog;
    QTextEdit *te_content;
    QHBoxLayout *horizontalLayout;
    QSpacerItem *horizontalSpacer;
    QPushButton *pb_send;

    void setupUi(QDialog *chat_page)
    {
        if (chat_page->objectName().isEmpty())
            chat_page->setObjectName(QString::fromUtf8("chat_page"));
        chat_page->resize(668, 612);
        horizontalLayout_2 = new QHBoxLayout(chat_page);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        lw_contactors = new QListWidget(chat_page);
        lw_contactors->setObjectName(QString::fromUtf8("lw_contactors"));
        QFont font;
        font.setFamily(QString::fromUtf8("\347\255\211\347\272\277"));
        font.setPointSize(14);
        lw_contactors->setFont(font);

        horizontalLayout_2->addWidget(lw_contactors);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        lb_rival = new QLabel(chat_page);
        lb_rival->setObjectName(QString::fromUtf8("lb_rival"));
        QFont font1;
        font1.setFamily(QString::fromUtf8("\347\255\211\347\272\277"));
        font1.setPointSize(18);
        lb_rival->setFont(font1);
        lb_rival->setAlignment(Qt::AlignCenter);

        verticalLayout->addWidget(lb_rival);

        tb_chatlog = new QTextBrowser(chat_page);
        tb_chatlog->setObjectName(QString::fromUtf8("tb_chatlog"));
        QFont font2;
        font2.setFamily(QString::fromUtf8("\347\255\211\347\272\277"));
        font2.setPointSize(10);
        tb_chatlog->setFont(font2);

        verticalLayout->addWidget(tb_chatlog);

        te_content = new QTextEdit(chat_page);
        te_content->setObjectName(QString::fromUtf8("te_content"));
        te_content->setFont(font2);

        verticalLayout->addWidget(te_content);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);

        pb_send = new QPushButton(chat_page);
        pb_send->setObjectName(QString::fromUtf8("pb_send"));
        QFont font3;
        font3.setFamily(QString::fromUtf8("\347\255\211\347\272\277"));
        font3.setPointSize(12);
        pb_send->setFont(font3);

        horizontalLayout->addWidget(pb_send);

        horizontalLayout->setStretch(0, 10);
        horizontalLayout->setStretch(1, 1);

        verticalLayout->addLayout(horizontalLayout);

        verticalLayout->setStretch(0, 1);
        verticalLayout->setStretch(1, 10);
        verticalLayout->setStretch(2, 3);
        verticalLayout->setStretch(3, 1);

        horizontalLayout_2->addLayout(verticalLayout);

        horizontalLayout_2->setStretch(0, 2);
        horizontalLayout_2->setStretch(1, 10);

        retranslateUi(chat_page);

        pb_send->setDefault(true);


        QMetaObject::connectSlotsByName(chat_page);
    } // setupUi

    void retranslateUi(QDialog *chat_page)
    {
        chat_page->setWindowTitle(QCoreApplication::translate("chat_page", "Dialog", nullptr));
        lb_rival->setText(QString());
        te_content->setPlaceholderText(QString());
        pb_send->setText(QCoreApplication::translate("chat_page", "\345\217\221\351\200\201", nullptr));
    } // retranslateUi

};

namespace Ui {
    class chat_page: public Ui_chat_page {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CHAT_PAGE_H
