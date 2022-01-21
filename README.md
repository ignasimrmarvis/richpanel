# richpanel
VSC code to extract data from Richpanel to Stitch and csv file
# A Singer tap for extracting data from a Richpanel account to a csv file
# 1. Create a virtual enviroment, access it and install the needed packages
› cd richpanel-tap
› python3 -m venv ~/.virtualenvs/tap-richpanel
› source ~/.virtualenvs/tap-richpanel/bin/activate
› pip install -e .
# 2. Run the application 
richpanel-tap -c sample_config.json
# 3. 
