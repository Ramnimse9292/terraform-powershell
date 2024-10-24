terraform {
  required_providers {
    powershell = {
      source  = "rfalias/powershell"
      version = "~> 0.1"
    }
  }
}

provider "powershell" {}

resource "powershell_script" "hello_world" {
  script = file("hello.ps1")

  # Optionally, you can specify the execution policy
  execution_policy = "Bypass"
}
