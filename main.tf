#locals {
#  location = "USA"
#  department = "Costuming"
#  ppsid = "1234567"
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

output "matched_project" {
  # Placeholder, will need to be an additional HTTP call
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
