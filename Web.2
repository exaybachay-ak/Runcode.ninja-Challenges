#!/usr/bin/env python

### ----------->>> Import libraries here
import urllib
import re

### ----------->>> Create global variables
sitedata = ""

### ----------->>> Initialize the scraper
opener = urllib.FancyURLopener({})
url = "http://web-track-1.runcode.ninja/"
cart = "http://web-track-1.runcode.ninja/cart"

### ----------->>> Define the URL and read from it
data = opener.open(url)
sitedata += data.read()

cartdata = opener.open(cart)
sitedata += cartdata.read()

### ----------->>> Loop through product pages and add data to variable
i = 1
while i < 8:
	t = str(i)
	opener = urllib.FancyURLopener({})
	loopurl = "http://web-track-1.runcode.ninja/product/" + t + ""
	loopdata = opener.open(loopurl)
	sitedata += loopdata.read()
	i += 1

print sitedata

### ----------->>> Create regex search
search = re.compile(r'RCN\{.*\}')

### ----------->>> Find flag
answer = search.findall(sitedata)
print answer[0]
