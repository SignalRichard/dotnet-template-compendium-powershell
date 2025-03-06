# Compendium.PowerShell Template

Custom PowerShell template for dotnet new.

# Local Testing

```powershell
nuget pack Compendium.PowerShell.nuspec -NoDefaultExcludes -Version 0.0.1
dotnet new install Compendium.PowerShell.0.0.1.nupkg
dotnet new uninstall Compendium.PowerShell
```
