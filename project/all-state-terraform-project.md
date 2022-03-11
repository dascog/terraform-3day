# Deploy a Java Based Sprint Boot Application Using Terraform

To be completed in your breakout groups on the final afternoon.

This exercise gets more sophisticated as you proceed

1. First you will write a configuration that deploys a standalone Java Spring application that requires no database to an EC2 instance and run it, making sure it works. 
2. Then you will deploy the same app, but with a version that requires a database. 
3. Then you will look at a configuration that creates an auto-scaled, load balanced deployment of the application.


## The Basic Application (no database)
The basic application can be found at https://tinyurl.com/CompactDiscRestNoDatabase. 

## The Database Application Connected to an Existing Database
Databases tend to require persistent infrastructure and should be deployed independently of applications needing to access them. For this part of the project you should deploy an EC2 instance as you did in the previous section, but now with an application that requires access to a database to run. The application jar can be found at https://tinyurl.com/CompactDiscRestWithDatabase. 

To get the connection working properly you will need to create a file called application.properties in the same directory as the jar file on your EC2 instance. This file should contain the following:

```
spring.datasource.url=jdbc:mysql://cloudessentialsworkshop.cfw1ttrlhzus.eu-west-2.rds.amazonaws.com:3306/conygre?useSSL=false
spring.datasource.username=root
spring.datasource.password=***REMOVED***1
```

## The Database Application Behind an Elastic Load Balancer
In this step you will deploy exactly the same application setup as in the previous step, but this time it will deploy behind as instances spawned by an ELB. 
- You can use as a basis the demo walkthrough we did for deploying a load balanced app (under demo/autoscaling-ec2 on the website), together with your previous deployment.
- create the security keys and include them 
- make sure that your load balancer health check target is set to "HTTP:8080/api/" which is the api destination page on the EC2 instances.

## Deploy Your Own Database Using Teraform
For this section you will provision a MySQL


## The Database Application
Databases tend to require persistent infrastructure and should be deployed independently of applications needing to access them. For the following two sections you should provision a MySQL database using a different Terraform configuration to your application configuration, and access the database using remote login credentials. 
- Create a Terraform configuration and deploy a MySQL database using the aws_db_instance resource. This should be initialized using the schema.sql file in the project directory. You can test your MySQL installation using the MySQL workbench in your VMs to connect to the remote db. 
- Copy your Basic Application to a new directory and change the application file to https://tinyurl.com/CompactDiscRestWithDatabase. The application will run but fail to load because of the lack of database connection. 
- To connect to the remote database Spring Boot needs a configuration file called application.properties in the same directory as your jar file, with contents as follows:

```
spring.datasource.url=jdbc:mysql://<your-database-dns>:<your-database-port>/conygre
spring.datasource.username=username
spring.datasource.password=password
```

You will need to generate this file as part of your configuration using the terraform_remote_state data source to insert the information from the database configuration.

The deployment process should follow closely the demo/lab you saw during the course. The schema file for the database is in the project directory. Once you have created the database with the necessary schema, use the terraform_remote_state data source in your application configuration to access 

We will use the AWS RDS provider to provision a MySQL database. 
Once it is provisioned, either use the RDS console or the mysql CLI to access: CLI command- 
$mysql -u $(terraform output -raw rds_username) -p -h $(terraform output -raw rds_hostname) -P $(terraform output -raw rds_port)