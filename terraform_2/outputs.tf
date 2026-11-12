output "created_file_path" {
  description = "Path of the created file"
  value       = local_file.example.filename
}

output "created_file_content" {
  description = "Content of the created file"
  value       = local_file.example.content
}

output "existing_file_content" {
  description = "Content of the existing file"
  value       = data.local_file.existing_file.content
}