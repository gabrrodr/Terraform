terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 4.2.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.container_name
  ports {
    internal = 80
    external = 8080
  }
    #Now i want to mount an index into the container to print a message.
    #For nginx the path is always usr/share/nginx/html/index.html
    
    volumes {
        container_path = "/usr/share/nginx/html/index.html"
        host_path   = "${path.cwd}/index.html"
        read_only = true
    }
}
