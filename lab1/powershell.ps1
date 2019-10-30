$rg = New-AzResourceGroup -name "armLab5" -Location "Korea Central"
$job = "Job8"


$param = @{
    'identifier' = '3t-l-web'
    'location' = 'koreacentral'
    'adminUsername' = 'iaasadmin'
    'adminPassword' = 'dbsdudtls93!'
}

$template = "C:\ARMLAB\ysjson.json"
$param = "C:\ARMLAB\lab5\azuredploy.parameters.json"

New-AzResourceGroupDeployment -name $job -ResourceGroupName $rg.ResourceGroupName -TemplateFile $template 

New-AzDeployment -Name "Test" -Location "Korea Central" -TemplateFile $template -TemplateParameterObject $param



Get-AzKeyVaultSecret -Name jhkimamho -VaultName jhkim4198keyValut |FL -Property *

Get-azkeyvault -Name "jhkim4198keyValut" -ResourceGroupName keyVaultRG 

https://jhkim4198keyvalut.vault.azure.net:443/secrets/jhkimamho/8f6199832b3a49af97cb3304cd492689

/subscriptions/4370ab6e-5598-466b-b64b-252509825a4e/resourceGroups/keyVaultRG/providers/Microsoft.KeyVault/vaults/jhkim4198keyValut









$storageAccountPrefix = "jhkim"
$template = "C:\ARMLAB\lab1\azruedeploy.json"
$param = "C:\ARMLAB\lab1\azuredeploy.parameters.json"

$storageAccount = (New-AzResourceGroupDeployment -name $job -ResourceGroupName $rg.ResourceGroupName -TemplateFile $template -TemplateParameterFile $param -storageAccountPrefix $storageAccountPrefix).Outputs.storageAccount.Value

$storageAccount
#Test-AzResourceGroupDeployment -TemplateFile "C:\ARMLAB\lab1\azruedeploy.json" -ResourceGroupName $rg.ResourceGroupName -Verbose



Remove-AzResourceGroup -Name $rg.ResourceGroupName 

