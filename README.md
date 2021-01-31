# terraform-azure-january-2021

Terraform templates to be used with
[RedisGeek](https://github.com/redisgeek) demos.

### Deployment Includes

- Resource Group
- VNET
- Storage Account
- Azure Cache for Redis - E10
- Azure Cache for Redis - C4

### Requires

```markdown
subscription_id = "YOUR-SUBSCRIPTION-ID"
tenant_id = "YOUR-TENANT-ID"
location = "YOUR-REGION"
default_name = "YOUR-IDENTIFIER"

acre_name = "INSTANCE-NAME"
acre_resource_group = "RESOURCE-GROUP-NAME"

mssql_admin_user = "ADMIN-USER"
mssql_admin_pass = "ADMIN-PASS"
mssql_instance_name = "INSTANCE-NAME"

vnet_name = "VNET-NAME"
```

### Getting Started

```markdown
git clone 

cd 

cp terraform.tfvars.example terraform.tfvars

edit your secrets

terraform init

terraform plan

terraform apply 

(cross fingers)
```
