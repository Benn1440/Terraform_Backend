# Terraform State File

Terraform state files are critical for managing the infrastructure resources that Terraform provisions. Here’s an overview of what they are, how they work, and best practices for managing them.

What Are Terraform State Files?
Terraform state files (terraform.tfstate) keep track of the infrastructure resources managed by Terraform. They store information about:

* Resources that have been created.
* Metadata and mapping between Terraform configuration and real-world resources.
* Resource dependencies.

# Why Are They Important?
* Consistency: They ensure Terraform operations like plan, apply, and destroy are consistent and accurate.
* Tracking: They track the current state of infrastructure, enabling Terraform to know what exists and what needs to change.
* Performance: They improve performance by caching data about resources.

# Terraform backend.tf file 

Is used to configure the backend settings in Terraform. A backend in Terraform determines where and how the Terraform state is stored. Using a backend helps in collaboration, security, and remote management of the state file.

You can set up a backend.tf file for different backends like AWS S3, Terraform Cloud, and Azure Storage.

I would be setting up one with AWS s3 for this project.<br>

<img width="556" alt="Screenshot 2024-07-30 at 00 48 39" src="https://github.com/user-attachments/assets/a67c1d37-efe1-4495-b48b-71c9a106275c">

# Terraform Lock State

Using DynamoDB for Terraform state locking ensures that only one process can modify the state file at a time, preventing conflicts and corruption. Here’s a detailed guide on how to set up a DynamoDB table for Terraform state locking.<br>
This would allow multiple developers to work on the same Terraform project hosted on any Version Control platform.<br>


# Terrafor apply --auto-approve

<img width="598" alt="Screenshot 2024-07-30 at 00 48 12" src="https://github.com/user-attachments/assets/f1873a4c-d1aa-410a-8758-1fb5ca0842b6"><br>

<img width="862" alt="Screenshot 2024-07-30 at 00 52 09" src="https://github.com/user-attachments/assets/ab5ea929-3e7c-4e8e-8e96-64ca1a24a57e"><br>

# S3 Bucket Resource
<img width="1377" alt="Screenshot 2024-07-30 at 00 59 32" src="https://github.com/user-attachments/assets/c4edae56-4827-4da0-8fb5-00ee985dd337">

# DynamoDB Resource for Lock
<img width="1373" alt="Screenshot 2024-07-30 at 00 36 10" src="https://github.com/user-attachments/assets/db230306-2b5d-4ae3-a09f-016b952973ea"><br>





