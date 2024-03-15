from aws_lambda_powertools import Logger
import boto3

logger = Logger()
service_catalog = boto3.client("servicecatalog")

@logger.inject_lambda_context(log_event=True)
def handler(_event, _context):
    pass
