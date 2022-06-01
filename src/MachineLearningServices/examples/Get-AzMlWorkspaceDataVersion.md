### Example 1: {{ Add title here }}
```powershell
Get-AzMlWorkspaceDataVersion  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name iris-data
```

```output
Name SystemDataCreatedAt SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
---- ------------------- -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
1    5/5/2022 2:58:50 AM Lucas Yao (Wicresoft North America) User                    5/5/2022 2:58:50 AM                                                            ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceDataVersion  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name iris-data -Version 1
```

```output
Name SystemDataCreatedAt SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
---- ------------------- -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
1    5/5/2022 2:58:50 AM Lucas Yao (Wicresoft North America) User                    5/5/2022 2:58:50 AM                                                            ml-rg-test
```

{{ Add description here }}

