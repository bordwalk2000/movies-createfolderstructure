param (
    [Parameter(Mandatory=$true, Position=0)]
    [string] $MovieFolderName
)

#Create Parent Folder
New-Item -ItemType Directory $MovieFolderName

#Define Special Features Folders
$Folders = 'Behind The Scenes','Deleted Scenes','Featurettes','Interviews','Scenes','Shorts','Trailers','Other'

#Create Special Features Folders
foreach ($Folder in $Folders) {
    New-Item -ItemType Directory -Path $MovieFolderName -Name $Folder
}