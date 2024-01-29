# Security Group Module for Terraform Task

Configuration in this directory creates security group with different sets of arguments for Terraform Task.

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
| <a name="security"></a> [security](#module\_security) | ./ | n/a |


## Resources

| Name | Type |
|------|------|
| <a name="aws_security_group"></a> [aws_security_group](#resource\_aws_security_group)| resource |


## Inputs

| Name | Description |
|------|------|
| <a name="input_name"></a> [name](#input\_name)| The name of the security group created (e.g. 'app' or cluster.) |
| <a name="input_environment"></a> [environment](#input\_name)| The type of environment (e.g 'prod', 'dev', 'staging') |
| <a name="input_vpc_id"></a> [vpc_id](#input\_vpc_id)| The ID of VPC |
| <a name="input_from_port"></a> [from_port](#input\_from_port)| The port where the traffic is coming from |
| <a name="input_to_port"></a> [to_port](#input\_to_port)| The port where the traffic is directing to |
| <a name="input_protocol"></a> [protocol](#input\_protocol)| The protocol used |
| <a name="input_all_ip_cidr_blocks"></a> [all_ip_cidr_blocks](#input\_all_ip_cidr_blocks)| The cidr blocks |


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sg_id"></a> [sg_id](#output\_sg_id) | The created security group ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->