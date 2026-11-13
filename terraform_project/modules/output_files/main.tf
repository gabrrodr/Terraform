resource "local_file" "this" {
    filename = "${path.module}/${var.file_name}"
    content = var.file_content
}