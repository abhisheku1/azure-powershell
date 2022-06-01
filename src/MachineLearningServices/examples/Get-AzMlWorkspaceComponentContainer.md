### Example 1: {{ Add title here }}
```powershell
Get-AzMlWorkspaceComponentContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01
```

```output
Name                 SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy            SystemDataLastModifiedByType ResourceGroupName
----                 -------------------  -------------------                 ----------------------- ------------------------ ------------------------            ---------------------------- -----------------
train_data_component 5/24/2022 7:23:25 AM Lucas Yao (Wicresoft North America) User                    5/24/2022 7:23:25 AM     Lucas Yao (Wicresoft North America) User                         ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceComponentContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name train_data_component
```

```output
Name                 SystemDataCreatedAt  SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
----                 -------------------  ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
train_data_component 5/24/2022 7:23:25 AM                                             5/24/2022 7:23:25 AM                                                           ml-rg-test
```

{{ Add description here }}

