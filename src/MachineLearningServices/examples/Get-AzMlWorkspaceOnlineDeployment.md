### Example 1: {{ Add title here }}
```powershell
Get-AzMlWorkspaceOnlineDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName online-cli01
```

```output
Location Name SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind    ResourceGroupName
-------- ---- -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ----    -----------------
eastus   blue 5/19/2022 2:52:06 AM Lucas Yao (Wicresoft North America)                         5/19/2022 2:52:06 AM                                                                               Managed ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceOnlineDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName online-cli01 -Name blue
```

```output
Location Name SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind    ResourceGroupName
-------- ---- -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ----    -----------------
eastus   blue 5/19/2022 2:52:06 AM Lucas Yao (Wicresoft North America)                         5/19/2022 2:52:06 AM                                                                               Managed ml-rg-test
```

{{ Add description here }}

