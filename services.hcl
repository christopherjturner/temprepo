
locals {
  services = [
    {
      name = "service-a"
      type = "frontend"
      container_image   = "iac-hello-world"
      container_version = "service-a"
      container_port    = 8080
      desired_count     = 2
      task_cpu           = 256
      task_memory       = 512
      healthcheck       = "/"
    },
    {
      name              = "service-b"
      type              = "frontend"
      container_image   = "iac-hello-world"
      container_version = "service-b"
      container_port    = 8081
      desired_count     = 2
      task_cpu          = 512
      task_memory       = 1024
      healthcheck       = "/"
    },
    {
      name              = "cdp-basic-node-frontend"
      type              = "frontend"
      container_image   = "cdp-basic-node-frontend"
      container_version = "1.1.0"
      container_port    = 3000
      desired_count     = 2
      task_cpu          = 512
      task_memory       = 1024
      healthcheck       = "/"
    },
    {
      name              = "cdp-portal-frontend"
      type              = "frontend"
      container_image   = "cdp-portal-frontend"
      container_version = "latest"
      container_port    = 3000
      desired_count     = 2
      task_cpu          = 512
      task_memory       = 1024
      healthcheck       = "/"

    }
  ]
}
