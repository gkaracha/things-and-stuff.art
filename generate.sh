#!/usr/bin/env bash

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] || [ -z "$4" ] || [ -z "$5" ] || [ -z "$6" ] || [ -z "$7" ]
then
      echo "Inputs are missing. Generation of page tab failed."
      exit 1
fi

# #############################################################################
echo '<!-- GENERATED BY the ./generate.sh SCRIPT, DO NOT EDIT BY HAND! -->'
echo '<!--?xml version="1.0" encoding="UTF-8" ?-->'
echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'
echo '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">'
# #############################################################################
# HEAD
# #############################################################################
while IFS="" read -r p || [ -n "$p" ]
do
  printf '  %s\n' "$p"
done < $1
# #############################################################################
echo '  <body>'
echo '    <div class="background-image-overlay"></div>'
echo '    <div class="container">'
echo '      <div class="row">'
echo '        <div class="col-sm-9">'
echo '          <h2 id="petite-caps">George Karachalias</h2>'
# #############################################################################
# PAGE QUOTE
# #############################################################################
while IFS="" read -r p || [ -n "$p" ]
do
  printf '          %s\n' "$p"
done < $2
# #############################################################################
# NAVIGATION BAR
# #############################################################################
while IFS="" read -r p || [ -n "$p" ]
do
  printf '          %s\n' "$p"
done < $3

# #############################################################################
# PAGE CONTENT
# #############################################################################
while IFS="" read -r p || [ -n "$p" ]
do
  printf '          %s\n' "$p"
done < $4
# #############################################################################
echo '        </div>'
echo '        <div class="col-sm-3">'
# #############################################################################
# IMAGE (TOP-RIGHT)
# #############################################################################
while IFS="" read -r p || [ -n "$p" ]
do
  printf '          %s\n' "$p"
done < $5
# #############################################################################
echo '          <hr>'
# #############################################################################
# SIDELIST
# #############################################################################
while IFS="" read -r p || [ -n "$p" ]
do
  printf '          %s\n' "$p"
done < $6
# #############################################################################
echo '          <hr>'
echo '        </div>'
echo '      </div>'
# #############################################################################
# FOOTER
# #############################################################################
while IFS="" read -r p || [ -n "$p" ]
do
  printf '      %s\n' "$p"
done < $7
# #############################################################################
echo '    </div>'
echo '    <!-- jQuery (necessary for Bootstrap JavaScript plugins) -->'
echo '    <script type="text/javascript" src="./data/jquery.js"></script>'
echo '    <!-- Include all compiled plugins (below), or include individual files as needed -->'
echo '    <script type="text/javascript" src="./data/bootstrap.js"></script>'
echo '  </body>'
echo '</html>'
# #############################################################################