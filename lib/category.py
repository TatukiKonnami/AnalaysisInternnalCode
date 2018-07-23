class Category():
    def __init__(self,name):
        self.Name = name
        self.UseFlag = False
    
    def getName(self):
        return self.Name
    
    def getUseFlag(self):
        return self.UseFlag

    def changeUseFlag(self):
        self.UseFlag = not self.UseFlag

    def toString(self):
        print(self.Name + ' : ' + str(self.UseFlag))
