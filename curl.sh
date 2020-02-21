#!/bin/bash

curl http://www.vitlug.com

curl http://www.vitlug.com > vitlug-com.html

: '
-o (lowercase o) the result will be saved in the filename provided in the command line
-O (uppercase O) the filename in the URL will be taken and it will be used as the filename to store the result
'
curl -o myproject.html https://nishalkulkarni.com/projects.html

# Downloading multiple files
curl -O https://nishalkulkarni.com/projects.html -O https://nishalkulkarni.com/contact.html

: '
Start a big download using curl, and press Ctrl-C to stop it in between the download.
'
curl -O https://nishalkulkarni.com/test.jpeg
curl -C - -O https://nishalkulkarni.com/test.jpeg

# Download using Ranges
curl https://nishalkulkarni.com/[a-z]/

# HTTP Authentication
curl -u username:password URL

# Download from ftp server
curl -u 19BCE0243 -O ftp://studvol1.vit.ac.in/sample.txt

# Upload files to a server
curl -u 19BCE0243 -T sysmain.sh ftp://studvol1.vit.ac.in

# Follow redirects
curl -L http://www.google.com

# More information
curl -v http://google.co.in

# Using a Proxy 
curl -x proxysever.test.com:3128 http://google.co.in

# Sending a mail using smtp protocol
curl --mail-from blah@test.com --mail-rcpt foo@test.com smtp://mailserver.com
: '
Subject: Testing
This is a test mail
. <--- terminate with this period
'

