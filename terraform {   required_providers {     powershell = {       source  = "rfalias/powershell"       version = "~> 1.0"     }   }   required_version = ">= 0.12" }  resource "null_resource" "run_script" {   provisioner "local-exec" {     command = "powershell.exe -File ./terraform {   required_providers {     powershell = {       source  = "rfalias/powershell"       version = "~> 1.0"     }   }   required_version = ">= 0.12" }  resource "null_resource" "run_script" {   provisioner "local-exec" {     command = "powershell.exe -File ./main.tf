terraform {
  required_providers {
    powershell = {
      source  = "rfalias/powershell"
      version = "~> 1.0"
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
