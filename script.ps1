# script.ps1
$OutputFile = "output.txt"
"Hello, Terraform!" | Out-File -FilePath $OutputFile
