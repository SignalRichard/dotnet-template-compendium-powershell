# PowerShell Module

This dotnet template will create a new PowerShell module with boilerplate setup for the module and data files.  Please make sure to fill in the data file fields and attributes for `Author`, `Description`, `Tags`, and any other relevant fields.  Additionally, stubs for a class, public, and private functions as well as Pester tests have been created to get you up and running quickly.

## Getting Started

The following guide will get you started using the template, how to run Pester tests, and how to add classes and functions.

### dotnet new

To set up a new PowerShell module using the dotnet template run the following command

`dotnet new powershell --moduleName <name>`

### Quickstart

example:

```powershell
dotnet new powershell --moduleName Book
Import-Module -Name 'Pester' # Make sure you are using the latest version of Pester (eg >= 5.7), see: https://pester.dev/docs/introduction/installation
Invoke-Pester -Path './Book'
Import-Module -Name './Book'
$books = @(
    [Book]::new('Book 1', @{ powershell = 'module' })
    [Book]::new('Book 2', @{ powershell = 'module' })
)
$books[1].Name
$books | Find-Book -Name 'Book 1'
```

### Adding Classes

Add new classes in the `Classes` folder.  Once a new class has been added and you want it to be available when a user imports the module make sure to add it to the `$ExportableTypes` variable in the module file.

### Adding Functions

Public functions should be added in the `Public` folder.  New functions also need to be added to the `FunctionsToExport` field in the data file.  Private functions should be added in the `Private` folder and will only be accessible from within the module itself.

### Testing

This template comes with boilerplate tests using Pester for the built in files which tests both a function and a method of the class.  Make sure you are using the latest version of Pester (`>= 5.7`) - Pester comes pre-installed on Windows 10/Windows Server 2016 with an older version by default and newer versions can be installed side-by-side, see [https://pester.dev/docs/introduction/installation](https://pester.dev/docs/introduction/installation) for installation details.

## Documentation

For PowerShell documentation see, [https://learn.microsoft.com/en-us/powershell/scripting/how-to-use-docs?view=powershell-7.5](https://learn.microsoft.com/en-us/powershell/scripting/how-to-use-docs?view=powershell-7.5).

See [https://learn.microsoft.com/en-us/powershell/scripting/developer/module/how-to-write-a-powershell-module-manifest?view=powershell-7.5](https://learn.microsoft.com/en-us/powershell/scripting/developer/module/how-to-write-a-powershell-module-manifest?view=powershell-7.5) for details on writing a PowerShell module manifest.

For more information about using type accelerators to export classes see, [https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_classes?view=powershell-7.5#exporting-classes-with-type-accelerators](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_classes?view=powershell-7.5#exporting-classes-with-type-accelerators).

For details about PowerShell classes see, [https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_classes?view=powershell-7.5](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_classes?view=powershell-7.5).

For comment based help see, [https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comment_based_help?view=powershell-7.5](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comment_based_help?view=powershell-7.5).

For documentation and information about PowerShell Pester testing see, [https://pester.dev/](https://pester.dev/) and for more details about creatig unit tests within modules see, [https://pester.dev/docs/usage/modules](https://pester.dev/docs/usage/modules).
