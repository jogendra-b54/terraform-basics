city = "Bengaluru"
#state = "AndhraPradesh"
# You can declare all the values or the default values in a file that ends with terraform.tfvars

# Any file that ends with .tfvars is the variables file with values in it

# Terraform by default  recognizes the file with the name "terraform.tfvars" and if you declare variables in any other file apart file from terraform.tfvars
# then you need to explicitly mention that you'r using this file as tfvars file

# Why we pass the values of a variable in a separate file ??

/* We   are going to create single terraform code and this should have the capability to create multiple environments just based on supplying
MUltiple terrraform vars files 

 EX.prod.tfvars , sandbox.tfvars , qa.tfvars , test.tfvars , terraform.tfvars

*/