#!/bin/bash
# This script finds the URLs to .zip files of every Bach work in the database. Each .zip file should contain a set of .midi files
curl http://musedata.org/encodings/bach/ 2> /dev/null | grep -Eo "http:\/\/www.musedata.org\/encodings\/bach\/[a-z]+\/[a-z]+" | xargs -n1 -I {} curl {}"/" 2> /dev/null | grep -oE "http:\/\/www.musedata.org\/encodings\/bach\/[a-z]+\/.+?>" | sed 's/.$//' | xargs -n1 -I {} curl {}"/" 2> /dev/null | grep -Eo "http:\/\/www\.musedata\.org\/cgi-bin\/mddata\?composer=bach.*midi[1k]&multi=zip"
