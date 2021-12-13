ls
if [ ! -d "env" ]; then 
    python3 -m pip install virtualenv
    python3 -m virtualenv env
    . ./env/bin/activate
    pip3 install -r requirements.txt
fi

. ./env/bin/activate
git diff HEAD~1 --exit-code requirements.txt > /dev/null && echo "no changes in requirements.txt" || pip3 install -r requirements.txt