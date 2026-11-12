resource "local_file" "example" {
    filename = "${path.cwd}/${var.filename}"
    content = "${var.file_content}\nEnvironment: ${var.environment}\n"
}