
data "external" "powershell_execution" {
  program = [
    "./ps-linux-x64/pwsh",
    "-Command",
    "Get-Date",
    "-Uformat",
    "%Y-%m-%d"]
}