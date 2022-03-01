# Exercise 0.5b The Terraform Configuration Language II
This exercise combines a series of hashicorp terraform tutorials that cover some of the configuration language features we have learned so far.
## 1. Query Data Sources (20-30min)
- https://learn.hashicorp.com/tutorials/terraform/data-sources

## 2. Protect Sensitive Input Variables (20-30mins)
- In the following tutorial the "Set values with environment variables" section requires setting environment variables. On your VMs this is best done in a windows PowerShell. Using the VSCode desktop, open a PowerShell by clicking on the down arrow beside the + on the top right of your bash terminal. Then following the Windows PowerShell instructions in the tutorial
- https://learn.hashicorp.com/tutorials/terraform/sensitive-variables?in=terraform/configuration-language 

## 3. Output Data from Terraform (20mins)
- https://learn.hashicorp.com/tutorials/terraform/outputs

## 4. Simplify Terraform Configuration with Locals
- https://learn.hashicorp.com/tutorials/terraform/locals?in=terraform/configuration-language

## 5. Build and Use a Local Module (15mins)
- the git repository for this tutorial actually has all the solution code already entered, so you just need to go through an verify you understand each step. 
- Note that you must set your bucket name to a *unique*, valid S3 bucket, you will need to change the code at this point. 
- In your Git bash shell on your Windows VM you can verify your website using the command:
  ``start chrome https://$(terraform output -raw website_bucket_name).s3-us-west-2.amazonaws.com/index.html`` 
  or
  ``curl https://$(terraform output -raw website_bucket_name).s3-us-west-2.amazonaws.com/index.html`` 
  on any other platform.
- https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules

## 6. Refactor a Monolithic Terraform Configuration (20mins)
- This tutorial offers you an interactive terminal, if it does not launch just use your normal VM environment.
- https://learn.hashicorp.com/tutorials/terraform/organize-configuration?in=terraform/modules
- 