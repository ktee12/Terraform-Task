# Compute EC2 Module for Terraform Task

Configuration in this directory creates EC2 instances with different sets of arguments for Terraform Task.

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
| <a name="compute"></a> [compute](#module\_ec2\_instance) | ./ | n/a |


## Resources

| Name | Type |
|------|------|
| <a name="aws_instance"></a> [aws_instance](#resource\_ec2\_aws_instance)| resource |


## Inputs

| Name | Description |
|------|------|
| <a name="input_name"></a> [name](#input\_name)| The name of the instance created (e.g. 'app' or cluster.) |
| <a name="input_environment"></a> [environment](#input\_name)| The type of environment (e.g 'prod', 'dev', 'staging') |
| <a name="input_tags"></a> [tags](#input\_name)| Additional tags for the instance (e.g 'HR', 'Research') |
| <a name="input_business_divsion"></a> [business_divsion](#input\_name)| Business Division in the large organization this Infrastructure belongs |
| <a name="input_ami"></a> [ami](#input\_name)| ID of AMI for the instance |
| <a name="input_instance_type"></a> [instance_type](#input\_name)| Type of instance to start with during creation |
| <a name="input_instance_count"></a> [instance_count](#input\_name)| The number of EC2 instances to be created. |
| <a name="input_associate_public_ip_address"></a> [associate_public_ip_address](#input\_name)| Whether to associate a public IP address with an instance |
| <a name="input_user_data"></a> [user_data](#input\_name)| The user data to run on instance creation |
| <a name="input_user_data_replace_on_change"></a> [user_data_replace_on_change](#input\_name)| Whenever it is used with user_data, it will get destroy and recreate when set to true. The default is false if not set |
| <a name="input_vpc_security_group_ids"></a> [vpc_security_group_ids](#input\_name)| A list of security group IDs to associate with |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_name)| The VPC subnet ID |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The public ip of the instance |
| <a name="output_ec2_tags"></a> [ec2\_tags](#output\_ec2\_tags) | The tags assigned to the instance |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->