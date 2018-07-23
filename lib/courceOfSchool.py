import category 
class CourceOfSchool():
    def __init__(self, name):
        self.Name = name
        self.UnderstandFlag = False
        self.CategoryList = []
    
    def setCategoryList(self, categoryList):
        for key in categoryList:
            childCategory = category.Category(key)
            self.CategoryList.append(childCategory)
    
    def getName(self):
        return self.Name
    
    def getUnderstandFlag(self):
        return self.UnderstandFlag

    def changeFlag(self):
        self.UnderstandFlag = not self.UnderstandFlag

    def getCategoryList(self):
        return self.CategoryList

    def toString(self):
        print(self.Name + ' : ' + str(self.UnderstandFlag))
        for c in self.CategoryList:
            c.toString()

