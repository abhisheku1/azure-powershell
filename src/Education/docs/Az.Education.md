---
Module Name: Az.Education
Module Guid: 7b058efe-fddb-4f8e-9f09-0bf8160b91aa
Download Help Link: https://docs.microsoft.com/powershell/module/az.education
Help Version: 1.0.0.0
Locale: en-US
---

# Az.Education Module
## Description
Microsoft Azure PowerShell: Education cmdlets

## Az.Education Cmdlets
### [Get-AzEducationGrant](Get-AzEducationGrant.md)
Get a list of grants that Microsoft has provided.

### [Get-AzEducationJoinRequest](Get-AzEducationJoinRequest.md)
get student join requests

### [Get-AzEducationLab](Get-AzEducationLab.md)
Get a list of labs associated with the provided billing account name and billing profile name.

### [Get-AzEducationStudent](Get-AzEducationStudent.md)
Get a list of details about students that are associated with the specified lab.

### [Get-AzEducationStudentLab](Get-AzEducationStudentLab.md)
Get a list of all labs associated with the caller of the API.

### [Grant-AzEducationGet](Grant-AzEducationGet.md)
Get details for a specific grant linked to the provided billing account and billing profile.

### [Invoke-AzEducationInviteApprove](Invoke-AzEducationInviteApprove.md)
Approve student joining the redeemable lab

### [Invoke-AzEducationInviteDeny](Invoke-AzEducationInviteDeny.md)
Deny student joining the redeemable lab

### [Invoke-AzEducationInviteGenerateCode](Invoke-AzEducationInviteGenerateCode.md)
Generate invite code for a lab

### [Invoke-AzEducationInviteRedeem](Invoke-AzEducationInviteRedeem.md)
Redeem invite code to join a redeemable lab

### [Invoke-AzEducationLabCreate](Invoke-AzEducationLabCreate.md)
Create a new lab or update a previously created lab.

### [Invoke-AzEducationLabDelete](Invoke-AzEducationLabDelete.md)
Delete a specific lab associated with the provided billing account name, billing profile name, and invoice section name.
Note all students must be removed from the lab in order to delete the lab.

### [Invoke-AzEducationLabGet](Invoke-AzEducationLabGet.md)
Get the details for a specific lab associated with the provided billing account name, billing profile name, and invoice section name.

### [Invoke-AzEducationStudentCreate](Invoke-AzEducationStudentCreate.md)
Create and add a new student to the specified lab or update the details of an existing student in a lab.
Note the student must have a valid tenant to accept the lab after they have been added to lab.

### [Invoke-AzEducationStudentDelete](Invoke-AzEducationStudentDelete.md)
Delete the specified student based on the student alias.

### [Invoke-AzEducationStudentGet](Invoke-AzEducationStudentGet.md)
Get the details for a specific student in the specified lab by student alias

### [Invoke-AzEducationStudentGetLab](Invoke-AzEducationStudentGetLab.md)
Get the details for a specified lab associated with the student lab.

