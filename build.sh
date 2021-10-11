#!/usr/bin/env bash

echo "Generating index.html."
bash generate.sh c/{head,topquote,navbar,index.content,image-scruffie,sidelist,footer}.html >index.html

echo "Generating teaching.html."
bash generate.sh c/{head,topquote,navbar,teaching.content,image-teaching,sidelist,footer}.html >teaching.html

echo "Generating service.html."
bash generate.sh c/{head,topquote,navbar,service.content,image-scruffie,sidelist,footer}.html >service.html

echo "Generating publications.html."
bash generate.sh c/{head,topquote,navbar,publications.content,image-scruffie,sidelist,footer}.html >publications.html

echo "Generating contact.html."
bash generate.sh c/{head,topquote,navbar,contact.content,image-scruffie,sidelist,footer}.html >contact.html

echo "Creating thoughts."
mkdir -p thoughts

echo "Copying resources into thoughts."
cp -r data   ./thoughts/
cp -r images ./thoughts/
cp -r logos  ./thoughts/

echo "Generating the post index."
bash generate-post-index.sh

echo "Generating the post tabs."
for f in c/thoughts/*.content.html; do
  nopath=${f##*/}
  name=${nopath%.content.html}
  OUTPUTFILE="thoughts/$name.html"
  echo "  Generating $OUTPUTFILE.";
  bash generate.sh \
    c/head.html \
    c/topquote.html \
    c/nested-navbar.html \
    "$f" \
    c/image-scruffie.html \
    c/nested-thoughtlist.html \
    c/footer.html \
    >"$OUTPUTFILE"
done

echo "Generating thoughts.html."
bash generate.sh c/{head,topquote,navbar,thoughts.content,image-scruffie,thoughtlist,footer}.html >thoughts.html

echo "Done."
