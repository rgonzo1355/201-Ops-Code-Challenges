# Function to retrieve the IPv4 address of the local computer
function Get-LocalIPv4Address {
    # Create a local file called network_report.txt and store the output of ipconfig /all (same as grep in linux)
    ipconfig /all | Out-File -FilePath network_report.txt

    # Use Select-String to search for the IPv4 address associated with your network adapter
    $ipv4Address = Select-String -Path network_report.txt -Pattern 'IPv4 Address.*: (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})' | ForEach-Object {
        # Extract the IP address from the matched pattern
        $_.Matches.Groups[1].Value
    }

    # Remove the network_report.txt file
    Remove-Item -Path network_report.txt

    return $ipv4Address
}

# Call the function and store the local IPv4 address in a variable
$localIPv4Address = Get-LocalIPv4Address

# Display the local IPv4 address
Write-Host "Local IPv4 Address: $localIPv4Address"
# References:
# https://chat.openai.com/share/582152bf-ed75-4834-9dea-7a3024731d94 
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-string?view=powershell-7.3&viewFallbackFrom=powershell-7.1 
