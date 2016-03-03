#!/usr/bin/env bash
set -x
cat << EOF > $1/index.html
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
 <head>
  <title>Index of Liberty Sahara images</title>
 </head>
 <body>
<h1>Index of $1 Sahara images</h1>
  <table>
   <tr><th>Name</th><th>Last modified</th><th>Size</th><th>Description</th></tr>
   <tr><th colspan="5"><hr></th></tr>
EOF

for image in `ls $1`
do
    if [[ $image == "sahara-"* ]]
    then
        dt=`date +%Y-%m-%d\ %H:%M`
    	echo "<tr><td><a href=\"$image\">$image</a></td><td align="right">$dt  </td><td align="right">`ls -lah $image | awk '{print $5}'`</td><td>&nbsp;</td></tr>" >> index.html
    fi
done

cat << EOF >> $1/index.html
   <tr><th colspan="5"><hr></th></tr>
</table>
</body></html>
EOF


