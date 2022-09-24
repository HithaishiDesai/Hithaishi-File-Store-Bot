if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HithaishiDesai/Hithaishi-File-Store-Bot.git /HithaishiDesai
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /HithaishiDesai
fi
cd /HithaishiDesai
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
