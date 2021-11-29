Connect-AzAccount
Select-AzSubscription -subscriptionid "your subscription id"

#create azure storage account context
$Context = New-AzStorageContext -StorageAccountName "storage account name" -StorageAccountKey ""

Get-AzStorageFileHandle -Context $Context -ShareName "file share name" -Recursive | Sort-Object ClientIP,OpenTime
