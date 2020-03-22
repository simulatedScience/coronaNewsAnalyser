from html.parser import HTMLParser
import urllib.request

class LinkParser(HTMLParser):

    def __init__(self):
        super(LinkParser, self).__init__()
        self.header = {'User-Agent': 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.7) Gecko/2009021910 Firefox/3.0.7',}

    def handle_starttag(self, tag, attrs):
        if tag == "a":
            for (key, value) in attrs:
                if key == "href":
                    newUrl = urllib.parse.urljoin(self.baseUrl, value)
                    self.links = self.links + [newUrl]

    def getLinks(self, url):
        self.links = []
        self.baseUrl = url
        request = urllib.request.Request(url, None, headers = self.header)
        response = urllib.request.urlopen(request)
        if response.getheader("Content-Type").split(";")[0] == "text/html":
            htmlBytes = response.read()
            htmlString = htmlBytes.decode("utf-8")
            self.feed(htmlString)
            return htmlString, self.links
        else:
            return "",[]
"""Version Paul

def spider(url, word, maxPages):
    pagesToVisit = [url]
    numberVisited = 0
    foundWord = False
    liste = []
    while numberVisited < maxPages and pagesToVisit != []:
         and not foundWord:
        print(numberVisited)
        if pagesToVisit == []:
            print("leer")
        numberVisited += 1
        url = pagesToVisit[0]
        pagesToVisit = pagesToVisit[1:]
        #print(numberVisited, "Visiting:", url)
        parser = LinkParser()
        data, links = parser.getLinks(url)
        pagesToVisit += links
        if data.find(word) > -1:
            foundWord = True
            liste.append(url)
    if foundWord:
        return liste
    else:
        return []
"""

def spider(url, word, maxPages):
    pagesToVisit = [url]
    numberVisited = 0
    foundWord = False
    while numberVisited < maxPages and pagesToVisit != [] and not foundWord:
        numberVisited += 1
        url = pagesToVisit[0]
        pagesToVisit = pagesToVisit[1:]
        print(numberVisited, "Visiting:", url)
        parser = LinkParser()
        data, links = parser.getLinks(url)
        pagesToVisit += links
        if data.find(word) > -1:
            foundWord = True
            print(" *Success!*")
    if foundWord:
        print("The word", word, "was found at", url)
    else:
        print("Word never found")

if __name__ == "__main__":
    spider("https://www.stmas.bayern.de/coronavirus-info/", "Bekanntmachung", 100)
