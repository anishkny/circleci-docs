#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2

for file in $(diff -qr $SOURCE_DIR/ $DEST_DIR | grep "Only in $SOURCE_DIR" | awk '{print $4}'); do
  cp $SOURCE_DIR/$file $DEST_DIR/$file
  gsed -i -e '2s/^/untranslated: true\n/g' $DEST_DIR/$file
  gsed -i -e 's|{{ site.baseurl }}/2.0/|{{ site.baseurl }}/ja/2.0/|g' $DEST_DIR/$file
done
