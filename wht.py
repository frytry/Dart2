import time
from webbot import Browser
import pyautogui # its use for keyboard inputs.
import win32console,win32gui

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
        web = Browser()
        web.go_to("http://web.whatsapp.com/send?phone=918486372923")
        time.sleep(10)
        for i in range(0,len(self.email)):
            #self.hide()
            web.go_to("http://web.whatsapp.com/send?phone=91"+self.email[i])
            time.sleep(5)
            web.type('https://www.youtube.com/watch?v=AWdexg484ls')
            time.sleep(2)
            web.click(classname='_3M-N-')
            time.sleep(4)
            
            #web.go_back()

sb = SubBot("file.txt")
sb.readFile()
sb.main()
