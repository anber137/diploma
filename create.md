
[0m[1mInitializing the backend...[0m

[0m[1mInitializing provider plugins...[0m
- Reusing previous version of yandex-cloud/yandex from the dependency lock file
- Using previously-installed yandex-cloud/yandex v0.77.0

[0m[1m[32mTerraform has been successfully initialized![0m[32m[0m
[0m[32m
You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.[0m

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  [32m+[0m create
[0m
Terraform will perform the following actions:

[1m  # yandex_storage_bucket.s3[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "yandex_storage_bucket" "s3" {
      [32m+[0m [0m[1m[0maccess_key[0m[0m            = "YCAJEj0Ybsmt62nXLgHvjOcll"
      [32m+[0m [0m[1m[0macl[0m[0m                   = "private"
      [32m+[0m [0m[1m[0mbucket[0m[0m                = "dos"
      [32m+[0m [0m[1m[0mbucket_domain_name[0m[0m    = (known after apply)
      [32m+[0m [0m[1m[0mdefault_storage_class[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mfolder_id[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mforce_destroy[0m[0m         = true
      [32m+[0m [0m[1m[0mid[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0msecret_key[0m[0m            = (sensitive value)
      [32m+[0m [0m[1m[0mwebsite_domain[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mwebsite_endpoint[0m[0m      = (known after apply)

      [32m+[0m [0manonymous_access_flags {
          [32m+[0m [0m[1m[0mlist[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mread[0m[0m = (known after apply)
        }

      [32m+[0m [0mversioning {
          [32m+[0m [0m[1m[0menabled[0m[0m = (known after apply)
        }
    }

[0m[1mPlan:[0m 1 to add, 0 to change, 0 to destroy.
[0m[90m
─────────────────────────────────────────────────────────────────────────────[0m

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" now.

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  [32m+[0m create
[0m
Terraform will perform the following actions:

[1m  # yandex_storage_bucket.s3[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "yandex_storage_bucket" "s3" {
      [32m+[0m [0m[1m[0maccess_key[0m[0m            = "YCAJEj0Ybsmt62nXLgHvjOcll"
      [32m+[0m [0m[1m[0macl[0m[0m                   = "private"
      [32m+[0m [0m[1m[0mbucket[0m[0m                = "dos"
      [32m+[0m [0m[1m[0mbucket_domain_name[0m[0m    = (known after apply)
      [32m+[0m [0m[1m[0mdefault_storage_class[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mfolder_id[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mforce_destroy[0m[0m         = true
      [32m+[0m [0m[1m[0mid[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0msecret_key[0m[0m            = (sensitive value)
      [32m+[0m [0m[1m[0mwebsite_domain[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mwebsite_endpoint[0m[0m      = (known after apply)

      [32m+[0m [0manonymous_access_flags {
          [32m+[0m [0m[1m[0mlist[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mread[0m[0m = (known after apply)
        }

      [32m+[0m [0mversioning {
          [32m+[0m [0m[1m[0menabled[0m[0m = (known after apply)
        }
    }

[0m[1mPlan:[0m 1 to add, 0 to change, 0 to destroy.
[0m[0m[1myandex_storage_bucket.s3: Creating...[0m[0m
[0m[1myandex_storage_bucket.s3: Creation complete after 2s [id=dos][0m
[0m[1m[32m
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
[0m
[0m[1mInitializing the backend...[0m
[0m[32m
Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.[0m

[0m[1mInitializing provider plugins...[0m
- Reusing previous version of yandex-cloud/yandex from the dependency lock file
- Using previously-installed yandex-cloud/yandex v0.77.0

[0m[1m[32mTerraform has been successfully initialized![0m[32m[0m
[0m[32m
You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.[0m
[0m[32m[1mCreated and switched to workspace "stage"![0m[32m

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.[0m

[0m[1mInitializing the backend...[0m

[0m[1mInitializing provider plugins...[0m
- Reusing previous version of yandex-cloud/yandex from the dependency lock file
- Using previously-installed yandex-cloud/yandex v0.77.0

[0m[1m[32mTerraform has been successfully initialized![0m[32m[0m
[0m[32m
You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.[0m

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  [32m+[0m create
[0m
Terraform will perform the following actions:

[1m  # yandex_vpc_network.default[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "yandex_vpc_network" "default" {
      [32m+[0m [0m[1m[0mcreated_at[0m[0m                = (known after apply)
      [32m+[0m [0m[1m[0mdefault_security_group_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mfolder_id[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mlabels[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                      = "net"
      [32m+[0m [0m[1m[0msubnet_ids[0m[0m                = (known after apply)
    }

[1m  # yandex_vpc_subnet.default[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "yandex_vpc_subnet" "default" {
      [32m+[0m [0m[1m[0mcreated_at[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mfolder_id[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mlabels[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m           = "subnet.ru-central1-a"
      [32m+[0m [0m[1m[0mnetwork_id[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mv4_cidr_blocks[0m[0m = [
          [32m+[0m [0m"192.168.101.0/24",
        ]
      [32m+[0m [0m[1m[0mv6_cidr_blocks[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mzone[0m[0m           = "ru-central1-a"
    }

[1m  # yandex_vpc_subnet.default[1][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "yandex_vpc_subnet" "default" {
      [32m+[0m [0m[1m[0mcreated_at[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mfolder_id[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mlabels[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m           = "subnet.ru-central1-b"
      [32m+[0m [0m[1m[0mnetwork_id[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mv4_cidr_blocks[0m[0m = [
          [32m+[0m [0m"192.168.102.0/24",
        ]
      [32m+[0m [0m[1m[0mv6_cidr_blocks[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mzone[0m[0m           = "ru-central1-b"
    }

[0m[1mPlan:[0m 3 to add, 0 to change, 0 to destroy.
[0m[90m
─────────────────────────────────────────────────────────────────────────────[0m

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" now.

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  [32m+[0m create
[0m
Terraform will perform the following actions:

[1m  # yandex_vpc_network.default[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "yandex_vpc_network" "default" {
      [32m+[0m [0m[1m[0mcreated_at[0m[0m                = (known after apply)
      [32m+[0m [0m[1m[0mdefault_security_group_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mfolder_id[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mlabels[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                      = "net"
      [32m+[0m [0m[1m[0msubnet_ids[0m[0m                = (known after apply)
    }

[1m  # yandex_vpc_subnet.default[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "yandex_vpc_subnet" "default" {
      [32m+[0m [0m[1m[0mcreated_at[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mfolder_id[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mlabels[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m           = "subnet.ru-central1-a"
      [32m+[0m [0m[1m[0mnetwork_id[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mv4_cidr_blocks[0m[0m = [
          [32m+[0m [0m"192.168.101.0/24",
        ]
      [32m+[0m [0m[1m[0mv6_cidr_blocks[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mzone[0m[0m           = "ru-central1-a"
    }

[1m  # yandex_vpc_subnet.default[1][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "yandex_vpc_subnet" "default" {
      [32m+[0m [0m[1m[0mcreated_at[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mfolder_id[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mlabels[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m           = "subnet.ru-central1-b"
      [32m+[0m [0m[1m[0mnetwork_id[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mv4_cidr_blocks[0m[0m = [
          [32m+[0m [0m"192.168.102.0/24",
        ]
      [32m+[0m [0m[1m[0mv6_cidr_blocks[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mzone[0m[0m           = "ru-central1-b"
    }

[0m[1mPlan:[0m 3 to add, 0 to change, 0 to destroy.
[0m[0m[1myandex_vpc_network.default: Creating...[0m[0m
[0m[1myandex_vpc_network.default: Creation complete after 1s [id=enpma64nh2juevhn2t1u][0m
[0m[1myandex_vpc_subnet.default[1]: Creating...[0m[0m
[0m[1myandex_vpc_subnet.default[0]: Creating...[0m[0m
[0m[1myandex_vpc_subnet.default[1]: Creation complete after 1s [id=e2l4mk818dfge4bijqcg][0m
[0m[1myandex_vpc_subnet.default[0]: Creation complete after 1s [id=e9bbmb0iia2uqivtqgi2][0m
[0m[1m[32m
Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
[0m