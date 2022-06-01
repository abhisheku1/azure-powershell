### Example 1: {{ Add title here }}
```powershell
Get-AzMlWorkspaceEnvironmentVersion  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name pwshenv01
```

```output
Name SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy            SystemDataLastModifiedByType ResourceGroupName
---- -------------------  -------------------                 ----------------------- ------------------------ ------------------------            ---------------------------- -----------------
1    5/11/2022 2:31:25 AM Lucas Yao (Wicresoft North America) User                    5/11/2022 2:31:25 AM     Lucas Yao (Wicresoft North America) User                         ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceEnvironmentVersion  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name pwshenv01 -Version 1
```

```output
Name SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy            SystemDataLastModifiedByType ResourceGroupName
---- -------------------  -------------------                 ----------------------- ------------------------ ------------------------            ---------------------------- -----------------
1    5/11/2022 2:31:25 AM Lucas Yao (Wicresoft North America) User                    5/11/2022 2:31:25 AM     Lucas Yao (Wicresoft North America) User                         ml-rg-test
```

{{ Add description here }}

