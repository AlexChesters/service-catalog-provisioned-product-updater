from aws_lambda_powertools import Logger
import boto3

logger = Logger()
service_catalog = boto3.client("servicecatalog")

@logger.inject_lambda_context(log_event=True)
def handler(event, _context):
    response = service_catalog.describe_product(Name=event["product_name"])

    for artifact in response["ProvisioningArtifacts"]:
        if artifact["Guidance"] == "DEFAULT":
            return artifact
