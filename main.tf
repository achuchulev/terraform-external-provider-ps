# data "external" "powershell_execution" {
#   program = [
#     "ps-linux-x64/pwsh",
#     "./date.ps1"]
# }

resource "null_resource" "ps1" {
  triggers = {
    uuid = uuid() # re-creates null_resource on every run
  }
  provisioner "local-exec" {
    command = <<EOH

# download the powershell '.tar.gz' archive
curl -OL https://github.com/PowerShell/PowerShell/releases/download/v7.1.3/powershell-7.1.3-linux-x64.tar.gz

# extract powershell to the target folder
tar -zxf powershell-7.1.3-linux-x64.tar.gz

# Set execute permissions
chmod +x pwsh

# Do some command with ./pwsh
./pwsh -Command Get-Date -Uformat "%Y-%m-%d"
EOH
  }
}
