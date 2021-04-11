Azure Files offers fully managed file shares in the cloud that are accessible via the industry standard Server Message Block (SMB) protocol.

Azure file shares can be mounted concurrently by cloud or on-premises deployments of Windows, Linux, and macOS.

Azure offers multiple storage solutions that one can use to store your FSLogix profile container and allows you to create a profile container with Azure Files. 
For more information on how to create a profile container with Azure Files see the below article:
https://docs.microsoft.com/en-us/azure/virtual-desktop/store-fslogix-profile

After creating the profile container with Azure Files one might need to delete the user profiles , the vhd's and there is an issue one might face if the file will have an active handle opened agains it.

Also, there is a quota of 2,000 open handles on a single file. When you have 2,000 open handles, an error message is displayed that says the quota is reached.
a
In this tutorial you'll learn how to check and fine the file open handles and how you can remove the file open handles by using PowerShell cmdlets.

While trying to delete files from Azure File Shares one might encounter the unex

"The Azure File Storage Fslogixprofile/xxx.vhd file cannot be deleted because it contains open handles. All handles need to be closed before the file can be deleted"

To view open handles for a file share, directory or file, use the Get-AzStorageFileHandle PowerShell cmdlet.

To close open handles for a file share, directory or file, use the Close-AzStorageFileHandle PowerShell cmdlet.
