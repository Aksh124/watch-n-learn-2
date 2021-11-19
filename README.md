<h1 align="center">Watch N Learn</h1>

<h2>fetch.sh</h2>

<p>Copy into a file named 'fetch.sh'</p>

```sh
# Usage: `source fetch.sh`

# ------------------------------ #

author=gmbrianlaw
repository=watch-n-learn
branch=main

# ------------------------------ #

temporary_directory=_$RANDOM$RANDOM

if [ -d $temporary_directory ]
then
    echo
    echo "Found directory '$temporary_directory'"
    echo "Rerun script"
    echo
    return 0
fi

echo
echo "Task: fetch 'https://github.com/$author/$repository/tree/$branch' into '$repository'"

if [ -d $repository ]
then
    echo
    echo "Found directory '$repository'"
    rm -fr $repository
    echo "Removed directory '$repository'"
fi

mkdir $temporary_directory

echo

curl https://codeload.github.com/$author/$repository/legacy.zip/$branch --output \
$temporary_directory/$repository.zip

ditto -kx $temporary_directory/$repository.zip $temporary_directory

rm $temporary_directory/$repository.zip

mv $temporary_directory/* $repository

rm -r $temporary_directory

echo
echo "Fetched 'https://github.com/$author/$repository/tree/$branch' into '$repository'"

unset author
unset repository
unset branch
unset temporary_directory

```
