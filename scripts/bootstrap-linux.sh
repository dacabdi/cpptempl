# install some tools, describe, and print all
# sorts of info during github actions ci runs

if [ -n "$GITHUB_EVENT_PATH" ]; then
    echo "Printing action event JSON file:"
    cat $GITHUB_EVENT_PATH;
else
    echo "GITHUB_EVENT_PATH is not set!";
fi

echo "Dumping environment:"
printenv

echo "Updating apt sources:"
sudo apt update

echo "Installing packages:"
sudo apt install -y \
    tree \
    libtinfo5

echo "Dumping working tree structure:"
tree -Dphug
