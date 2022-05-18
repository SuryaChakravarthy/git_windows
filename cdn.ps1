Connect-AzAccount

Get-AzResourceGroup

$ResourceGroup="Azure_L1_Batch_7"

$StorageAccount=New-AzStorageAccount -ResourceGroupName $ResourceGroup -Name "suryapec" -SkuName Standard_LRS -Location Eastus -Kind Storage

$Context = $StorageAccount.Context

New-AzStorageContainer -Name suryaproject -Permission Blob -Context $Context


New-AzCdnProfile -ProfileName project1 -ResourceGroupName $ResourceGroup -Sku Standard_Microsoft -Location "East US"

New-AzCdnEndpoint -ProfileName project1 -ResourceGroupName $ResourceGroup -Location "East US" -EndpointName suryapeccdn -OriginName "suryapec" -OriginHostName "suryapec.blob.core.windows.net"











