# Deploy a Java Based Sprint Boot Application Using Terraform

To be completed in your breakout groups on the final afternoon.

This exercise gets more sophisticated as you proceed

1. First you will write a configuration that deploys a standalone Java Spring application that requires no database to an EC2 instance and run it, making sure it works. 
2. Then you will deploy the same app, but with a version that requires a database. 
3. Then you will look at a configuration that creates an auto-scaled, load balanced deployment of the application.


## The Basic Application (no database)
The basic application can be found at http://training.conygre.com/allstate/CompactDiscRestNoDatabase.jar. 

## The Database Application
Databases tend to require persistent infrastructure and should be deployed independently of applications needing to access them. For the following two sections you should provision a MySQL database using a different Terraform configuration to your application configuration, and access the database using remote login credentials. 
- Create a Terraform configuration and deploy a MySQL database using the aws_db_instance resource. This should be initialized using the schema.sql file in the project directory. You can test your MySQL installation using the MySQL workbench in your VMs to connect to the remote db. 
- Copy your Basic Application to a new directory and change the application file to http://training.conygre.com/allstate/CompactDiscRestDatabase.jar. The application will run but fail to load because of the lack of database connection. 
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