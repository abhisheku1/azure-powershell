$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMachineLearningWorkspacesCodeVersion.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'New-AzMachineLearningWorkspacesCodeVersion' {
    It 'CreateExpanded' {
        New-AzMlWorkspaceCodeVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name 'codepwsh01' -Version 1 -CodeUri "https://mlworkspacepor8056718628.blob.core.windows.net/azureml-blobstore-dc0f7f2b-686d-417b-a456-6c09def791f5/LocalUpload/a8da6e3978c9f8b1cb03501595a9142f/src"
    }
}
