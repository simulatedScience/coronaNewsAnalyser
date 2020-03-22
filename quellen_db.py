class Stammquelle():

    import mysql.connector
    top = ""
    con = mysql.connector.connect(user='root', password='MySQL', host='127.0.0.1', database='fakenewstestdb')
    cursor = con.cursor()

    #Fehlercodes

    # -1: Invalid URL
    # -2: Invalid Topdomain
    
    def getSecondLevelDomainfromURL(self, url):
        try:
            templist = url.split("/")
            name = templist[2].split(".")
            self.top = name[len(name)-1]
            query = ("SELECT topsid FROM tops WHERE tops.topsid = '" + self.top + "'")
            self.cursor.execute(query)
            row = self.cursor.fetchone()
            try:
                row[0]
            except:
                return -2
            return name[len(name)-2]
        except:
            return -1

    def getValue(self, name):
        if isinstance(name, float):
            return name
        query = ("SELECT value FROM " + self.top + " WHERE " + self.top + ".name = '" + name + "'")
        self.cursor.execute(query)
        row = self.cursor.fetchone()
        try:
            return row[0]
        except:
            return 5

    def zwischenquellen(self,stammquelle,linklist):
        #TODO definieren von einem Standardvalue ohne weiterführende Internetquellen
        stdvalue = 5
        i = 0
        value = 0
        counter = 0
        badcounter = 0
        while i != len(linklist):
            if self.getSecondLevelDomainfromURL(stammquelle) != self.getSecondLevelDomainfromURL(linklist[i]):
                a = self.stammquellwert(linklist[i])
                # stärkere Gewichtung bei schwächeren Quellen
                if a > 5.0:
                    value += a
                    counter += 1
                elif a < 0.0:
                    pass
                else:
                   value += a
                   counter += 1.5
                   badcounter += 1
            i += 1
        if counter > 0:
            if counter > 5.0 and value >= 8.0 and badcounter == 0:
                return value*1.05/counter
            else:
                return value/counter
        else:
            return stdvalue

    def stammquellwert(self, url):
        
        name = self.getSecondLevelDomainfromURL(url)
        try:
            wert = self.getValue(name)
            return wert
        except:
            return -2

if __name__=="__main__":

    test = Stammquelle()
    url = "https://www.spiegel.de/wirtschaft/unternehmen/coronavirus-jens-spahn-will-geplantes-krankenhaus-gesetz-ueberarbeiten-a-794095a1-b2d4-49eb-8d44-bd3359b43319"
    print(test.stammquellwert(url))
    #print(test.getSecondLevelDomainfromURL(url))
