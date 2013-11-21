HTML=`sed -e "s/^[ \t]*//g" -e ":a;N;$!ba;s/\n//g" disapprove.html` #read in minified html
HTML=${HTML//\'/\"} #escape single quotes in html
TEMPLATE=`cat template.sh`
echo ${TEMPLATE/HTML/$HTML} > ~/.disapprove.sh
chmod +x ~/.disapprove.sh
echo -e "\nalias disapprove=~/.disapprove.sh" >> ~/.bash_profile