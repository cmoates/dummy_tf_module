locals {
  myvar = "fern"
}

output "myvar" {
  value = local.myvar
}