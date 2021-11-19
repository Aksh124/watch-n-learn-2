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

echo
echo "Activated venv 'venv'"

echo

pip3 install -r requirements.txt

echo

python3 main.py
