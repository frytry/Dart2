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
        for i in range(0,len(self.email)):
            web = Browser()
            #self.hide()
            web.go_to('https://www.youtube.com/watch?v=QyAR5kCvDhQ')
            #web.type(self.email[i] , into='First')
            #web.type(self.email[i] , into='Last')
            sleep(50)

            

sb = SubBot("file.txt")
sb.readFile()
sb.main()
