variable "my_test" {
  default = "This is a testing"
}


output "testing_ouput" {
    value=var.my_test
}