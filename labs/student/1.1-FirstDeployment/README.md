# Exercise 1.1 First Terraform Deployment

1. Download and unzip the 1.1-FirstDeployment directory from the website and put it somewhere accessible on your VM (like the desktop)
2. Open Visual Studio Code on your desktop and use File->Open Folder to open the folder you just created.
* If you prefer to navigate from a command line you can use PowerShell or Git Bash.
3. The folder has just this README.md file, and a single main.tf file. 
4. Bring up a terminal in VS Code by Terminal->New Terminal
5. Verify that terraform is installed by running the command ``terraform -v`` from the terminal command line. You should get the response ``Terraform v1.1.6 on windows_amd64``
6. Initialize Terraform in this directory by typing `terraform init` on the command line. You should see a green message telling you your initialization has been successful.
7. The main.tf file deploys an nginx webserver in a docker container on your VM. Type `terraform apply` to do the deployment.