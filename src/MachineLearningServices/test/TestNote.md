# az cli end-to-end
az ml compute list -g ml-rg-test -w mlworkspace-portal01
az ml compute create -g ml-rg-test -w mlworkspace-portal01 -n cpu-cluster --type amlcompute --min-instances 0 --max-instances 10
az ml compute create -g ml-rg-test -w mlworkspace-portal01 -n gpu-cluster --type amlcompute --min-instances 0 --max-instances 4 --size Standard_NC12

job will auto run
az ml job create -g ml-rg-test -w mlworkspace-portal01 --file pipeline.yml


az ml component create -g ml-rg-test -w mlworkspace-portal01 --file train.yml
az ml component create -g ml-rg-test -w mlworkspace-portal01 --file score.yml
az ml component create -g ml-rg-test -w mlworkspace-portal01 --file eval.yml

# REST end-to-end
```powershell
$SUBSCRIPTION_ID = (Get-AzContext).Subscription.Id
$RESOURCE_GROUP = 'ml-rg-test'
$WORKSPACE = 'mlworkspace-portal01'
$LOCATION = 'eastus'
$API_VERSION="2022-02-01-preview"
$TOKEN = (Get-AzAccessToken).Token | ConvertTo-SecureString -AsPlainText -Force
# list compute
# $computeListUri = "https://management.azure.com/subscriptions/$($SUBSCRIPTION_ID)/resourceGroups/$($RESOURCE_GROUP)/providers/Microsoft.MachineLearningServices/workspaces/$($WORKSPACE)/computes?api-version=$($API_VERSION)"
# Invoke-WebRequest -Method 'Get' -Uri $computeListUri -Authentication Bearer -Token $token

# select compute
$COMPUTE_NAME="cpu-cluster"

# set environment
$environmentName = "lightgbm-environment"
$environmentUri = "https://management.azure.com/subscriptions/$($SUBSCRIPTION_ID)/resourceGroups/$($RESOURCE_GROUP)/providers/Microsoft.MachineLearningServices/workspaces/$($WORKSPACE)/environments/$($environmentName)?api-version=$($API_VERSION)"
$body = "
{
  `"properties`": {
    `"properties`": {
      `"additionalProp1`": `"string`",
      `"additionalProp2`": `"string`",
      `"additionalProp3`": `"string`"
    },
    `"tags`": {
      `"additionalProp1`": `"string`",
      `"additionalProp2`": `"string`",
      `"additionalProp3`": `"string`"
    },
    `"description`": `"string`"
  }
}
"
Invoke-WebRequest -Method 'PUT' -Uri $environmentUri -Authentication Bearer -Token $token -ContentType "application/json" -Body $body

$ENV_VERSION=$RANDOM
Invoke-WebRequest --location --request PUT "https://management.azure.com/subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP/providers/Microsoft.MachineLearningServices/workspaces/$WORKSPACE/environments/lightgbm-environment/versions/$ENV_VERSION?api-version=$API_VERSION" \
--header "Authorization: Bearer $TOKEN" \
--header "Content-Type: application/json" \
--data-raw "{
    \"properties\":{
        \"condaFile\": \"$CONDA_FILE\",
        \"image\": \"mcr.microsoft.com/azureml/openmpi3.1.2-ubuntu18.04\"
    }
}"
```