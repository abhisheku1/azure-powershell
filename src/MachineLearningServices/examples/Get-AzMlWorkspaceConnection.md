### Example 1: {{ Add title here }}
```powershell
Get-AzMlWorkspaceConnection -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01
```

```output
Name SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
---- ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
test                                                                                                                                                ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceConnection -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -ConnectionName test
```

```output
Name SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
---- ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
test                                                                                                                                                ml-rg-test
```

{{ Add description here }}

