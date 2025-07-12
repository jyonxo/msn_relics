# MSN Relics Search Scripts

Us ex-MSN Chatters tend to spend absolutely ages trying to remember what nickname someone was called, what was their real name, who they were, what channels they idled on. The list goes on and on and as we get older... What I was like 13-14 when I started on MSN and now I am 38 (god that is depressing...), as we get older our memories get worse and we need a solution for this.

Fortunately all that time ago us brainiac scripters decided to keep a log of everyone on MSN, this repo is to keep the history of what we had together and make it searchable.

I hope you all have fun digging in the past, and please do contribute to this repo. Make sure at the top level is your nickname and under is the script you were using at the time.

Follow like so:
```
└─sky
    ├─rewt
    ├─skymx
    ├─terminal
    └─terminal2
```

Enjoy Guys

-- Sky

This repository provides three scripts for recursively searching for a string in all files within the current directory and its subdirectories. Each script is tailored for a specific operating system and command line environment.

## Scripts Overview

- **Windows Batch Script:** [`search.bat`](search.bat)
- **Windows PowerShell Script:** [`search.ps1`](search.ps1)
- **Unix/Linux/macOS Shell Script:** [`search.sh`](search.sh)

---

## Usage

### 1. Windows Command Prompt (`search.bat`)

**Run from Command Prompt:**
```sh
search.bat <search_string>
```

**Example:**
```sh
search.bat "error message"
```

**Description:**  
Recursively searches for `<search_string>` in all files under the current directory. The output includes file paths and line numbers for each match.

---

### 2. Windows PowerShell (`search.ps1`)

**Run from PowerShell:**
```powershell
PowerShell.exe -File search.ps1 <search_string>
```

**Example:**
```powershell
PowerShell.exe -File search.ps1 "error message"
```

**Description:**  
Recursively searches for `<search_string>` in all files under the current directory. The output includes file paths, line numbers, and the matching line content.

---

### 3. Unix/Linux/macOS Shell (`search.sh`)

**Run from Terminal:**
```sh
bash search.sh <search_string>
```

**Example:**
```sh
bash search.sh "error message"
```

**Description:**  
Recursively searches for `<search_string>` in all files under the current directory. The output includes file paths and line numbers for each match, with matched text highlighted.

---

## Notes

- All scripts search case-insensitively by default.
- Make sure to provide the search string in quotes if it contains spaces.
- You may need to give execute permissions to `search.sh` on Unix-like systems:
  ```sh
  chmod +x search.sh
  ```

---

## File Reference

- [search.bat](search.bat)
- [search.ps1](search.ps1)
- [search.bat](search.bat)