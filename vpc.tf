module "network" {
  source  = "app.terraform.io/R3dB3ard-Ltd/network/google"
  version = "3.4.0"

    project_id   = var.project 
    network_name = "redbeard-network"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "redbeard-subnet"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region
        }
    ]
}
