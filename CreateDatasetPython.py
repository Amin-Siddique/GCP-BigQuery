# Set your own project id here
PROJECT_ID = 'amin-siddique-2022'

# BigQuery
from google.cloud import bigquery
bigquery_client = bigquery.Client(project='YOUR PROJECT ID')

from google.cloud import bigquery
client = bigquery.Client(project=PROJECT_ID, location="US")
dataset = client.create_dataset('bqml_tutorial', exists_ok=True)
