terraform {
  required_providers {
    powershell = {
      source  = "rfalias/powershell"
      version = "0.0.1"  # Specify the correct version
    }
  }
  required_version = ">= 0.12"
}

resource "null_resource" "run_script" {
  provisioner "local-exec" {
    command = "powershell.exe -File ./script.ps1"
  }
}

output "script_output" {
  value = file("output.txt")
}
