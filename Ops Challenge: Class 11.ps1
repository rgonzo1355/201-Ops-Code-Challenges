# Enable File and Printer Sharing
Enable-NetFirewallRule -DisplayGroup "File and Printer Sharing"

# Allow ICMP traffic (ping)
Set-NetFirewallRule -Name FPS-ICMP4-ERQ-In -Enabled True
Set-NetFirewallRule -Name FPS-ICMP6-ERQ-In -Enabled True

# Enable Remote Management (WinRM)
Set-Service -Name "WinRM" -StartupType "Automatic"
Start-Service "WinRM"
Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP" -Enabled True

# Remove bloatware (uninstall unnecessary apps)
Get-AppxPackage -AllUsers | Where-Object { $_.Name -notlike "*Store*" } | Remove-AppxPackage

# Enable Hyper-V feature
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All

# Disable SMBv1
Set-SmbServerConfiguration -EnableSMB1Protocol $false
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB1 -Type DWORD -Value 0

# Display a summary of the changes made
Write-Host "Configuration completed successfully."

# You may also want to restart the computer to ensure all changes take effect.
# Restart-Computer
