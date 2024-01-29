# Network VPC Module for Terraform Task

Configuration in this directory creates VPC instances with different sets of arguments for Terraform Task.

## Usage



To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.9.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="network"></a> [network](#module\_network) | ./ | n/a |


## Resources

| Name | Type |
|------|------|
| <a name="aws_vpc"></a> [aws_vpc](#resource\_aws_vpc)| resource |
| <a name="aws_internet_gateway"></a> [aws_internet_gateway](#resource\_aws_internet_gateway)| resource |
| <a name="aws_availability_zones"></a> [aws_availability_zones](#resource\_aws_availability_zones)| data |
| <a name="aws_subnet"></a> [aws_subnet](#resource\_aws_subnet)| resource |
| <a name="aws_route_table"></a> [aws_route_table](#resource\_aws_route_table)| resource |
| <a name="aws_route_table_association"></a> [aws_route_table_association](#resource\_aws_route_table_association)| resource |



## Inputs

| Name | Description |
|------|------|
| <a name="input_enable_dns_hostnames"></a> [enable_dns_hostnames](#input\_enable_dns_hostnames)| Enable DNS hostnames |
| <a name="input_enable_dns_support"></a> [enable_dns_support](#input\_enable_dns_support)| Enable DNS support |
| <a name="input_project_name"></a> [project_name](#input\_project_name)| The name of the project using the VPC created (e.g. 'tech', admin.) |
| <a name="input_vpc_cidr"></a> [vpc_cidr](#input\_vpc_cidr)| VPC cidr blocks |
| <a name="input_public_subnet_cidr"></a> [public_subnet_cidr](#input\_public_subnet_cidr)| The cidr blocks of public subnet |
| <a name="input_availability_zone"></a> [availability_zone](#input\_availability_zone)| The availabilty zone where this needs to be creted |
| <a name="input_aws_route_cidr"></a> [aws_route_cidr](#input\_aws_route_cidr)| The cidr blocks for route_table |


## Outputs

| Name | Description |
|------|-------------|
| <a name="outputproject_name"></a> [project_name](#output\_project_name) | The name assigned to the project |
| <a name="output_vpc_id"></a> [vpc_id](#output\_vpc_id) | Assigned VPC ID after creation |
| <a name="output_internet_gateway"></a> [internet_gateway](#output\_internet_gateway) | Assigned Internet gateway after creation |
| <a name="output_public_subnet_id"></a> [pc_idpublic_subnet_id](#output\_public_subnet_id) | Assigned Public Subnet ID after creation |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->