#!/bin/bash

# Publish files to Azure Web App
az webapp up --name $AZURE_WEBAPP_NAME --resource-group $AZURE_RESOURCE_GROUP

# Deploy code from the GitHub repository
az webapp deployment source config --name $AZURE_WEBAPP_NAME --resource-group $AZURE_RESOURCE_GROUP --repo-url https://github.com/$GH_REPO.git --branch main --manual-integration

# Sync the deployment
az webapp deployment source sync --name $AZURE_WEBAPP_NAME --resource-group $AZURE_RESOURCE_GROUP