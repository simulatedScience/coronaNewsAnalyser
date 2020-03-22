from spider import LinkParser
from quellen_db import *
import re
from math import tanh
from spider import *

class Links():

    import mysql.connector
    Quellenclass = Stammquelle()
    con = mysql.connector.connect(user='root', password='MySQL', host='127.0.0.1', database='fakenewstestdb')
    cursor = con.cursor()
    


    def getPlainText(self, url):
        parser = LinkParser()
        data, temp = parser.getLinks(url)
        start = [u.start() for u in re.finditer("<p>", data)]
        end = [n.start() for n in re.finditer("</p>",data)]
        if len(start) != len(end):
            start2 = [v.start() for v in re.finditer("<p ",data)]
            start = start+start2
            start.sort()
        plaintext = ""
        e = 0
        while e != len(end):
            plaintext += data[start[e]:end[e]] + " "
            e += 1
        return plaintext

    def getLinksWeiter(self, plaintext):
        start = [u.start() for u in re.finditer("href", plaintext)]
        end = [n.start() for n in re.finditer("</a>", plaintext)]
        linklist=[]
        v = 0
        while v != len(start):
            linklist.append(plaintext[start[v]:end[v]])
            v += 1
        return linklist

    def getZweitquellenValue(self, url):
        text = self.getPlainText(url)
        linkliste = self.getLinksWeiter(text)
        #Plan Textquellen eigentlich zum Dritten Teil, jetzt hier mit drin, da dritter teil noch nicht vorhanden.
        return self.getTextquellenValue(url) + self.Quellenclass.zwischenquellen(url,linkliste)

    def getSlicedTitle(self,url):
        parser = LinkParser()
        data, temp = parser.getLinks(url)
        start = data.find("<title>")
        end = data.find("</title>")
        titel = data[(start+7):(end)]
        slicedtitel = titel.split()
        i = 0
        while i < len(slicedtitel):
            if len(slicedtitel[i]) < 5:
                slicedtitel.pop(i)
            else:    
                i += 1
        return slicedtitel
        
    #TODO Inhaltliche Überprüfung
    
    def getTextquellenValue(self,url):
        keywords = ['Robert-Koch-Institut','minister','RKI','regierung','Bundesgesundheitsministerium','für Gesundheit','WHO','Universität','University','Fachblatt','Journal','Spahn']
        """
        query = ("SELECT Coronainfowebseite,Stelle,Vorsitz,Gesundheitsbeauftragter FROM offizstellen")
        value = 4
        """
        plaintext = self.getPlainText(url)

        """
        test = self.cursor.execute(query)
        checklist =[]
        for (web,Stelle,Vorsitz,Gesundheitsbeauftragter) in self.cursor:
            if Stelle in plaintext or Vorsitz in plaintext or Gesundheitsbeauftragter in plaintext:
                checklist.append(web)
        if len(checklist) == 0:
            return 4

        title = self.getSlicedTitle(url)
        checkedList = []
        j = 0
        while j < len(checklist):
            print("j =")
            print(j)
            h = 0
            while h < len(title):
                try:
                    print(title[j])
                    checkedList.append(spider(checklist[j],title[h],10))
                    print(checkedList)
                    h += 1
                    print(h)
                except:
                    h += 1
                
            j += 1
        """
        i = 0
        counter = 0
        while i < len(keywords):
            temp = plaintext.count(keywords[i])
            if  temp > 0:
                counter += 1
            i += 1
        return tanh(counter-1)
        

if __name__=="__main__":

    test = Links()
    url ="https://www.spiegel.de/politik/ausland/entschlossen-aber-nicht-allmaechtig-a-73d2ebab-56b6-475a-94c2-92d801948d0a"
    url2="https://www.rki.de/DE/Content/Institut/Public_Health/PH_node.html"
    url3="https://www.zeit.de/kultur/2020-03/staat-ausnahmezustand-notstandsgesetze-coronavirus-deutschland-infektionsschutzgesetz-recht"
    url4="https://www.spiegel.de/wirtschaft/unternehmen/coronavirus-jens-spahn-will-geplantes-krankenhaus-gesetz-ueberarbeiten-a-794095a1-b2d4-49eb-8d44-bd3359b43319"
    #a = test.getPlainText(url3)
    #b = test.getLinksWeiter(a)
    #c = test.getZweitquellenValue(url)
    d = test.getTextquellenValue(url)
    
