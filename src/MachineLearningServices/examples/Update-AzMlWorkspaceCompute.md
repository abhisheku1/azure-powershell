### Example 1: {{ Add title here }}
```powershell
Update-AzMlWorkspaceCompute -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name aml02 -Tag @{'key'='value'}
```

```output
Name        SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Location ResourceGroupName
----        ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- -------- -----------------
cpu-cluster                                                                                                                                                                    eastus   ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceCompute -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name aml02 | Update-AzMlWorkspaceCompute -Tag @{'key'='value'}
```

```output
Name        SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Location ResourceGroupName
----        ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- -------- -----------------
cpu-cluster                                                                                                                                                                    eastus   ml-rg-test
```

{{ Add description here }}

