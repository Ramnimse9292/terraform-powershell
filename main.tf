terraform {
  required_providers {
    powershell = {
      source  = "rfalias/powershell"
      version = "0.0.1"
    }
  }
}

provider "powershell" {}

resource "null_resource" "run_script" {
  provisioner "local-exec" {
    command = "powershell -ExecutionPolicy Bypass -File script.ps1"
  }
}
