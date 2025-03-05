[NoRunspaceAffinity()]
class Compendium {
    [string] $Name
    hidden [string[]] $Pages

    Compendium([string] $Name, [string[]] $Pages) {
        $this.Init(@{
            Name = $Name
            Pages = $Pages
        })
    }

    hidden [void] Init([hashtable] $Properties) {
        foreach($Property in $Properties.Keys) {
            $this.$Property = $Properties.$Property
        }
    }

    [string] Read([int] $pageNumber) {
        Write-Verbose -Message "Called `$this.Read($pageNumber)"

        return $this.Pages[$pageNumber]
    }
}
