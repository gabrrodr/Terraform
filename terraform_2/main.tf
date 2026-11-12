resource "local_file" "example" {
    filename = "${path.cwd}/${var.filename}"
    content = local.full_content
}

data "local_file" "existing_file" {
    filename = "${path.cwd}/input.txt"
}

locals {
    project_name = "Cloud Engineering Day 2"
    filename = "${path.cwd}/${var.filename}"
    
    full_content = <<-EOT
        Project: ${local.project_name}
        Environment: ${var.environment}
        Content: ${var.file_content}

        Existing file content:
        ${data.local_file.existing_file.content}
    EOT
}