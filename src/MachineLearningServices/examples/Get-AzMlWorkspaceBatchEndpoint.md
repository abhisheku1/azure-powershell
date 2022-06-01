### Example 1: {{ Add title here }}
```powershell
Get-AzMlWorkspaceBatchEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01
```

```output
ocation Name         SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind ResourceGroupName
-------- ----         -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ---- -----------------
eastus   batch-pwsh03 5/20/2022 7:21:12 AM Lucas Yao (Wicresoft North America)                         5/20/2022 7:31:17 AM                                                                                    ml-rg-test
eastus   batch-pwsh02 5/20/2022 7:17:33 AM Lucas Yao (Wicresoft North America)                         5/20/2022 7:20:02 AM                                                                                    ml-rg-test
eastus   batch-cli01  5/20/2022 7:11:11 AM Lucas Yao (Wicresoft North America)                         5/20/2022 7:11:32 AM                                                                                    ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceBatchEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name batch-pwsh03
```

```output
Location Name         SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind ResourceGroupName
-------- ----         -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ---- -----------------
eastus   batch-pwsh03 5/20/2022 7:21:12 AM Lucas Yao (Wicresoft North America)                         5/20/2022 7:31:17 AM                                                                                    ml-rg-test
```

{{ Add description here }}

