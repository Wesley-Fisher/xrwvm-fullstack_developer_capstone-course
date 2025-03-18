# Script to setup env when re-cloning to new online IDE (no persistence)
# Likely unsuitable for any other use case

pip install virtualenv
virtualenv djangoenv
source djangoenv/bin/activate

python3 -m pip install -U -r requirements.txt

python3 manage.py makemigrations
python3 manage.py migrate

git config --global user.email "wf@somewhere.com"
git config --global user.name "WF"
