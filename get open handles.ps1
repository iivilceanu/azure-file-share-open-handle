Connect-AzAccount
Select-AzSubscription -subscriptionid "your subscription id"

#create azure storage account context
$Context = New-AzStorageContext -StorageAccountName "fcsb" -StorageAccountKey ""

Get-AzStorageFileHandle -Context $Context -ShareName "tier" -Recursive | Sort-Object ClientIP,OpenTime
