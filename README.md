# Compendium.PowerShell Template

Custom PowerShell template for dotnet new.

# Local Testing

```powershell
nuget pack Compendium.PowerShell.nuspec -NoDefaultExcludes -OutputFileNamesWithoutVersion -Version 1.0.0
dotnet new install Compendium.PowerShell.nupkg
dotnet new uninstall Compendium.PowerShell
```
