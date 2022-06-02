### Example 1: Updates properties of a compute
```powershell
Update-AzMlWorkspaceCompute -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name aml02 -Tag @{'key'='value'}
```

```output
Name        SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Location ResourceGroupName
----        ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- -------- -----------------
cpu-cluster                                                                                                                                                                    eastus   ml-rg-test
```

Updates properties of a compute

### Example 2: Updates properties of a compute by pipeline
```powershell
Get-AzMlWorkspaceCompute -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name aml02 | Update-AzMlWorkspaceCompute -Tag @{'key'='value'}
```

```output
Name        SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Location ResourceGroupName
----        ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- -------- -----------------
cpu-cluster                                                                                                                                                                    eastus   ml-rg-test
```

Updates properties of a compute by pipeline
