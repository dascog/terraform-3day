# Exercise 1.1 First Terraform Deployment

1. Download and unzip the 1.1-FirstDeployment directory from the website and put it somewhere accessible on your VM (like the desktop)
2. Open Visual Studio Code on your desktop and use File->Open Folder to open the folder you just created.
* If you prefer to navigate from a command line you can use PowerShell or Git Bash.
* If you are working on a Linux machine, navigate to the linux subdirectory. All the code should still work, but you will deploy an nginx webserver on port 8000, rather than a microsoft web application.
3. The folder has just this README.md file, and a single main.tf file. 
4. Bring up a terminal in VS Code by Terminal->New Terminal
5. Verify that terraform is installed by running the command ``terraform -v`` from the terminal command line. You should get the response ``Terraform v1.1.6 on windows_amd64``
6. Initialize Terraform in this directory by typing `terraform init` on the command line. You should see a green message telling you your initialization has been successful.
7. The main.tf file deploys an web application in a docker container on your VM. Type `terraform apply` to do the deployment.
8. Assuming all goes correctly, you will be prompted to indicate you want to create the resources listed by typing `yes`. Type `yes`. The application will then deploy and you should get a response like `Apply complete! Resources: 2 added, 0 changed, 0 destroyed.`
9. Check your deployment by navigating to localhost:8000 in your browser, or (in the windows terminal) typing 'iwr -useb http://localhost:8000'
10. Cleaning up your resources is easy! Just type `terraform destroy` in your command line.

# You have deployed your first application with Terraform!