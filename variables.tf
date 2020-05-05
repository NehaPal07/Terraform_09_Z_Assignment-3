#Define variables
variable "image_name" {
  description = "Image for container."
# default     = "ghost:latest"
  type        =  map(string)

  default      =  {
                   "dev"  = "ghost:latest"
                   "prod" = "ghost:alpine"
                     }
   }

variable "container_name" {
  description = "Name of the container."
 # default     = "blog"
  type        =  map(string)
  
  default     =  {
                    "dev" = "blog_dev"
                   "prod" = "blog_prod"
                     }

}

variable "ext_port" {
  description = "External port for container."
# default     = "80"
  type        = map
  
  default     =   { 
                   "dev"  = "8080"
                   "prod" = "80"
                     }
}

variable "env" {
  description = "env: dev or prod"

}
