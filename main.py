import quellen_db
import linkcheck

class main():

    def __init__(self,url):

        quell = quellen_db.Stammquelle()
        zweitquell = linkcheck.Links()
        
        faktorStammquellenqualitaet = 1
        faktorZweitquellenqualitaet = 1
        #ToDo: faktorUeberpruefung = 1
        summeFaktor = faktorStammquellenqualitaet + faktorZweitquellenqualitaet #+ faktorUeberpruefung
        
        valueStammquellenqualitaet = quell.stammquellwert(url)
        valueZweitquellenqualitaet = zweitquell.getZweitquellenValue(url)
        #valueUeberprufung

        print(valueStammquellenqualitaet)
        print(valueZweitquellenqualitaet)
        
        endwertberechnung = 0
        endwertberechnung = valueStammquellenqualitaet * faktorStammquellenqualitaet + valueZweitquellenqualitaet * faktorZweitquellenqualitaet #+ faktorUeberpruefung * valueUeberprufung
        endvalue = endwertberechnung/summeFaktor

        #auswertung
        ausdruck = ""
        if endvalue < 5:
            ausdruck = ("" + str(round(endvalue,2)) + " | Der Artikel ist vermutlich nicht vertrauenswürdig. Bitte stell weitere Nachforschungen an.")
        elif endvalue < 6.5:
            ausdruck = ("" + str(round(endvalue,2)) + " | Keine definitive Einschätzung möglich. Bitte stell weitere Nachforschungen an.")
        elif endvalue < 8:
            ausdruck = ("" + str(round(endvalue,2)) + " | Der Artikel ist vermutlich vertrauenswürdig")
        elif endvalue > 8:
            ausdruck = ("" + str(round(endvalue,2)) + " | Der Artikel ist mit sehr hoher Wahrscheinlichkeit vertrauenswürdig")

        transfer = open("transfer.txt","w")
        transfer.truncate(0)
        transfer.write(ausdruck)
        transfer.close()
        
if __name__=="__main__":

    url = "https://www.zeit.de/kultur/2020-03/staat-ausnahmezustand-notstandsgesetze-coronavirus-deutschland-infektionsschutzgesetz-recht"
    test = main(url)
    
