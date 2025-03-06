<#
 .Synopsis
  Tests whether the Compendium provided matches the name provided.

 .Description
  Given a Compendium and a name, tests whether the name matches the Compendium's name.

  .Parameter InputObject
  The Compendium to test.

 .Parameter Name
  The name to test.

 .Example
   # Find by name
   $compendium | Test-Compendium -Name $name
#>
function Test-Compendium {
    [CmdletBinding()]
    [OutputType([boolean])]
    param(
        [Parameter(Mandatory, ValueFromPipeline)]
        [Compendium] $InputObject,

        [ValidateNotNullOrEmpty()]
        [string] $Name
    )

    begin {
        Write-Verbose -Message "Begin Test-Compendium"
    }

    process {
        $InputObject.Name -eq $Name
    }

    end {
        Write-Verbose -Message "End Test-Compendium"
    }
}
