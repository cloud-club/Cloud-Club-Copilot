export resourceGroup="<Resource Group Name for AOAI & AI Search & Blob>"
export subscription="<Subscription ID>"
roles=("Contributor" "Cognitive Services User" "Azure Search Contributor" "Search Index Data Contributor" "Storage Account Contributor" "Storage Blob Data Reader")

for role in "${roles[@]}"
do
  az ad sp create-for-rbac --name chatapp-local-sp --role "$role" --scopes "/subscriptions/$subscription/resourceGroups/$resourceGroup"
done