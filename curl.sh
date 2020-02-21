#!/bin/bash

curl http://www.vitlug.com

curl http://www.vitlug.com > vitlug-com.html

: '
-o (lowercase o) the result will be saved in the filename provided in the command line
-O (uppercase O) the filename in the URL will be taken and it will be used as the filename to store the result
'
curl -o mygettext.html http://www.gnu.org/software/gettext/manual/gettext.html

curl -O URL1 -O URL2

: '
Start a big download using curl, and press Ctrl-C to stop it in between the download.
'
curl -O http://www.gnu.org/software/gettext/manual/gettext.html
curl -C - -O http://www.gnu.org/software/gettext/manual/gettext.html

# Download using Ranges
curl ftp://ftp.uk.debian.org/debian/pool/main/[a-z]/

# HTTP Authentication
curl -u username:password URL

# Download from ftp server
curl -u ftpuser:ftppass -O ftp://ftp_server/public_html/xss.php

# Upload files to a server

curl -u ftpuser:ftppass -T "{file1,file2}" ftp://ftp.testserver.com

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

