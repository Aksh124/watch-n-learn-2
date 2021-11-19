if [ -d venv ]
then
    echo
    echo "Found venv 'venv'"
else
    python3 -m venv venv
    echo
    echo "Created venv 'venv'"
fi

source venv/bin/activate

echo "Activated venv 'venv'"

pip3 install -q -r requirements.txt

echo
echo "Installed packages from 'requirements.txt'"

python3 main.py
