### Example 1: {{ Add title here }}
```powershell
New-AzMlWorkspaceOnlineEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name online-cli01 -Location eastus -AuthMode 'Key' -IdentityType 'SystemAssigned'
```

```output
Location Name         SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind    ResourceGroupName
-------- ----         -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ----    -----------------
eastus   online-cli01 5/19/2022 2:47:34 AM Lucas Yao (Wicresoft North America)                         5/19/2022 2:48:26 AM                                                                               Managed ml-rg-test
```

{{ Add description here }}

