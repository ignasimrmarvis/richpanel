# Extraction data from Richpanel

## Steps to run to set up the Richpanel extraction:

Create a folder called tap-richpanel and donwload all the files and store them there.

Run the following commands one by one in Visual Studio Code: 

`cd tap-richpanel`

`python3 -m venv ~/.virtualenvs/tap-richpanel`

`source ~/.virtualenvs/tap-richpanel/bin/activate`

`pip install -e .`

`pip install target-stitch`

## Steps to run every day:

Delete from state-new.json all the lines except the one with the most recent tickets timestamp.

Delete state-previous.json.

Rename state-new.json as state-previous.json.

Run the following command in Visual Studio Code: 

`richpanel-tap -c sample_config.json --state state-previous.json | target-stitch --config stitch-config.json > state-new.json`

_Please not that if you are not in the virtual enviroment you need to access it running the following commands:_

`source ~/.virtualenvs/tap-richpanel/bin/activate`

`pip install -e .`

`pip install target-stitch`

Once into the virtual enviroment you can run the following command: 

`richpanel-tap -c sample_config.json --state state-previous.json | target-stitch --config stitch-config.json > state-new.json`




