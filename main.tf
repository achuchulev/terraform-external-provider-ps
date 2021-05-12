
data "external" "powershell_execution" {
  program = [
    "ps-linux-x64/pwsh",
    "date.ps1"]
}
