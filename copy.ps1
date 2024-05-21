$destinationDir = "C:\Path\To\Your\Destination\Folder"
if (-Not (Test-Path -Path $destinationDir)) {
    New-Item -Path $destinationDir -ItemType Directory
}
Get-ChildItem -Recurse -Filter *Day*.mp4 | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination $destinationDir
}
