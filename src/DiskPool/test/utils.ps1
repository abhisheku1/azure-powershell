function RandomString([bool]$allChars, [int32]$len) {
    if ($allChars) {
        return -join ((33..126) | Get-Random -Count $len | % {[char]$_})
    } else {
        return -join ((48..57) + (97..122) | Get-Random -Count $len | % {[char]$_})
    }
}
$env = @{}
function setupEnv() {
    Import-Module -Name Az.Network
    Import-Module -Name Az.Compute

    # Preload subscriptionId and tenant from context, which will be used in test
    # as default. You could change them if needed.
    $env.SubscriptionId = (Get-AzContext).Subscription.Id
    $env.Tenant = (Get-AzContext).Tenant.Id

    # For any resources you created for test, you should add it to $env here.

    # Generate some random strings for use in the test.
    $rstr1 = RandomString -allChars $false -len 6
    $rstr2 = RandomString -allChars $false -len 6
    $rstr3 = RandomString -allChars $false -len 6
    $rstr6 = RandomString -allChars $false -len 6
    # Follow random strings will be used in the test directly, so add it to $env
    $rstr4 = RandomString -allChars $false -len 6
    $rstr5 = RandomString -allChars $false -len 6
    $rstr7 = RandomString -allChars $false -len 6
    $null = $env.Add("rstr4", $rstr4)
    $null = $env.Add("rstr5", $rstr5)
    $null = $env.Add("rstr7", $rstr7)

    # Create the test group
    Write-Host "Creating test resource group..."
    $resourceGroup = 'storagepool-rg-' + $rstr1
    $null = $env.Add("resourceGroup", $resourceGroup)
    New-AzResourceGroup -Name $resourceGroup -Location westeurope

    # Create 1 vnet for all tests
    Write-Host "Creating Disk Pool Virtual Network..."
    $vnetParams = Get-Content .\test\deployment-templates\virtual-network\parameters.json | ConvertFrom-Json
    $vnetParams.parameters.vnetName.value = "disk-pool-vnet-" + $rstr1
    $null = $env.Add("diskPoolVnetName", $vnetParams.parameters.vnetName.value)

    Set-Content -Path .\test\deployment-templates\virtual-network\parameters.json -Value (ConvertTo-Json $vnetParams)
    New-AzDeployment -Mode Incremental `
        -TemplateFile .\test\deployment-templates\virtual-network\template.json `
        -TemplateParameterFile .\test\deployment-templates\virtual-network\parameters.json `
        -Name diskPoolVnet `
        -ResourceGroupName $resourceGroup
    Write-Host -ForegroundColor Green "Virtual Network deployment completed."

    $virtualNetwork =  Get-AzVirtualNetwork -Name $vnetParams.parameters.vnetName.value
    $subnetId = $virtualNetwork.id + "/subnets/default"
    $null = $env.Add("diskPoolSubnetId", $subnetId)

    # create Disks
    Write-Host "Creating 3 Disks..."
    $diskParams = Get-Content .\test\deployment-templates\disk\parameters.json | ConvertFrom-Json
    $diskParams.parameters.diskName.value = "disk-pool-disk-" + $rstr1

    # Create Disk 1
    Set-Content -Path .\test\deployment-templates\virtual-network\parameters.json -Value (ConvertTo-Json $diskParams)
    New-AzDeployment -Mode Incremental `
        -TemplateFile .\test\deployment-templates\virtual-network\template.json `
        -TemplateParameterFile .\test\deployment-templates\virtual-network\parameters.json `
        -Name diskPoolDisk `
        -ResourceGroupName $resourceGroup
    Write-Host -ForegroundColor Green "Disk deployment completed."

    $disk1 = Get-AzDisk -Name $diskParams.parameters.diskName.value -ResourceGroupName $resourceGroup
    $null = $env.Add("diskId1", $disk1.id)

    # Create Disk 2
    $diskParams = Get-Content .\test\deployment-templates\disk\parameters.json | ConvertFrom-Json
    $diskParams.parameters.diskName.value = "disk-pool-disk-" + $rstr2

    Set-Content -Path .\test\deployment-templates\virtual-network\parameters.json -Value (ConvertTo-Json $diskParams)
    New-AzDeployment -Mode Incremental `
        -TemplateFile .\test\deployment-templates\virtual-network\template.json `
        -TemplateParameterFile .\test\deployment-templates\virtual-network\parameters.json `
        -Name diskPoolDisk `
        -ResourceGroupName $resourceGroup
    Write-Host -ForegroundColor Green "Disk deployment completed."

    $disk2 = Get-AzDisk -Name $diskParams.parameters.diskName.value -ResourceGroupName $resourceGroup
    $null = $env.Add("diskId2", $disk2.id)

    # Create Disk 3
    $diskParams = Get-Content .\test\deployment-templates\disk\parameters.json | ConvertFrom-Json
    $diskParams.parameters.diskName.value = "disk-pool-disk-" + $rstr3

    Set-Content -Path .\test\deployment-templates\virtual-network\parameters.json -Value (ConvertTo-Json $diskParams)
    New-AzDeployment -Mode Incremental `
        -TemplateFile .\test\deployment-templates\virtual-network\template.json `
        -TemplateParameterFile .\test\deployment-templates\virtual-network\parameters.json `
        -Name diskPoolDisk `
        -ResourceGroupName $resourceGroup
    Write-Host -ForegroundColor Green "Disk deployment completed."

    $disk3 = Get-AzDisk -Name $diskParams.parameters.diskName.value -ResourceGroupName $resourceGroup
    $null = $env.Add("diskId3", $disk3.id)

    # create Disk Pool
    # $diskPoolName = "diskPool" + $rstr1
    # $diskPoolParams = Get-Content .\test\deployment-templates\disk-pool\parameters.json | ConvertFrom-Json
    # $diskPoolParams.parameters.diskPoolName.value = $diskPoolName
   
    # # TODO
    # $diskPoolParams.parameters.diskId1.value = ""
    # $diskPoolParams.parameters.diskId2.value = ""
    # $diskPoolParams.parameters.subnetId.value = ""

    # Set-Content -Path .\test\deployment-templates\disk-pool\parameters.json -Value (ConvertTo-Json $diskPoolParams)
    # New-AzDeployment -Mode Incremental `
    #     -TemplateFile .\test\deployment-templates\disk-pool\template.json `
    #     -TemplateParameterFile .\test\deployment-templates\disk-pool\parameters.json `
    #     -Name diskpool `
    #     -ResourceGroupName $resourceGroup
    # Start-Sleep -Seconds 600
    # Write-Host -ForegroundColor Green "Disk Pool deployment completed" 

    # Write-Host "Creating Disk Pool"
    # $diskPool = New-AzDiskPool -Name "hakkarajtest2" `
    #     -ResourceGroupName "hakkaraj-rg" `
    #     -Location "westeurope" `
    #     -SkuName "Standard" `
    #     -SkuTier "Standard" `
    #     -SubnetId "/subscriptions/eff9fadd-6918-4253-b667-c39271e7435c/resourceGroups/hakkaraj-rg/providers/Microsoft.Network/virtualNetworks/hakkaraj-vnet/subnets/default" `
    #     -AvailabilityZone 1
    
    # Write-Host $diskPool.id
    # Write-Host $diskPool.provisioningState

    $null = $env.Add("resourceGroup", "hakkaraj-rg")
    $null = $env.Add("targetDiskPoolName", "hakkarajtest2")
    $null = $env.Add("targetName", "target1")
    $null = $env.Add("targetDiskId1", "/subscriptions/eff9fadd-6918-4253-b667-c39271e7435c/resourceGroups/hakkaraj-rg/providers/Microsoft.Compute/disks/hakkaraj-test")
    $null = $env.Add("targetDiskId2", "/subscriptions/eff9fadd-6918-4253-b667-c39271e7435c/resourceGroups/hakkaraj-rg/providers/Microsoft.Compute/disks/hakkaraj-test2")

    $envFile = 'env.json'
    if ($TestMode -eq 'live') {
        $envFile = 'localEnv.json'
    }
    set-content -Path (Join-Path $PSScriptRoot $envFile) -Value (ConvertTo-Json $env)
}
function cleanupEnv() {
    # Clean resources you create for testing
}

