variable "environment" {
    description = "environment where you are working and want to generate the file"
    type = string
    default = "dev"

        validation {
            condition = contains(["dev", "staging", "prod"], var.environment)
            error_message = "Environment must be one of three: 'dev' 'staging' or 'prod'"
        }
}

variable "project_name" {
    description = "name of the project I'm working on"
    type = string
    default = "Terraform_project"
}