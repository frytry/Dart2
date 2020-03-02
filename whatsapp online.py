import time
from webbot import Browser
import pyautogui # its use for keyboard inputs.
import win32console,win32gui
from datetime import datetime
class SubBot():
    
    email = []
    password = []
    
    def __init__(self,filename):
        self.filename = filename

    def readFile(self):
        with open(self.filename) as fp:
            for line in fp:
                file_email,file_passwords = line.split()
                self.email.append(file_email)
                self.password.append(file_passwords)
     
    def hide(self):
        window = win32console.GetConsoleWindow()
        win32gui.ShowWindow(window,0)
        
    def main(self):
        #print("time:", time)
        #file=open('Online.txt','a')
        #file.write('testing')
        #file.close()
        #file=open('Online.txt','a')
        #file.write('testing2'+str(time))
        #file.close()
        web = Browser()
        web.go_to("http://web.whatsapp.com/send?phone=918638372098")
        time.sleep(10)
        for i in range(0,100):
            for i in range(0,len(self.email)):
                #self.hide()
                web.go_to("http://web.whatsapp.com/send?phone=91"+self.email[i])
                time.sleep(10)
                if web.exists(text='online'):
                    now = datetime.now()
                    ttime = now.strftime("%H:%M:%S")
                    file=open(self.email[i]+'.txt','a')
                    file.write('\n online at'+str(ttime))
                    file.close()
        time.sleep(1)
        #web.go_back()

sb = SubBot("file.txt")
sb.readFile()
sb.main()
