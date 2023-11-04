# Fetch info about running processes

# 1. Print all active processes ordered by highest CPU time consumption at the top
Get-Process | Sort-Object -Property CPU -Descending | Format-Table -AutoSize

# 2. Print all active processes ordered by highest Process Identification Number at the top
Get-Process | Sort-Object -Property Id -Descending | Format-Table -AutoSize

# 3. Print the top five active processes ordered by highest Working Set (WS(K)) at the top
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5 | Format-Table -AutoSize

# 4. Start a browser process (Google Chrome, msedge) and open https://owasp.org/www-project-top-ten/
Start-Process "chrome" "https://owasp.org/www-project-top-ten/"
Start-Process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "https://owasp.org/www-project-top-ten/"
Stop-Process -Name msedge



# 5. Start the process Notepad ten times using a for loop
for ($i = 1; $i -le 10; $i++) {
    Start-Process "notepad"
}

# 6. Close all instances of Notepad (both of this commands work but I preffer the short one.
Get-Process | Where-Object { $_.ProcessName -eq "notepad" } | ForEach-Object { Stop-Process -Id $_.Id }
Get-Process -Name notepad | Stop-Process


# 7. Kill a process by its Process Identification Number (e.g., Google Chromem, msedge)
# Be cautious and ensure you choose a process that won't destabilize the system
# Get the PID of the Microsoft Edge process
$processPid = (Get-Process -Name "msedge").Id

# If the Microsoft Edge process exists, kill it
if ($processPid) {
    Stop-Process -Id $processPid

    # Write a message to the console indicating that the process was killed
    Write-Host "Microsoft Edge process killed successfully."
} else {
    # Write a message to the console indicating that the process was not found
    Write-Host "No Microsoft Edge process found to kill."
}
