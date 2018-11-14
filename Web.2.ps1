#Connect to site and read response
$webrequest = (Invoke-WebRequest -URI "http://web-track-1.runcode.ninja/product/7" -UseBasicParsing -TimeoutSec 60)
$content = $webrequest.content

#Data we're looking for:
#RCN{who_put_this_here}

#Use a match statement to grab just the flag
[regex]$pattern = 'RCN\{.*\}'
$flag = $pattern.Matches($content)

#Print off the flag
$flag.Value
