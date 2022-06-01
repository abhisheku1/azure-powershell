### Example 1: {{ Add title here }}
```powershell
Get-AzMlWorkspaceCompute -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01
```

```output
Name          SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Location ResourceGroupName
----          ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- -------- -----------------
cpu-cluster                                                                                                                                                                      eastus   ml-rg-test
gpu-cluster                                                                                                                                                                      eastus   ml-rg-test
batch-cluster                                                                                                                                                                    eastus   ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceCompute -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name cpu-cluster
```

```output
Name        SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Location ResourceGroupName
----        ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- -------- -----------------
cpu-cluster                                                                                                                                                                    eastus   ml-rg-test
```

{{ Add description here }}

