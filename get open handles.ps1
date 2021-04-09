Connect-AzAccount
Select-AzSubscription -subscriptionid "17e9205a-8948-4a20-bb06-e19bf176af49"

#create azure storage account context
$Context = New-AzStorageContext -StorageAccountName "fcsb" -StorageAccountKey ""

Get-AzStorageFileHandle -Context $Context -ShareName "tier" -Recursive | Sort-Object ClientIP,OpenTime
