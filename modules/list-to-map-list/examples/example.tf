module "list_to_map_list" {
  source = "../../"
  # inputs
  map_list = [
    {
      cidr_block = "10.0.1.0/24"
    },
    {
      cidr_block = "10.0.3.0/24"
    },
    {
      cidr_block = "10.0.5.0/24"
    }
  ]
  base_map = {
    gateway_id = "id"
  }
}

output "values" {
  value = "${module.list_to_map_list.map_list}"
}
