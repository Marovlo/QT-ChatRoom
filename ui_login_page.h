/********************************************************************************
** Form generated from reading UI file 'login_page.ui'
**
** Created by: Qt User Interface Compiler version 6.0.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_LOGIN_PAGE_H
#define UI_LOGIN_PAGE_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_login_page
{
public:
    QAction *action_prog;
    QAction *actiona_about;
    QWidget *centralwidget;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLabel *lb_username;
    QLineEdit *le_username;
    QHBoxLayout *horizontalLayout_2;
    QLabel *lb_password;
    QLineEdit *le_password;
    QHBoxLayout *horizontalLayout_3;
    QPushButton *pb_signup;
    QSpacerItem *horizontalSpacer;
    QPushButton *pb_signin;
    QMenuBar *menubar;
    QMenu *menu;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *login_page)
    {
        if (login_page->objectName().isEmpty())
            login_page->setObjectName(QString::fromUtf8("login_page"));
        login_page->resize(405, 266);
        action_prog = new QAction(login_page);
        action_prog->setObjectName(QString::fromUtf8("action_prog"));
        actiona_about = new QAction(login_page);
        actiona_about->setObjectName(QString::fromUtf8("actiona_about"));
        centralwidget = new QWidget(login_page);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        verticalLayout = new QVBoxLayout(centralwidget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        lb_username = new QLabel(centralwidget);
        lb_username->setObjectName(QString::fromUtf8("lb_username"));
        QFont font;
        font.setFamily(QString::fromUtf8("\347\255\211\347\272\277"));
        font.setPointSize(12);
        lb_username->setFont(font);

        horizontalLayout->addWidget(lb_username);

        le_username = new QLineEdit(centralwidget);
        le_username->setObjectName(QString::fromUtf8("le_username"));
        le_username->setFont(font);

        horizontalLayout->addWidget(le_username);

        horizontalLayout->setStretch(0, 2);
        horizontalLayout->setStretch(1, 5);

        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        lb_password = new QLabel(centralwidget);
        lb_password->setObjectName(QString::fromUtf8("lb_password"));
        lb_password->setFont(font);

        horizontalLayout_2->addWidget(lb_password);

        le_password = new QLineEdit(centralwidget);
        le_password->setObjectName(QString::fromUtf8("le_password"));
        le_password->setFont(font);
        le_password->setEchoMode(QLineEdit::Password);

        horizontalLayout_2->addWidget(le_password);

        horizontalLayout_2->setStretch(0, 2);
        horizontalLayout_2->setStretch(1, 5);

        verticalLayout->addLayout(horizontalLayout_2);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        pb_signup = new QPushButton(centralwidget);
        pb_signup->setObjectName(QString::fromUtf8("pb_signup"));
        pb_signup->setEnabled(false);
        pb_signup->setFont(font);

        horizontalLayout_3->addWidget(pb_signup);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer);

        pb_signin = new QPushButton(centralwidget);
        pb_signin->setObjectName(QString::fromUtf8("pb_signin"));
        pb_signin->setEnabled(false);
        pb_signin->setFont(font);
        pb_signin->setAutoDefault(true);

        horizontalLayout_3->addWidget(pb_signin);

        horizontalLayout_3->setStretch(0, 3);
        horizontalLayout_3->setStretch(1, 1);
        horizontalLayout_3->setStretch(2, 3);

        verticalLayout->addLayout(horizontalLayout_3);

        login_page->setCentralWidget(centralwidget);
        menubar = new QMenuBar(login_page);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 405, 26));
        menu = new QMenu(menubar);
        menu->setObjectName(QString::fromUtf8("menu"));
        login_page->setMenuBar(menubar);
        statusbar = new QStatusBar(login_page);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        login_page->setStatusBar(statusbar);

        menubar->addAction(menu->menuAction());
        menu->addAction(action_prog);
        menu->addAction(actiona_about);

        retranslateUi(login_page);

        pb_signin->setDefault(true);


        QMetaObject::connectSlotsByName(login_page);
    } // setupUi

    void retranslateUi(QMainWindow *login_page)
    {
        login_page->setWindowTitle(QCoreApplication::translate("login_page", "login_page", nullptr));
        action_prog->setText(QCoreApplication::translate("login_page", "\345\205\263\344\272\216\347\250\213\345\272\217", nullptr));
        actiona_about->setText(QCoreApplication::translate("login_page", "\344\275\234\350\200\205", nullptr));
        lb_username->setText(QCoreApplication::translate("login_page", "\347\224\250\346\210\267\345\220\215\357\274\232", nullptr));
        le_username->setInputMask(QString());
        le_username->setText(QString());
        le_username->setPlaceholderText(QString());
        lb_password->setText(QCoreApplication::translate("login_page", "\345\257\206\347\240\201\357\274\232", nullptr));
        le_password->setInputMask(QString());
        le_password->setText(QString());
        le_password->setPlaceholderText(QString());
        pb_signup->setText(QCoreApplication::translate("login_page", "\346\263\250\345\206\214", nullptr));
        pb_signin->setText(QCoreApplication::translate("login_page", "\347\231\273\345\275\225", nullptr));
        menu->setTitle(QCoreApplication::translate("login_page", "\350\217\234\345\215\225", nullptr));
    } // retranslateUi

};

namespace Ui {
    class login_page: public Ui_login_page {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_LOGIN_PAGE_H
