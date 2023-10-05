if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/122344AS/Doraemonmoviebot.git /Doraemonmoviebot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Doraemonmoviebot 
fi
cd /Doraemonmoviebot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
