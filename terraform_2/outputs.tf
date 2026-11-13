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

output "development_file_path" {
  value = module.development_file.file_path
}

output "production_file_path" {
  value = module.production_file.file_path
}

output "staging_file_path" {
  value = module.staging_file.file_path
}