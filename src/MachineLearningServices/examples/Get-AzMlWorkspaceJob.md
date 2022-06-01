### Example 1: {{ Add title here }}
```powershell
Get-AzMlWorkspaceJob  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01
```

```output
Name                       SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
----                       -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
willing_vinegar_mwjs1dyft0 5/31/2022 7:58:38 AM Lucas Yao (Wicresoft North America) User                                                                                                   ml-rg-test
ivory_beard_fsbkdw8n77     5/18/2022 8:03:36 AM Lucas Yao (Wicresoft North America) User                                                                                                   ml-rg-test
plucky_collar_5x0ds0fgb3   5/18/2022 7:44:55 AM Lucas Yao (Wicresoft North America) User                                                                                                   ml-rg-test
heroic_quince_0vqqqpq7mt   5/18/2022 7:10:35 AM Lucas Yao (Wicresoft North America) User                                                                                                   ml-rg-test
amiable_hominy_g700h46sb5  5/18/2022 6:42:32 AM Lucas Yao (Wicresoft North America) User                                                                                                   ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspaceJob  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name willing_vinegar_mwjs1dyft0
```

```output
Name                       SystemDataCreatedAt  SystemDataCreatedBy                 SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
----                       -------------------  -------------------                 ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
willing_vinegar_mwjs1dyft0 5/31/2022 7:58:38 AM Lucas Yao (Wicresoft North America) User                                                                                                   ml-rg-test
```

{{ Add description here }}

