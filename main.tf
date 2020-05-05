# Download the latest Ghost Image
resource "docker_image" "image_id" {
  name = "${lookup(var.image_name, var.env, "No way this should happen")}"
}

# Start the Container
resource "docker_container" "container_id" {
  name  = "${lookup(var.container_name, var.env, "No way this should happen")}"
  image = docker_image.image_id.latest
  ports {
    internal = "2368"
    external =  "${lookup(var.ext_port,var.env, "Value is from outside")}"
  }
}
