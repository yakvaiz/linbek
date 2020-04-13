
cheat_conf=https://raw.githubusercontent.com/yakvaiz/linbek/master/cheat/conf.yml
cheat_conf_dest="$HOME/.config/cheat/conf.yml"
cheat_sheets=https://github.com/yakvaiz/linbek/blob/master/cheat/cs.tar.gz
cheat_sheets_dest="$HOME/cheat"


mv $cheat_conf_dest ${cheat_conf_dest/./_back.}
cp $cheat_conf $cheat_conf_dest

cp -r $cheat_sheets_dest _${cheat_sheets_dest}_back
cp $cheat_sheets $cheat_sheets_dest

tar xvfz $cheat_sheets $cheat_sheets_dest
