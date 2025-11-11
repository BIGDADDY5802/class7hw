# Setup and initialize terraform

 **Setup and Initialization of Terraform**


-   Download and Prepare

-   Download the Terraform binary for Windows from the official HashiCorp Terraform download page.

-   Extract the ZIP file to a directory such as C:\terraform.

**Add to PATH Environment Variable**

-   Add the directory containing terraform.exe to your system PATH environment variable to ease command-line accessibility.

**Programs to Use**

Use Visual Studio Code (VS Code) as your primary code editor because it supports HCL (HashiCorp Configuration Language) syntax highlighting and extensions for Terraform.

Use Command Prompt, PowerShell, or Git Bash for running Terraform CLI commands. These terminals recognize the PATH settings easily.

Vi and Vim are also used to edit code. (I'd only use this if I was just copying and pasting code)

**Programs to Avoid for Terraform Code**

Avoid using basic text editors like Notepad that do not support syntax highlighting or code linting.

Avoid IDEs (Integrated Developement Environments) without Terraform or HCL support which might lead to errors or inefficient editing.

**Files to Create and Modify**

main.tf: The primary Terraform configuration file where you define infrastructure resources.

variables.tf: Optional, for input variable definitions.

outputs.tf: Optional, to define output values.

terraform.tfvars: Optional, to assign values to variables.

You can organize your Terraform code in multiple .tf files for clarity.

**Initialize Terraform**

Navigate in your terminal to the directory containing your .tf files.

Run terraform init to initialize the working directory, download necessary provider plugins, and prepare the environment.

**Version Control and GitHub Repositories**

Use Git for version control of your .tf files but exclude terraform.tfstate and .terraform directory from Git (e.g., by adding them to .gitignore), since these contain local environment info.

Example GitHub repositories for reference:

HashiCorp official examples: https://github.com/hashicorp/terraform-guides

Community labs and examples: https://github.com/terraform-aws-modules (for AWS) and similar repos for other clouds.

This configuration promotes well-organized and maintainable Terraform projects that seamlessly fit into standard development workflows and tools. For more comprehensive understanding and practical examples, you can explore detailed tutorials and real-world Terraform projects available on GitHub. This strategy effectively combines best practices in tool usage, file organization, and version control to optimize the efficiency of using Terraform on Windows systems.


### sts-caller-identity

![](/week6/attachments/sts-caller-identity.png)

### Terraform apply

![](/week6/attachments/terraform-applied.png)