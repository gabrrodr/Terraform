output "container_id" {
  description = "Name/ID of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the docker container image"
  value       = docker_image.nginx.id
}