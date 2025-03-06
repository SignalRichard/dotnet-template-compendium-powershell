<#
 .Synopsis
  Finds a compendium by name in an array.

 .Description
  Given an array of Compendium, finds an exact match by name.

  .Parameter Source
  The array of Compendium to search.

 .Parameter Name
  The name of the Compendium to find.

 .Example
   # Find by name
   @([Compendium]::new('Atelier', @{'tag' = 'value'})) | Find-Compendium -Name 'Atelier'
#>
function Find-Compendium {
    [CmdletBinding()]
    [OutputType([Compendium[]])]
    param(
        [Parameter(Mandatory, ValueFromPipeline)]
        [Compendium[]] $Source,

        [ValidateNotNullOrEmpty()]
        [string] $Name
    )

    begin {
        Write-Verbose -Message "Begin Find-Compendium"
    }

    process {
        $Source | Where-Object { $_ | Test-Compendium -Name $Name }
    }

    end {
        Write-Verbose -Message "End Find-Compendium"
    }
}

Export-ModuleMember -Function Find-Compendium
