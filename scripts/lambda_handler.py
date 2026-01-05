import os
import subprocess

def lambda_handler(event, context):
    s3_bucket = os.environ['S3_BUCKET']
    azure_url = os.environ['AZURE_URL']

    local_path = "/tmp/s3data"
    subprocess.run(["aws", "s3", "sync", f"s3://{s3_bucket}", local_path], check=True)
    subprocess.run(["azcopy", "sync", local_path, azure_url, "--recursive=true"], check=True)

    return {"status": "success"}
