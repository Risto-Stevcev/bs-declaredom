#!/bin/bash

doc="<html>\n<body>\n"

for i in $(ls -1 docs/bs-declaredom/)
do
  doc+="<p><a href=\"./$i/index.html\">$i</a></p>\n"
done

doc+="</body>\n</html>"

echo -e $doc
