data "external" "powershell_execution" {
  program = [
      "./ps/pwsh", 
      "-Command", 
      "Get-Date", 
      "-Uformat", 
      "%Y-%m-%d"]
}
