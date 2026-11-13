variable "filename" {
  description = "name of the file to be created"
  type        = string
  default     = "example.txt"

  validation {
    condition     = endswith(var.filename, ".txt")
    error_message = "Filename must end in .txt"
  }
}

variable "file_content" {
  description = "content of the file to be created"
  type        = string
  default     = "Hello, World!"
}

variable "environment" {
  description = "environment of the file to be created"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of 'dev', 'staging', or 'prod'."
  }
}