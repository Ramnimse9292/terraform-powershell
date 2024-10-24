terraform {
  required_providers {
    powershell = {
      source  = "rfalias/powershell"
      version = "0.0.1"
    }
  }
}

provider "powershell" {}

resource "powershell_script" "run_script" {
  script = file("script.ps1")
  
  # Optionally set execution policy
  execution_policy = "Bypass"
}
