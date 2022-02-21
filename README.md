# Extraction data from Richpanel

## Run every day

### Steps:

Create a folder called tap-richpanel and donwload all the files and store them there.

Delete from state-new.json all the lines except the one with the most recent tickets timestamp.

Delete state-previous.json.

Rename state-new.json as state-previous.json.

Ignasi's laptop --> Run the following command in visual code studio: 

`richpanel-tap -c sample_config.json --state state-previous.json | target-stitch --config stitch-config.json > state-new.json`

Anyone else laptop --> Run the following commands one by one: 

`cd tap-richpanel`

`python3 -m venv ~/.virtualenvs/tap-richpanel`

`source ~/.virtualenvs/tap-richpanel/bin/activate`

`pip install -e .`

`pip install target-stitch`

`richpanel-tap -c sample_config.json --state state-previous.json | target-stitch --config stitch-config.json > state-new.json`








