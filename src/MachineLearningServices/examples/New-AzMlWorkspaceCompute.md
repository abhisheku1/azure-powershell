### Example 1: {{ Add title here }}
```powershell
$aml = New-AzMLWorkspaceAmlComputeObject -OSType 'Linux' -VMSize "STANDARD_DS3_V2" -ScaleSettingMaxNodeCount 8 -ScaleSettingMinNodeCount 0 -RemoteLoginPortPublicAccess 'NotSpecified' -EnableNodePublicIP
New-AzMlWorkspaceCompute -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name aml01 -Location eastus -Compute $aml
```

```output
Name  SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType AzureAsyncOperation Location ResourceGroupName
----  ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- ------------------- -------- -----------------
aml01                                                                                                                                                                    eastus   ml-rg-test
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

