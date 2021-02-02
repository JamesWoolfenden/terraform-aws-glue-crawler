# terraform-aws-glue-crawler

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-glue-crawler/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-glue-crawler)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-glue-crawler.svg)](https://github.com/JamesWoolfenden/terraform-aws-glue-crawler/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-apigateway.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-apigateway/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-apigateway/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-apigateway&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-apigateway/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-apigateway&benchmark=INFRASTRUCTURE+SECURITY)

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
  version          = "v0.2.30"
  name             = var.name
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| catalog\_id | n/a | `string` | `null` | no |
| common\_tags | Standard `common_tags` module input. | `map(string)` | n/a | yes |
| description | n/a | `string` | `"A Glue DB"` | no |
| glue\_crawler\_name | Name of the Glue crawler. | `string` | `"uhu"` | no |
| glue\_database\_name | Name of the Glue catalog database. | `string` | n/a | yes |
| glue\_job\_name | n/a | `string` | `"myfirstgluejob"` | no |
| glue\_script\_path | n/a | `any` | n/a | yes |
| kms\_key\_name | n/a | `string` | n/a | yes |
| location\_uri | n/a | `string` | `null` | no |
| name\_prefix | Prefix for naming | `string` | n/a | yes |
| params | n/a | `map(any)` | `{}` | no |
| s3\_target\_bucket\_name | S3 target bucket for Glue crawler. | `string` | n/a | yes |
| target\_path | Path to crawler target file(s). | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| glue\_crawler\_name | The name of the Glue crawler. |
| security\_configuration | A Glue Security Configuration |

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

Copyright © 2019-2021 James Woolfenden

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
