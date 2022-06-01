### Example 1: {{ Add title here }}
```powershell
Get-AzMlWorkspaceOnlineEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01
```

```output
Location Name          SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind    ResourceGroupName
-------- ----          -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ----    -----------------
eastus   online-cli02  5/19/2022 2:49:44 AM Lucas Yao (Wicresoft North America)                         5/19/2022 2:50:27 AM                                                                               Managed ml-rg-test
eastus   online-cli01  5/19/2022 2:47:34 AM Lucas Yao (Wicresoft North America)                         5/19/2022 2:48:26 AM                                                                               Managed ml-rg-test
eastus   online-pwsh01 5/18/2022 9:44:06 AM Lucas Yao (Wicresoft North America)                         5/18/2022 9:44:48 AM                                                                               Managed ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceOnlineEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name online-cli01
```

```output
Location Name         SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind    ResourceGroupName
-------- ----         -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ----    -----------------
eastus   online-cli01 5/19/2022 2:47:34 AM Lucas Yao (Wicresoft North America)                         5/19/2022 2:48:26 AM                                                                               Managed ml-rg-test
```

{{ Add description here }}

