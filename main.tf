locals {
  location = "USA"
  department = "Costuming"
  ppsid = "1234567"
}

data "http" "ip" {
#  url = "https://ifconfig.me"
  url = "http://localhost/test.html"
}

data "http" "ppsid" {
  url = "http://localhost?type=ppsid&location=${local.location}"
}

output "location" {
  value = local.location
}

output "department" {
  value = local.department
}

output "ppsid" {
  value = data.http.ppsid.body
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