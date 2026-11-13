resource "local_file" "example" {
  filename = "${path.module}/${var.file_name}"
  content  = local.full_content
}

data "local_file" "existing_file" {
  filename = "${path.module}/input.txt"
}

locals {
  project_name = "Cloud Engineering Day 2"
  filename     = "${path.cwd}/${var.file_name}"

  full_content = <<-EOT
        Project: ${local.project_name}
        Environment: ${var.environment}
        Content: ${var.file_content}

        Existing file content:
        ${data.local_file.existing_file.content}
    EOT
}

module "development_file" {
  source       = "./modules/text_files"
  file_name    = "development_file.txt"
  file_content = "This is a file that belongs to the development environment.\n"
}

module "production_file" {
  source       = "./modules/text_files"
  file_name    = "production_file.txt"
  file_content = "This is a file that belongs to the production environment.\n"
}

module "staging_file" {
  source  = "./modules/text_files"
  file_name = "staging_file.txt"
  file_content = "This is a file that belongs to the staging environment.\n"
}
