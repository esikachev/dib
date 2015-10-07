#!/usr/bin/env bash
set -x
cat << EOF > index.html
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
 <head>
  <title>Index of Liberty Sahara images</title>
 </head>
 <body>
<h1>Index of Liberty Sahara images</h1>
  <table>
   <tr><th>Name</th><th>Last modified</th><th>Size</th><th>Description</th></tr>
   <tr><th colspan="5"><hr></th></tr>
EOF

for image in `ls`
do
    if [[ $image == "sahara-"* ]]
    then
    	echo "<tr><td><a href=\"$image\">$image</a></td><td align="right">2015-10-07 16:01  </td><td align="right">`ls -lah $image | awk '{print $5}'`</td><td>&nbsp;</td></tr>" >> index.html
    fi
done

cat << EOF >> index.html
   <tr><th colspan="5"><hr></th></tr>
</table>
</body></html>
EOF


