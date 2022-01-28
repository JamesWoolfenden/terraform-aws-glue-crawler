# terraform-aws-glue-crawler

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-glue-crawler/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-glue-crawler)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-glue-crawler.svg)](https://github.com/JamesWoolfenden/terraform-aws-glue-crawler/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-glue-crawler.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-glue-crawler/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-glue-crawler/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-glue-crawler&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-glue-crawler/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-glue-crawler&benchmark=INFRASTRUCTURE+SECURITY)

---

Terraform module to provision an AWS [`Elastic Container Registry`](https://aws.amazon.com/ecr/)

This registry is immutable, so you cannot push the "latest" container twice.

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

![alt text](./diagram/registry.png)

## Usage

Include this repository as a module in your existing Terraform code:

```terraform
module 'crawler" {
  source           = "JamesWoolfenden/aws/glue-crawler"
  version          = "v0.1.30"
  name             = var.name
}
```

## Costs

```text
monthly cost estimate

Project: .

 Name                                           Monthly Qty  Unit                Monthly Cost

 aws_kms_key.glue
 ├─ Customer master key                                   1  months                     $1.00
 ├─ Requests                                Cost depends on usage: $0.03 per 10k requests
 ├─ ECC GenerateDataKeyPair requests        Cost depends on usage: $0.10 per 10k requests
 └─ RSA GenerateDataKeyPair requests        Cost depends on usage: $0.10 per 10k requests

 aws_s3_bucket.glue_target
 └─ Standard
    ├─ Storage                              Cost depends on usage: $0.02 per GB-months
    ├─ PUT, COPY, POST, LIST requests       Cost depends on usage: $0.0053 per 1k requests
    ├─ GET, SELECT, and all other requests  Cost depends on usage: $0.00042 per 1k requests
    ├─ Select data scanned                  Cost depends on usage: $0.00225 per GB-months
    └─ Select data returned                 Cost depends on usage: $0.0008 per GB-months

 PROJECT TOTAL                                                                          $1.00

----------------------------------
To estimate usage-based resources use --usage-file, see https://infracost.io/usage-file

5 resource types weren't estimated as they're not supported yet.
1 x aws_glue_data_catalog_encryption_settings
1 x aws_glue_job
1 x aws_glue_catalog_database
1 x aws_glue_security_configuration
1 x aws_glue_crawler
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

No requirements.

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                    | Type     |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_glue_catalog_database.glue_database](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_catalog_database)                            | resource |
| [aws_glue_crawler.glue_crawler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_crawler)                                               | resource |
| [aws_glue_data_catalog_encryption_settings.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_data_catalog_encryption_settings) | resource |
| [aws_glue_job.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_job)                                                            | resource |
| [aws_glue_security_configuration.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_security_configuration)                      | resource |
| [aws_iam_policy.glue_crawler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)                                                   | resource |
| [aws_iam_role.glue_crawler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                                       | resource |
| [aws_iam_role_policy_attachment.glue_crawler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                   | resource |
| [aws_iam_role_policy_attachment.glue_service](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                   | resource |

## Inputs

| Name                                                                                             | Description                        | Type       | Default            | Required |
| ------------------------------------------------------------------------------------------------ | ---------------------------------- | ---------- | ------------------ | :------: |
| <a name="input_catalog_id"></a> [catalog_id](#input_catalog_id)                                  | n/a                                | `string`   | `null`             |    no    |
| <a name="input_description"></a> [description](#input_description)                               | n/a                                | `string`   | `"A Glue DB"`      |    no    |
| <a name="input_glue_crawler_name"></a> [glue_crawler_name](#input_glue_crawler_name)             | Name of the Glue crawler.          | `string`   | `"uhu"`            |    no    |
| <a name="input_glue_database_name"></a> [glue_database_name](#input_glue_database_name)          | Name of the Glue catalog database. | `string`   | n/a                |   yes    |
| <a name="input_glue_job_name"></a> [glue_job_name](#input_glue_job_name)                         | n/a                                | `string`   | `"myfirstgluejob"` |    no    |
| <a name="input_glue_script_path"></a> [glue_script_path](#input_glue_script_path)                | n/a                                | `string`   | n/a                |   yes    |
| <a name="input_kms_key"></a> [kms_key](#input_kms_key)                                           | n/a                                | `any`      | n/a                |   yes    |
| <a name="input_location_uri"></a> [location_uri](#input_location_uri)                            | n/a                                | `string`   | `null`             |    no    |
| <a name="input_name_prefix"></a> [name_prefix](#input_name_prefix)                               | Prefix for naming                  | `string`   | n/a                |   yes    |
| <a name="input_params"></a> [params](#input_params)                                              | n/a                                | `map(any)` | `{}`               |    no    |
| <a name="input_s3_target_bucket_name"></a> [s3_target_bucket_name](#input_s3_target_bucket_name) | S3 target bucket for Glue crawler. | `string`   | n/a                |   yes    |
| <a name="input_target_path"></a> [target_path](#input_target_path)                               | Path to crawler target file(s).    | `string`   | n/a                |   yes    |

## Outputs

| Name                                                                                                  | Description                   |
| ----------------------------------------------------------------------------------------------------- | ----------------------------- |
| <a name="output_glue_crawler_name"></a> [glue_crawler_name](#output_glue_crawler_name)                | The name of the Glue crawler. |
| <a name="output_security_configuration"></a> [security_configuration](#output_security_configuration) | A Glue Security Configuration |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Information

A terraform module to create a container registry (ECR - Elastic Container Registry) in AWS.
There are two policies attached, a life-cycle policy which details how to look after the containers and a permission policy which has a default allow allusers in the account.
I use this to store the customised containers I use in Codebuild and for storing containers for Fargate.

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-glue-crawler/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-glue-crawler/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-glue-crawler&url=https://github.com/jameswoolfenden/terraform-aws-glue-crawler
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-glue-crawler&url=https://github.com/jameswoolfenden/terraform-aws-glue-crawler
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-glue-crawler
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-glue-crawler
[share_email]: mailto:?subject=terraform-aws-glue-crawler&body=https://github.com/jameswoolfenden/terraform-aws-glue-crawler
