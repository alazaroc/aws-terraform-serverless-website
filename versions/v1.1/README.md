# aws-terraform-serverless-website

Different options to deploy a serverless website on AWS:

![terraform-website](../../diagrams/terraform-website.png)

## Version 1.1

public S3 bucket

- **Advantage**: easy to implement
- **Disadvantages**: no custom domain, no aligned with security best practices (public bucket), no cache for static files

## Autogenerated-documentation

Terraform-docs (https://terraform-docs.io/) has been used to autogenerate the below documentation.

<!-- BEGIN_TF_DOCS -->
### Requirements

No requirements.

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [aws_s3_account_public_access_block.website_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_account_public_access_block) | resource |
| [aws_s3_bucket.website_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_policy.website_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.website_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_object.website_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |

### Inputs

No inputs.

### Outputs

No outputs.
<!-- END_TF_DOCS -->