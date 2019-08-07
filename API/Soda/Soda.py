######Access Socrata Data#######
from sodapy import Socrata
import pandas as pd
import os
import numpy as np

socrata_domain = 'opendata.socrata.com'
socrata_db_id = 'jv7a-cjdv'
#socrata_token = os.eviron.get("SODAPY_APPTOKEN")
client = Socrata(socrata_domain, None)

results = client.get(socrata_db_id, limit=100)
df = pd.DataFrame.from_dict(results)
df.head()
print(results)
print(df)
