### Example 1: {{ Add title here }}
```powershell
Update-AzMlWorkspaceOnlineEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name online-pwsh02 -Tag @{'key'='value'}
```

```output
Location Name         SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind    ResourceGroupName
-------- ----         -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ----    -----------------
eastus   online-cli01 5/19/2022 2:47:34 AM Lucas Yao (Wicresoft North America)                         5/19/2022 2:48:26 AM                                                                               Managed ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceOnlineEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name online-pwsh02 | Update-AzMlWorkspaceOnlineEndpoint -Tag @{'key'='value'}
```

```output
Location Name         SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind    ResourceGroupName
-------- ----         -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ----    -----------------
eastus   online-cli01 5/19/2022 2:47:34 AM Lucas Yao (Wicresoft North America)                         5/19/2022 2:48:26 AM                                                                               Managed ml-rg-test
```

{{ Add description here }}

