# Common Tags:
# 1. Name = <resource>-<env>-<owner>
# 2. Environment =  "teksystems"
# 3. Managed_By = "Terraform"
# 4. Owner = "ccaliskan"

locals {
  name = "resource-${var.env}-${var.owner}"
  common_tags = {
    Environment = var.env
    Managed_by  = var.managed_by
    Owner       = var.owner
  }
}