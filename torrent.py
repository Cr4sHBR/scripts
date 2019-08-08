import requests
from bs4 import BeautifulSoup
import re


url = input('Insira a URL:\n')
page = requests.get(url)
soup = BeautifulSoup(page.text, 'lxml')

savefile = open('magnet.txt', 'a')

for link in soup.find_all('a', attrs={'href': re.compile("magnet:?")}):
    magnet = link.get('href')
    savefile.write(str(magnet) + "\n")

