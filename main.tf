terraform {
  required_providers {
    powershell = {
      source  = "rfalias/powershell"
      version = "0.0.1"  # Use a valid version if available
    }
  }
}

resource "null_resource" "run_script" {
  provisioner "local-exec" {
    command = "powershell.exe -ExecutionPolicy Bypass -File .\\script.ps1"
  }
}
