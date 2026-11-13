data "local_file" "input_file" {
    filename = "${path.module}/input.txt"
}

locals {
    resource_name = "${var.project_name}-${var.environment}"
    output_file_name = "${var.environment}.txt"

    file_content = <<-EOT
    Project: ${var.project_name}
    Environment: ${var.environment}
    Resource_name: ${local.resource_name}
  EOT
}

module "output_file" {
    source  = "./modules/output_files"
    file_name = local.output_file_name
    file_content = <<-EOT

    ${data.local_file.input_file.content}\n
    -----------------------------------
    ${local.file_content}
    EOT

}