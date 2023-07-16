variable "sample" {
    default = "Welcome to Terraform Basics"
}

output "sample-op" {
    value = var.sample
}

output "sample-var-op" {
    value = "value of the variable is ${var.sample-op}"
}

# A variable can be accessed directly by caling it as var.variableName but if you'r accessing in between a 
#set of String ,then you need to enclose them in quotes and it should be reffered using ${var.varName}

# in terraform there is no concept of Single quotes