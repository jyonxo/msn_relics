# This script recursively searches for a given string in files within the current directory and its subdirectories.

# Function to display script usage
function Show-Usage {
  Write-Host "Usage: PowerShell.exe -File $($MyInvocation.MyCommand.Name) <search_string>"
  Write-Host "Example: PowerShell.exe -File $($MyInvocation.MyCommand.Name) \"error message\""
  exit 1
}

# Check if a parameter is provided
if (-not $args) {
  Show-Usage
}

$SEARCH_TERM = $args[0]
$CURRENT_DIR = "."

Write-Host "Recursively searching for '$SEARCH_TERM' in directory '$CURRENT_DIR' and its subdirectories..."
Write-Host "----------------------------------------------------"

# Use Get-ChildItem to get all files recursively and pipe to Select-String
# -Recurse: Recursively searches subdirectories
# -Path: Specifies the path to search (can be wildcard)
# -Pattern: The string to search for
# -CaseSensitive: Performs a case-sensitive search (remove for case-insensitive, which is default for Select-String)
# -LineNumber: Displays the line number where the match was found
# -AllMatches: Finds all occurrences of the search term in each line
Get-ChildItem -Path $CURRENT_DIR -Recurse -File | Select-String -Pattern $SEARCH_TERM -CaseSensitive:$false -AllMatches | ForEach-Object {
    Write-Host "$($_.Path)[$($_.LineNumber)]: $($_.Line)"
}
Write-Host "----------------------------------------------------"
Write-Host "Search completed."
