terraform {
  required_providers {
    powershell = {
      source  = "rfalias/powershell"
      version = "0.0.1"
    }
  }

  required_version = ">= 0.12"
}

provider "powershell" {
  # No specific configuration needed here
}

resource "null_resource" "run_script" {
  provisioner "local-exec" {
    command = "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -File ./script.ps1"
  }
}

output "script_output" {
  value = "Script executed successfully. Check output.txt for results."
}
