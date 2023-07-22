# terraform-basics
Learning and Implement Terraform

In this repository, we are going to place all the needed bascis that are needed to kick start our Terraform Provisioning Capabilites.

Most of the information in terraform should be referred from terraform registry only :

    https://registry.terraform.io/?
Important Terminology In Terraform

    1) Arguments     : Properties of the resource as apart of the resource creation
    2) Attributes    : Properties of the resource which can be only after the resource creation.
    3) Providers
    4) Modules

Common Terraform Commands
    $ terraform init 
    $ terraform plan
    $ terraform apply -auto-approve 

If you want to supply any values of the variable from the command line.

    $ terraform plan -var VARNAME=value
    $ terraform apply -auto-approve -var VARNAME=value

-var / var-file > terraform.auto.tfvars > terraformtfvars > shell variables

These are the variables with least priorty and this can be supplied by shell using export
    $ export TF_VAR_varName=value

This is how we can supply the shell based variABLES 

## What exactly happens when you run a terraform plan 
```
when you run a terraform plan , terraform is going to check the current state of the INFRASTRUCTRE and then it validates with the what there is in the code that you're supplying against the terraform state file.

if there are any changes  ( how it comes to know ? Because of the above validation) then the terraform shows that to you during plan output

if you want to make changes then you need to apply 'terraform apply" , when you do terraform apply your state will also be updated

Eventually , your manual changes will be wiped up
```

## terraform has created some infrastructr and then you manually went and updated those changes on the INFRASTRUCTRE using console
## Now if you run Terraform apply  with the same old code , what will happend ??
```
For terraform whatever is there in the CODE and as per that PLAN will be generated and for terraform PLAN is the source of the truth , which means when you do a 'terraform-apply' ,all your manual changes will be wiped off

in 99% of the times , Majorly  a good setup will ensure you as a user won't be having write access on the console

only IAM role , which we use to configure JENKINS will only have right access   
```
## All the operations are supposed to go by terraform only, what all?
```
        READ
        WRITE
        UPDATE 
        DELETE
```
## Where should i store my statefile ?


## Data sources:
```
    This helps in extracting the information of the already existing resources on AWS and using this we can fetch the information of any existing resources 
```


IN a team based environment , you should nenver save your statefile locally and this is to ensure to collaborate in the same team based
environment

Its always recommened to save state on the top of of available REMOTE BACKENDS
```



In this training, we would be using the latest version of terraform v1.5.2 ( 10/July/2023 )

Terraform supports more 3,339 cloud providers and this keep on growing and this is the major reason why manority of the companies prefer to create infrastucture using terraform.

Terraform is an open-source infrastructure as code software tool that enables you to safely and predictably create, change, and improve infrastructure. It codifies cloud APIs into declarative configuration files that can be managed with version control.

Terraform can manage existing and infrastructure as code infrastructure.

Here are some of the benefits of using Terraform:

Reproducibility: Terraform's declarative configuration files make it easy to reproduce your infrastructure on demand. This is important for ensuring that your infrastructure is consistent and up-to-date.

Auditability: Terraform's state file tracks the changes that have been made to your infrastructure. This makes it easy to audit your infrastructure and track changes over time.

Cost-efficiency: Terraform can help you to optimize your infrastructure costs by automating the provisioning and decommissioning of resources.

Security: Terraform can help you to improve the security of your infrastructure by enforcing security policies and best practices. Here are some of the use cases for Terraform:

Provisioning and managing cloud resources: Terraform can be used to provision and manage resources in a variety of cloud providers, including AWS, Azure, and GCP.

Automating infrastructure deployments: Terraform can be used to automate the deployment of infrastructure, such as web servers, databases, and applications.

Orchestrating infrastructure changes: Terraform can be used to orchestrate changes to infrastructure, such as scaling up or down resources.

Managing multi-cloud infrastructure: Terraform can be used to manage infrastructure across multiple cloud providers.

Overall, Terraform is a powerful tool that can help you to manage your infrastructure more effectively and efficiently. If you are looking for a way to improve the reproducibility, auditability, cost-efficiency, and security of your infrastructure, then Terraform is a great option.

Here are some of the reasons why we need Terraform:

Infrastructure is becoming more complex: As the world becomes more digital, the infrastructure that supports it is becoming more complex. This makes it difficult to manage infrastructure manually.

Infrastructure is becoming more dynamic: Infrastructure is also becoming more dynamic, as changes are made more frequently. This makes it difficult to keep track of changes and ensure that infrastructure is always up-to-date.

The need for automation: The need for automation is growing as the complexity and dynamism of infrastructure increases. Terraform provides a way to automate the provisioning and management of infrastructure, which can help to improve efficiency and reduce errors.

I hope this helps! Let me know if you have any other questions.