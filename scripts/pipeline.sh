set -e

aws cloudformation deploy \
  --template-file ci/codepipeline.yml \
  --stack-name codepipeline-service-catalog-provisioned-product-updater \
  --capabilities CAPABILITY_IAM \
  --region eu-west-1 \
  --profile service-catalog
