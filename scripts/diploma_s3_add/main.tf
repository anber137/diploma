################################################################################
# Если все запускаю сразу, то получаю ошибку:
#│ Error: Failed to get existing workspaces: S3 bucket does not exist.
#│ 
#│ The referenced S3 bucket must have been previously created. If the S3 bucket
#│ was created within the last minute, please wait for a minute or two and try
#│ again.
################################################################################
#
# https://cloud.yandex.ru/docs/tutorials/infrastructure-management/terraform-state-storage#create-service-account
#
terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.77.0"
    }
  }
}

provider "yandex" {
  service_account_key_file = "key.json"
  cloud_id  = ""
  folder_id = ""
  zone      = "ru-central1-a"
}

resource "yandex_storage_bucket" "s3" {
  access_key = ""
  secret_key = ""
  bucket = "dos"
  force_destroy = true
}

