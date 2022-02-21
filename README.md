# Extraction data from Richpanel

## Run every day

1. Delete from state-new.json all the lines except the one with the most recent tickets timestamp. 
2. Delete state-previous.json
3. Rename state-new.json as state-previous.json
4.1. Ignasi's laptop --> Run the following command in visual code studio: 
`richpanel-tap -c sample_config.json --state state-previous.json | target-stitch --config stitch-config.json > state-new.json`
4.2 Anyone else laptop --> Run the following commands one by one: 
`cd richpanel-tap`
`python3 -m venv ~/.virtualenvs/tap-richpanel`
`source ~/.virtualenvs/tap-richpanel/bin/activate`
`pip install -e .`
`pip install target-stitch`
`richpanel-tap -c sample_config.json --state state-previous.json | target-stitch --config stitch-config.json > state-new.json`








