### Example 1: {{ Add title here }}
```powershell
New-AzMlWorkspaceBatchEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name batchpwsh01-key -AuthMode 'Key' -Location 'eastus'
```

```output
Location Name         SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Kind ResourceGroupName
-------- ----         -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- ---- -----------------
eastus   batch-pwsh03 5/20/2022 7:21:12 AM Lucas Yao (Wicresoft North America)                         5/20/2022 7:31:17 AM                                                                                    ml-rg-test
```

{{ Add description here }}
