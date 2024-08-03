# terraform-aws-tf-state

Terraform / OpenTofu module for storing Terraform / OpenTofu state in AWS S3 bucket and state locks in AWS DynamoDB.

## Usage

### Create resources

```terraform
module "tf_state" {
    source  = "voidsolutionsorg/tf-state/aws"
    version = "1.0.0"

    project_name = "example"
}
```

### Setup backend configuration
```terraform
terraform {
  backend "s3" {
    bucket         = "example-tf-state"
    key            = "myapp/production/tfstate"
    region         = "us-east-1"
    dynamodb_table = "example-tf-state-lock"
  }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.61.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.tf_state_lock](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_s3_bucket.tf_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.tf_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_ownership_controls.tf_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_versioning.tf_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | The billing mode for the DynamoDB table | `string` | `"PAY_PER_REQUEST"` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | Destroy the bucket even if it contains objects | `bool` | `true` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The name of the project, used for naming resources | `string` | n/a | yes |
| <a name="input_read_capacity"></a> [read\_capacity](#input\_read\_capacity) | The read capacity for the DynamoDB table | `number` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |
| <a name="input_write_capacity"></a> [write\_capacity](#input\_write\_capacity) | The write capacity for the DynamoDB table | `number` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Authors

Module is maintained by [Aleksa Siriški](https://github.com/aleksasiriski) with help from [VoidSolutions Team](https://github.com/voidsolutionsorg).

## License

Apache 2 Licensed. See [LICENSE](LICENSE) for full details.
