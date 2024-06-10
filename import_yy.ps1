# Define the path to the .yyp project file
$projectFilePath = "C:\Users\StevenLocal\GameMakerProjects\Chemist\Chemist.yyp"

# Function to add a .yy file to the project file
function Add-YYFileToProject {
    param (
        [string]$yyFile
    )

    $yyPath = $yyFile.Substring((Get-Location).Path.Length + 1).Replace("\", "/")
    $yyName = [System.IO.Path]::GetFileNameWithoutExtension($yyFile)
    $resourceEntry = @{ id = @{ name = $yyName; path = $yyPath } }

    try {
        $projectContent = Get-Content -Path $projectFilePath -Raw | ConvertFrom-Json
    } catch {
        Write-Output "Error reading project file: $projectFilePath"
        return
    }

    # Ensure the 'resources' property exists
    if (-not $projectContent.PSObject.Properties.Match('resources')) {
        $projectContent | Add-Member -MemberType NoteProperty -Name resources -Value @()
    }

    # Check if the file is already in the project
    $existingResource = $projectContent.resources | Where-Object { $_.id.path -eq $yyPath }
    if ($null -eq $existingResource) {
        # Add the new resource entry to the project file
        $projectContent.resources += $resourceEntry

        # Convert back to JSON with formatting
        $formattedJson = $projectContent | ConvertTo-Json -Depth 10 | Out-String

        # Remove unwanted escape characters and format JSON
        $formattedJson = $formattedJson -replace '","', '",`n  "'
        $formattedJson = $formattedJson -replace '\[{', '[`n    {'
        $formattedJson = $formattedJson -replace '}\]', '}`n  ]'
        $formattedJson = $formattedJson -replace '},', '},`n  '
        $formattedJson = $formattedJson -replace '":\[', '": [`n  '
        $formattedJson = $formattedJson -replace '\{', '{`n    '
        $formattedJson = $formattedJson -replace '\}', '`n  }'
        $formattedJson = $formattedJson -replace '\],', ']`n  ,'
        $formattedJson = $formattedJson -replace '\],', '`],'
        $formattedJson = $formattedJson -replace '\},', '`},'

        Set-Content -Path $projectFilePath -Value $formattedJson
        Write-Output "Added $yyFile to the project."
    } else {
        Write-Output "$yyFile is already in the project."
    }
}

# Find all .yy files in the current directory and its subdirectories
$yyFiles = Get-ChildItem -Path . -Recurse -Filter *.yy

# Loop through each .yy file and add it to the project
foreach ($yyFile in $yyFiles) {
    Add-YYFileToProject -yyFile $yyFile.FullName
}

Write-Output "Import process completed."
