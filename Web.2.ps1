#Create a blank variable to store website data
$data = ''

#Connect to site and read response from main pages
$wrcart = (Invoke-WebRequest -URI "http://web-track-1.runcode.ninja/cart" -UseBasicParsing -TimeoutSec 60)
$wrmain = (Invoke-WebRequest -URI "http://web-track-1.runcode.ninja/" -UseBasicParsing -TimeoutSec 60)
$cartcontent = $wrcart.content
$maincontent = $wrmain.content

$data += $cartcontent
$data += $maincontent

#Loop through product webpages and add to data variable
for ($i=1;$i -lt 8;$i++){
	$wrloop = (Invoke-WebRequest -URI "http://web-track-1.runcode.ninja/product/$i" -UseBasicParsing -TimeoutSec 60)
	$loopcontent = $wrloop.content
	$data += $loopcontent
}

#Data we're looking for:
#RCN{who_put_this_here}

#Use a match statement to grab just the flag
[regex]$pattern = 'RCN\{.*\}'
$flag = $pattern.Matches($content)

#Print off the flag
$flag.Value
