locals {
  location = "USA"
  department = "Costuming"
  ppsid = "1234567"
}

#data "http" "ip" {
#  url = "https://ifconfig.me"
#  url = "http://localhost/test.html"
#}

data "http" "ppsid" {
  url = "http://localhost?type=ppsid&project=${var.project_id}"
}

data "http" "location" {
  url = "http://localhost?type=location&project=${var.project_id}"
}

data "http" "department" {
  url = "http://localhost?type=department&project=${var.project_id}"
}

variable "project_id" {
  type = string
}

output "project_id" {
  value = var.project_id
}

output "location" {
  value = data.http.location.body
}

output "department" {
  value = data.http.department.body
}

output "ppsid" {
  value = data.http.ppsid.body
}
