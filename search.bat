@echo off
:: This script recursively searches for a given string in files within the current directory and its subdirectories.

:: --- DEBUGGING START ---
echo Debugging: Raw argument 1 (%%1): "%1"
echo Debugging: Cleaned argument 1 (%%~1): "%~1"
:: --- DEBUGGING END ---

:: Check if a parameter is provided
if "%~1"=="" (
  goto :ShowUsage
)

set "SEARCH_TERM=%~1"
set "CURRENT_DIR=."

echo Recursively searching for '%SEARCH_TERM%' in directory '%CURRENT_DIR%' and its subdirectories...
echo ----------------------------------------------------

:: Use findstr to search for the string recursively
:: /S: Searches for matching files in the current directory and all subdirectories.
:: /I: Specifies that the search is not case-sensitive.
:: /N: Prints the line number before each line that matches.
:: /M: Prints only the filename if a file contains a match (we'll combine with /N to get line numbers too)
:: /C:"string": Specifies a literal search string.
:: "%CURRENT_DIR%\*.*": Specifies to search all files in the current directory and subdirectories.
findstr /S /I /N /C:"%SEARCH_TERM%" "%CURRENT_DIR%\*.*"

echo ----------------------------------------------------
echo Search completed.
exit /b 0

:: Function to display script usage
:ShowUsage
echo Usage: %~nx0 ^<search_string^>
echo Example: %~nx0 "error message"
exit /b 1