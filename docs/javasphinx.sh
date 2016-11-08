#!/bin/bash
# Script to generate Javadoc output for sphinx with javasphinx-apidoc

TITEL="MyProject"
PACKAGENAME="com.example.MyProject"
SOURCE="../src/main/java/"

##############################################################
#                        do not edit                         #
##############################################################

if [ -n "${PACKAGENAME+set}" ]; then
    # add packagename in the first line of each java file
    ls -f $SOURCE*.java | while read -r file; do
        sed  -i '1i package $PACKAGENAME;' $file
    done
fi

# convert javadoc to rst files
javasphinx-apidoc -o source/ --title=$TITEL $SOURCE -u

# convert source to build files
make html
make epub
make epub3
make man
make latex
make latexpdf

if [ -n "${PACKAGENAME+set}" ]; then
    # remove packagename of each java file
    ls -f $SOURCE*.java | while read -r file; do
        sed -i '1d' $file
    done
fi

exit 0