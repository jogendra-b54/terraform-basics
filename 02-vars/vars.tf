variable "sample" {
    default = "Welcome to Terraform Basics"
}

output "sample-op" {
    value = var.sample
}