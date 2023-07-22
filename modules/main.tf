/* This is an example of calling modules for a local source and hence we call a local modules
 modules can be in a separate repository or in the same repository where your actual code reside
 you can also save your modules in a s3 Bucket and can call it accordingly

Root module : is a place where we are going to execute the terraform commands */
module "ec2" {
  
  source = "./ec2"
  sg =   module.sg.sgid     # Step 2: pass the output declared in the source module to this root module
}
module "sg" {
  
  source = "./sg"
}

 output "public_ip_address" {
  
  value = module.ec2.public_ip         # this is goin to fetch the outout and print 
}