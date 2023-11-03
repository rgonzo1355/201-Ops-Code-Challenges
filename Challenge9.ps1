# Task 1: Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt
# Reference: For more information, visit the Microsoft PowerShell Management Module documentation at:
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/?view=powershell-5.1
# -FilterHashTable: Filter the events by their creation time
# -Append: Append the output to the existing file, instead of overwriting it
Get-WinEvent -LogName System -MaxEvents 1 | Where-Object { $_.TimeCreated -ge (Get-Date).AddDays(-1) } | Out-File -Append "last_24.txt"

# Task 2: Output all "error" type events from the System event log to a file on your desktop named errors.txt
# Reference: For more information, visit the Microsoft PowerShell Management Module documentation at:
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/?view=powershell-5.1
# -FilterHashTable: Filter the events by their level
# -Force: Overwrite the output file, even if it already exists
# -Append: Append the output to the existing file, instead of overwriting it
Get-WinEvent -LogName System | Where-Object { $_.LevelDisplayName -eq "Error" } | Out-File -Force -Append "errors.txt"

# Task 3: Print to the screen all events with ID of 16 from the System event log
# Reference: For more information, visit the Microsoft PowerShell Management Module documentation at:
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/?view=powershell-5.1
# -FilterHashTable: Filter the events by their ID
# -Select-Object: Select only the properties that you are interested in
Get-WinEvent -LogName System | Where-Object { $_.Id -eq 16 } | Select-Object -Property Id, Source, TimeCreated | Format-Table

# Task 4: Print to the screen the most recent 20 entries from the System event log
# Reference: For more information, visit the Microsoft PowerShell Management Module documentation at:
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/?view=powershell-5.1
# -MaxEvents: Return the most recent 20 events, ONLY WORKS on ADMIN POWERSHELL
# -Sort-Object: Sort the events by their creation time in descending order
Get-WinEvent -LogName System -MaxEvents 20 | Sort-Object -Descending TimeCreated | Format-Table

# Task 5: Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed.
Get-WinEvent -LogName System -MaxEvents 500 | Select-Object -Property Source | Format-Table -Wrap

# Resource: For additional resources and examples, visit the Codefellows Seattle Ops 201 class GitHub repository at:
# https://github.com/codefellows/seattle-ops-201d5
