# variable "sample" {
#     default = "Welcome to Terraform Basics"
# }

# variable "sample_op" {
#     value = "Welcome to Terraform Basics"
# }

# output "sample_var_op" {
#     value = "value of the variable is ${var.sample_op}"
# }

# A variable can be accessed directly by caling it as var.variableName but if you'r accessing in between a 
#set of String ,then you need to enclose them in quotes and it should be reffered using ${var.varName}

# in terraform there is no concept of Single quotes

#List variable
variable "example_list" {
  default = [
        "AWS",
        "DevOps",
          55 ,
        "Trainer",
        "Terraform"
  ]
}
#You also need to try to understand the data in the List Object doesn't necessary to be of the same data type

output "example_list_op" {
  value = "Welcome to DevOps with AWS  ${var.example_list[1]} Training with ${var.example_list[0]} Training and this is our batch ${var.example_list[2]} and the current Topic is ${var.example_list[4]}"
}
