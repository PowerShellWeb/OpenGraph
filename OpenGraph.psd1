@{
    RootModule = 'OpenGraph.psm1'
    ModuleVersion = '0.0.1'
    GUID = 'be4e4070-1ea6-4a2e-8b6a-c6b7755e5ace'
    Author = 'JamesBrundage'
    CompanyName = 'Start-Automating'
    Copyright = '(c) 2025 Start-Automating'
    Description = 'Get OpenGraph with PowerShell'
    FunctionsToExport = 'Get-OpenGraph'
    AliasesToExport = 'OpenGraph', 'ogp'
    TypesToProcess = 'OpenGraph.types.ps1xml'
    PrivateData = @{
        PSData = @{
            Tags = @('OpenGraph','SEO', 'Web','PowerShellWeb')
            ProjectURI = 'https://github.com/PowerShellWeb/OpenGraph'
            LicenseURI = 'https://github.com/PowerShellWeb/OpenGraph/blob/main/LICENSE'
            ReleaseNotes = @'

> Like It? [Star It](https://github.com/PowerShellWeb/OpenGraph)
> Love It? [Support It](https://github.com/sponsors/StartAutomating)

Embed content from anywhere on the internet

## OpenGraph 0.0.1

* Initial Release of OpenGraph Module (#1)
    * `Get-OpenGraph` gets open graph information (#2)
    * OpenGraph objects can get `.HTML` (#8)
'@        
        }
    }
}

