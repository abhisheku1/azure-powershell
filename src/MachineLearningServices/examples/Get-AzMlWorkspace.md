### Example 1: {{ Add title here }}
```powershell
Get-AzMlWorkspace
```

```output
Name                 SystemDataCreatedAt  SystemDataCreatedBy  SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType Location ResourceGroupName
----                 -------------------  -------------------  ----------------------- ------------------------ ------------------------ ---------------------------- -------- -----------------
mlworkspace-portal01 5/5/2022 1:27:26 AM  v-diya@microsoft.com User                    5/5/2022 1:27:26 AM      v-diya@microsoft.com     User                         eastus   ml-rg-test
mlworkspace-cli01    5/18/2022 6:33:49 AM v-diya@microsoft.com User                    5/18/2022 6:33:49 AM     v-diya@microsoft.com     User                         eastus   ml-rg-test
mlworkspace-demo     5/25/2022 3:06:22 AM v-diya@microsoft.com User                    5/25/2022 3:06:22 AM     v-diya@microsoft.com     User                         eastus   ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
Get-AzMlWorkspace -ResourceGroupName ml-rg-test
```

```output
Name                 SystemDataCreatedAt  SystemDataCreatedBy  SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType Location ResourceGroupName
----                 -------------------  -------------------  ----------------------- ------------------------ ------------------------ ---------------------------- -------- -----------------
mlworkspace-portal01 5/5/2022 1:27:26 AM  v-diya@microsoft.com User                    5/5/2022 1:27:26 AM      v-diya@microsoft.com     User                         eastus   ml-rg-test
mlworkspace-cli01    5/18/2022 6:33:49 AM v-diya@microsoft.com User                    5/18/2022 6:33:49 AM     v-diya@microsoft.com     User                         eastus   ml-rg-test
mlworkspace-demo     5/25/2022 3:06:22 AM v-diya@microsoft.com User                    5/25/2022 3:06:22 AM     v-diya@microsoft.com     User                         eastus   ml-rg-test
```

{{ Add description here }}

### Example 3: {{ Add title here }}
```powershell
Get-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-cli01
```

```output
Name              SystemDataCreatedAt  SystemDataCreatedBy  SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType Location ResourceGroupName
----              -------------------  -------------------  ----------------------- ------------------------ ------------------------ ---------------------------- -------- -----------------
mlworkspace-cli01 5/18/2022 6:33:49 AM v-diya@microsoft.com User                    5/18/2022 6:33:49 AM     v-diya@microsoft.com     User                         eastus   ml-rg-test
```

{{ Add description here }}

