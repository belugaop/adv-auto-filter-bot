if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/belugaop/adv-auto-filter-bot.git /adv-auto-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /filter-for-tg-v3
fi
cd /adv-auto-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
