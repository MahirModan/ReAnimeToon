if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MahirModan/ABCD.git /ABCD
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone https://github.com/MahirModan/ABCD /ABCD
fi
cd /ABCD
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
