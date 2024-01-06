from json import dumps as json_dumps
from os import environ as os_environ

from dotenv import load_dotenv
from functions_framework import http as functions_framework_http


load_dotenv()


GCP_PROJECT_ID = os_environ.get('GCP_PROJECT_ID')

BIGQUERY_DATASET = os_environ.get('BIGQUERY_DATASET')

BIGQUERY_TABLE = os_environ.get('BIGQUERY_DATASET')


@functions_framework_http
def load_data_to_bigquery(request):
    # NOTE: HERE YOUR CODE.
    response_data = {'success': True}
    return json_dumps(response_data)