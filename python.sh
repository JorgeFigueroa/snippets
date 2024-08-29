https://www.python.org/downloads/

python --version
python3 --version

python
  exit()
python -h   #help
python3 -m http.server 80


pip --version
pip list
pip freeze > requirements.txt
pip install -r requirements.txt
pip install --no-cache-dir libreria
pip clean


pip install jupyter

###  iPython on Windows
pip install ipython
python -m pip show ipython
python -m IPython

exit



### venv
python -m venv venv
venv/bin/activate  ## osx
source venv/bin/activate  ## linux
.venv\Scripts\activate  ## win
  deactivate


### How To Install Python 3.10 on Ubuntu 20.04|18.04
https://computingforgeeks.com/how-to-install-python-on-ubuntu-linux-system/
sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
wget https://www.python.org/ftp/python/3.10.9/Python-3.10.9.tgz
tar -xf Python-3.10.*.tgz
cd Python-3.10.*/
./configure --enable-optimizations
make -j $(nproc)
sudo make altinstall
python3.10 --version




## poetry
run powershell admin
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | python -
[System.Environment]::SetEnvironmentVariable("PATH", $env:PATH + ";C:\Users\NAMEUSER\AppData\Roaming\Python\Scripts", "User")
poetry --version











