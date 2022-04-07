@echo off
terraform init -auto-approve
terraform plan
terraform apply -auto-approve
pause