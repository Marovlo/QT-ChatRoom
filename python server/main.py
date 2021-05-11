import socket
import pymysql as pm
import threading

true=True
false=False

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.bind(('0.0.0.0',9899))
s.listen(10)
logined=dict()

def signin(login_info):
    db = pm.connect(host="175.24.100.167", user="root", passwd="000815", database="chatroom")
    cursor=db.cursor()
    cursor.execute(f"select password from user_infos where username='{login_info[1]}'")
    res=cursor.fetchone()
    if res:
        if res[0]==login_info[2]:
            return 1 #登录成功
        else:
            return 2 #登录失败，密码错误
    else:
        return 3 #登录失败，没有那个用户

def signup(login_info):
    db = pm.connect(host="175.24.100.167", user="root", passwd="000815", database="chatroom")
    cursor = db.cursor()
    cursor.execute(f"select username from user_infos where username='{login_info[1]}'")
    res=cursor.fetchone()
    if not res:
        cursor.execute(f"insert into user_infos values('{login_info[1]}','{login_info[2]}')")
        db.commit()
        return 4 #注册成功
    else:
        return 5 #注册失败，用户名被占用

def handle(conn:socket.socket,addr):
    login_info=""
    while true:
        login_info=conn.recv(100000)
        if not login_info:
            print("客户端下线")
            return
        login_info = login_info.decode('utf-8')
        login_info = login_info.split(' ')
        print(login_info)
        if login_info[0]=="change_socket":
            print('socket changed')
            logined[login_info[1]]=conn
            break #该用户已经登录，只是为了换socket
        login_res = 0
        if login_info[0] == 'signin':
            if login_info[1] in list(logined.keys()):
                login_res = 6  # 已经登录
            else:
                login_res = signin(login_info)
        elif login_info[0] == 'signup':
            login_res = signup(login_info)
        conn.send(str(login_res).encode('utf-8'))
        if login_res==1 or login_res==4:
            logined[login_info[1]]=conn
            print("close socket")
            conn.close()
            return
    while true:
        now_user=login_info[1]
        content=conn.recv(100000)
        if not content:
            print("客户端下线")
            del logined[now_user]
            return
        content=content.decode('utf-8')
        if content=="*check*":
            other_names="check_list "
            for name in list(logined.keys()):
                if name!=now_user:
                    other_names+=name+' '
            logined[now_user].send(other_names.encode('utf-8'))
            continue
        content=content.split(')$(')
        to_user=content[0]
        content=now_user+")$("+content[0]+")$("+content[1]
        if to_user=='all':
            for name in list(logined.keys()):
                if name!=now_user:
                    try:
                        logined[name].send(content.encode('utf-8'))
                    except Exception as e:
                        print(e)
        #print(f"user {now_user} using {logined[now_user]} wants to send {content} to {to_user}")
        try:
            logined[to_user].send(content.encode('utf-8'))
        except Exception as e:
            print(e)

while True:
    conn,addr=s.accept()
    t=threading.Thread(target=handle,args=(conn,addr))
    t.start()



        



