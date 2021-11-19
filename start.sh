if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/piyushraj00/Naruto.git /piyushraj00
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /piyushraj00
fi
cd /Naruto
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
