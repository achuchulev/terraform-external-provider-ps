data "external" "powershell_execution" {
  program = [
      "./pwsh", 
      "-Command", 
      "Get-Date", 
      "-Uformat", 
      "%Y-%m-%d"]
}
