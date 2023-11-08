# Enable File and Printer Sharing
# Netsh advfirewall firewall add rule name="Allow incoming ping request IPv4: dir=allow protocol=icpmv4
Enable-NetFirewallRule -DisplayGroup "File and Printer Sharing"

# Allow ICMP traffic (ping)
Set-NetFirewallRule -Name FPS-ICMP4-ERQ-In -Enabled True
Set-NetFirewallRule -Name FPS-ICMP6-ERQ-In -Enabled True

# Enable Remote Management (WinRM)
# 1a   Enable-PSRemoting -force
# 1b   Set-Item WSMan:\localhost\Client\TrustedHost -Value "IP Address of client"
Set-Service -Name "WinRM" -StartupType "Automatic"
Start-Service "WinRM"
Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP" -Enabled True

# Remove bloatware (uninstall unnecessary apps)
# 
Get-AppxPackage -AllUsers | Where-Object { $_.Name -notlike "*Store*" } | Remove-AppxPackage
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

# Enable Hyper-V feature
# Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V
# Enable_WindowsOptionFeature -Online -FeatureName Microsoft-Hyper-V -all
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All

# Disable SMBv1
# 1a   Get-SmbServerConfiguration  # Should be false
# 1b   Get-SmbServerConfiguration -EnableSMB1 Protocol $false -Force

Set-SmbServerConfiguration -EnableSMB1Protocol $false
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB1 -Type DWORD -Value 0

# Display a summary of the changes made
Write-Host "Configuration completed successfully."

# You may also want to restart the computer to ensure all changes take effect.
# Restart-Computer
