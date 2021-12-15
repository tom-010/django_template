import subprocess

def run(command):
    print(subprocess.check_output(command.split(), stderr=subprocess.STDOUT).decode())

run('python3 -m pip install virtualenv')
run('python3 -m virtualenv env')
run('pip3 install -r requirements.txt')
