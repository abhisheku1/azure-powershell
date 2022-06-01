### Example 1: {{ Add title here }}
```powershell
Update-AzMlWorkspaceBatchDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName batch-pwsh03 -Name nonmlflowdp -Tag @{'key'='value'}
```

```output
Location Name        SystemDataCreatedAt SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind ResourceGroupName
-------- ----        ------------------- -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ---- -----------------
eastus   nonmlflowdp 6/1/2022 6:19:16 AM Lucas Yao (Wicresoft North America)                         6/1/2022 6:19:16 AM                                                                                     ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceBatchDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName batch-pwsh03 -Name nonmlflowdp | Update-AzMlWorkspaceBatchDeployment -Tag @{'key'='value'}
```

```output
Location Name        SystemDataCreatedAt SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind ResourceGroupName
-------- ----        ------------------- -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ---- -----------------
eastus   nonmlflowdp 6/1/2022 6:19:16 AM Lucas Yao (Wicresoft North America)                         6/1/2022 6:19:16 AM                                                                                     ml-rg-test
```

{{ Add description here }}

