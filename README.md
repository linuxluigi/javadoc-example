# Javadoc Sphinx Example
 
## Venv

At first you need to create a Python [venv](https://docs.python.org/3/library/venv.html) & log into it.

 ```bash
virtualenv -p python3 env
source env/bin/activate
 ```

Install the Python requirements via [pip](https://de.wikipedia.org/wiki/Pip_(Python))

 ```bash
pip install -r docs-requirements.txt
 ```
 
## sphinx-quickstart

Go to the docs dir & create the docs

Look the YouTube Video for description how the quickstart work 
[![IMAGE ALT TEXT HERE](http://img.youtube.com/vi/oJsUvBQyHBs/0.jpg)](https://www.youtube.com/watch?v=oJsUvBQyHBs)

 ```bash
cd docs
sphinx-quickstart
 ```
 
## config.py example

In `/docs/example-settings.py` is an example config with pre set the nice looking [sphinx_rtd_theme](https://github.com/snide/sphinx_rtd_theme)

## generate the docs

Edit `/docs/javasphinx.sh` the Vars 
`TITEL` --> Your Project Name
`PACKAGENAME` --> Your Javapackage `com.example.MyProject` name, only if you don't have write it in the code.
`SOURCE` --> Path to the source like `../src/main/java/`

To generate code execute `/docs/javasphinx.sh`

 ```bash
cd docs
./javasphinx.sh
 ```
 
After that you have your docs in mutiple formats :)