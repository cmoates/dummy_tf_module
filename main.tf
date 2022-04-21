locals {
  location = "USA"
  department = "Costuming"
  ppsid = "1234567"
}

data "http" "ip" {
  url = "https://ifconfig.me"
}

output "location" {
  value = local.location
}

output "department" {
  value = local.department
}

output "ppsid" {
  value = local.ppsid
}

output "ip" {
  value = data.http.ip.body
}

output "author" {
  value = "cmoates"
}

output "extra" {
  value = "testing"
}