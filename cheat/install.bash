
cheat_conf=https://raw.githubusercontent.com/yakvaiz/linbek/master/cheat/conf.yml
cheat_conf_dest="$HOME/.config/cheat/conf.yml"
cheat_sheets_remote=https://github.com/yakvaiz/linbek/raw/master/cheat/cheat.tar.gz
cheat_sheets_local="$HOME/cheat.tar.gz"


mv $cheat_conf_dest ${cheat_conf_dest/./_back.} 2> /dev/null
wget $cheat_conf -O $cheat_conf_dest
# curl -OL $cheat_conf

cp -r $cheat_sheets_local _${cheat_sheets_local}_back
wget $cheat_sheets_remote -O $cheat_sheets_local
cd
tar xvfz $cheat_sheets_local
cd -
