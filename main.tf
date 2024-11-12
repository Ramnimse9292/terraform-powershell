terraform {
  required_providers {
    powershell = {
      source  = "rfalias/powershell"
      version = "0.0.1"
    }
  }
}

# Define the powershell provider (if needed for other tasks)
provider "powershell" {
  # Any specific configuration related to the powershell provider goes here (if needed)
}

# Use a null_resource with local-exec to run a PowerShell script locally
resource "null_resource" "run_powershell_script" {
  provisioner "local-exec" {
    command = "pwsh -ExecutionPolicy Bypass -File ${path.module}/script.ps1"
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}

output "powershell_output" {
  value = "PowerShell script executed."
}


