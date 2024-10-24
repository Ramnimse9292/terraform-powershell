terraform {
  required_providers {
    powershell = {
      source  = "rfalias/powershell"
      version = "0.0.1"  # Correct version
    }
  }

  required_version = ">= 0.12"
}

provider "powershell" {
  # Configuration options can be added here if needed
}

resource "null_resource" "run_script" {
  provisioner "local-exec" {
    command = "powershell.exe -File ./script.ps1"
  }
}

output "script_output" {
  value = "Script executed successfully. Check output.txt for results."
}
