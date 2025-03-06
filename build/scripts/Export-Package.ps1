param (
    [String] $Nuspec,
    [string] $SemanticVersion
)

nuget pack $Nuspec -NoDefaultExcludes -OutputFileNamesWithoutVersion -Version $SemanticVersion
