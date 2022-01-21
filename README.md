# Extraction data from Richpanel
VSC code to extract data from Richpanel to Stitch and csv file

**A Singer tap for extracting data from a Richpanel account**

## To a csv file

Following this tutorial:  https://blog.panoply.io/etl-with-singer-a-tutorial

### 1. Create a virtual enviroment, access it and install the needed packages
`› cd richpanel-tap`

`› python3 -m venv ~/.virtualenvs/tap-richpanel`

`› source ~/.virtualenvs/tap-richpanel/bin/activate`

`› pip install -e .`

### 2. Fill in JSON file
Please generate API Keys to use Richpanel Graph API.

It can be generated from Settings => Advanced Settings => API Settings

sample_config.json

`{
  "api_key": "THISISARICHPANELKEY",
  "start_date": "2020-01-01T00:00:00Z"
}`

### 3. Run the application 
richpanel-tap -c sample_config.json

### 4. Install target.csv
`pip install target-csv`

### 5. Saving and loading
`richpanel-tap -c config.json | target-csv > state.json`
`richpanel-tap -c config.json --state state.json | target-csv`

## To Stitch

### Start after step 3

### 4. Create properties.json

Create a properties.json file into the certain virtual enviroment and paste this below: 

`{

"stream": "employee"

}`

### 5. Run the tap in sync mode

Now you can run the tap using the following command which will print the output as a JSON stream in the command line:

`tap-richpanel -c sample_config.json --properties properties.json`

### 6. Deactivate the virtual environment

`deactivate`

### 7. Set up the stitch target

`python3 -m venv stitch_target`

`source stitch_target/bin/activate`

`pip install target-stitch`

### 8. Create a .json file in this enviroment with the following information

This information needs to be replaced for the ones belonging to the particular Stitch account. 

`{
  "client_id" : 1234,
  "token" : "asdkjqbawsdciobasdpkjnqweobdclakjsdbcakbdsac",
  "small_batch_url": "https://api.stitchdata.com/v2/import/batch",
  "big_batch_url": "https://api.stitchdata.com/v2/import/batch",
  "batch_size_preferences": {}
}`

### 9. Connect the tap and target

Now you have a tap and target configured for your data pipeline!

Finally, you're ready to move data from Richpanel to a Stitch.

Singer offers a single-line command with a pipe operator to transfer data from your tap to target, as shown below:

`tap-richpanel/richpanel-tap -c tap-richpanel/sample_config.json --proporties tap-richpanel/bin/properties.json`

Needs to be reviwed since there is this error: **zsh: no such file or directory: tap-richpanel/richpanel-tap**

`stitch_target/bin/target-stitch -c stitch_target/bin/config.json >> state.json`



