resource "docker_container" "my_app" {
  name = "my-app-container"
  image = "nginx:latest"

  # Replace with the port mapping you desire (optional)
  # ports {
  #   internal = 80
  #   external = 8080
  # }

  # Update with any additional container configuration options
}

