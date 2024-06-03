This repository contains Terraform configuration files for provisioning an EC2 instance and deploying a Docker container.

**Contents:**

* `security-groups.tf`: Defines security groups for controlling network traffic to the EC2 instance.
* `docker-container.tf`: Configures a Docker container to run on the EC2 instance.
* `ec2-instance.tf`: Defines the EC2 instance configuration, including AMI, instance type, and user data.
* `providers.tf`: Configures the Terraform provider for AWS.

**Prerequisites:**

* An AWS account with appropriate permissions.
* Terraform installed and configured.

**Usage:**

1. **Clone the repository:**

   ```
   git clone https://github.com/your-username/your-repo-name.git
   ```

2. **Change directory:**

   ```
   cd your-repo-name
   ```

3. **Initialize Terraform:**

   ```
   terraform init
   ```

4. **Review the configuration:**

   ```
   terraform plan
   ```

5. **Apply the configuration:**

   ```
   terraform apply
   ```

   **Warning:** This will create resources in your AWS account and incur charges.

6. **Access the EC2 instance:**

   The public IP address of the EC2 instance will be displayed after applying the Terraform configuration. You can use this IP address to connect to the instance using SSH.

**Additional Notes:**

* You may need to modify the Terraform configuration files based on your specific requirements.
* Refer to the official AWS documentation for detailed information on EC2 instances and Docker containers.

**Contributing:**

We welcome contributions to this project. Please follow the standard Git workflow and create pull requests for your changes.

