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