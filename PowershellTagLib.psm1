Function Get-Tag([String]$Path) {
    Return [TagLib.File]::Create($Path).Tag
}

Function Get-Title([String]$Path) {
    Return (Get-Tag($Path)).Title
}

Function Get-Artist([String]$Path) {
    Return (Get-Tag($Path)).Performers
}

Function Get-Album([String]$Path) {
    Return (Get-Tag($Path)).Album
}

Function Get-Comment([String]$Path) {
    Return (Get-Tag($Path)).Comment
}

Function Set-Tag([String]$Path, [String]$Name, $Value) {
    $Meta = [TagLib.File]::Create($Path)
    $Meta[$Name] = $Value
    $Meta.Save()
}

Function Set-Title([String]$Path, [String]$Title) {
    $Meta = [TagLib.File]::Create($Path)
    $Meta.Tag.Title = $Title
    $Meta.Save()
}

Function Set-Artist([String]$Path, [String[]]$Artist) {
    $Meta = [TagLib.File]::Create($Path)
    $Meta.Tag.AlbumArtists = $Meta.Tag.Performers = $Artist
    $Meta.Save()
}

Function Set-Album([String]$Path, [String]$Album) {
    $Meta = [TagLib.File]::Create($Path)
    $Meta.Tag.Album = $Album
    $Meta.Save()
}

Function Set-Comment([String]$Path, [String]$Comment) {
    $Meta = [TagLib.File]::Create($Path)
    $Meta.Tag.Comment = $Comment
    $Meta.Save()
}