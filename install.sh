if type "open" > /dev/null; then
    echo "open exists"
    OPEN="open"
elif type "xdg-open" > /dev/null; then
    echo "xdg-open exists"
    OPEN="xdg-open"
else 
    echo "open dependency not satisfied. Please install xdg-open before installing."
    echo "Install terminated."
    exit 1
fi

HTML=`sed -e "s/^[ \t]*//g" -e ":a;N;$!ba;s/\n//g" disapprove.html` #read in minified html
HTML=${HTML//\'/\"} #escape single quotes in html
TEMPLATE=`cat template.sh`
TEMPLATE=${TEMPLATE/HTML/$HTML}
TEMPLATE=${TEMPLATE/OPEN/$OPEN}
echo $TEMPLATE > ~/.disapprove.sh
chmod +x ~/.disapprove.sh
echo "Install successful. Don't forget to alias ~/.disapprove.sh in your .bash_profile"