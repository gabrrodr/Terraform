output "filename" {
  description = "Path of the generated file"
  value       = local_file.this.filename
}

output "content" {
  description = "Content of the generated file"
  value       = local_file.this.content
}