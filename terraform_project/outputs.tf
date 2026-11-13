output "generated_filename" {
    description = "Generated file name - path"
    value = module.output_file.filename
}

output "generated_content" {
    description = "Generated file content"
    value = module.output_file.content
}