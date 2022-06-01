### Example 1: {{ Add title here }}
```powershell
Update-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-test01 -Tag @{'key1' = 'value2'}
```

```output
Name              SystemDataCreatedAt  SystemDataCreatedBy  SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType Location ResourceGroupName
----              -------------------  -------------------  ----------------------- ------------------------ ------------------------ ---------------------------- -------- -----------------
mlworkspace-pwsh01 5/18/2022 6:33:49 AM v-diya@microsoft.com User                    5/18/2022 6:33:49 AM     v-diya@microsoft.com     User                         eastus   ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-test01 | Update-AzMlWorkspace -Tag @{'key1' = 'value2'}
```

```output
Name              SystemDataCreatedAt  SystemDataCreatedBy  SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType Location ResourceGroupName
----              -------------------  -------------------  ----------------------- ------------------------ ------------------------ ---------------------------- -------- -----------------
mlworkspace-pwsh01 5/18/2022 6:33:49 AM v-diya@microsoft.com User                    5/18/2022 6:33:49 AM     v-diya@microsoft.com     User                         eastus   ml-rg-test
```

{{ Add description here }}

