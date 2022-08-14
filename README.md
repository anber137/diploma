# Дипломный практикум в YandexCloud

## 1. Регистрация доменного имени

Зарегестрировал доменное имя: `berillo.kemrsl.ru`. Имеется доступ к доменному имени `kemrsl.ru` (редактирование записей DNS на `primery - DNS` сервере) и в качестве теста есть возможность в регистрации `sub` доменных имен.

В Yandex cloud получил статический ip адрес:

``` bash
#!/usr/bin/env bash
yc vpc address create --external-ipv4 zone=ru-central1-a --folder-id "b1gor3n8jb0hhgr1t7qd"
```
В результате получил:

```     
      5   address: 62.84.117.186
      6     zone_id: ru-central1-a
      9       type: EXTERNAL
```

## 1. Создание инфраструктуры

Использовал альтернативный вариант: Альтернативный вариант: `S3 bucket` в созданном `YC` аккаунте.

При попытке создания `S3` в одном скрипте с остальной инфраструктурой получил сообщение об ошибке:

```
Error: Failed to get existing workspaces: S3 bucket does not exist.
```

Разделил создание хранилища и все остальное на два разных наборов скриптов `terraform`. Запуск поместил в один `bash`.


```bash
#!/usr/bin/env bash

ssh-keygen -f "/root/.ssh/known_hosts" -R "62.84.117.186"

WORK_DIR=/home/devops/diploma

cd $WORK_DIR/diplom_s3_add
terraform init && terraform plan && terraform apply -auto-approve

cd $WORK_DIR/diploma
#terraform init -migrate-state
terraform init -reconfigure
terraform workspace new stage
terraform init && terraform plan && terraform apply -auto-approve
```

### 1. Настройте workspaces

workspace использовал только `stage`.

```
terraform workspace new stage
```

### 1. Создайте VPC с подсетями в разных зонах доступности.

Зоны доступности и соответственно подсети исользовал две:

```
zone_names = ["ru-central1-a", "ru-central1-b"]
subnet_cidr = ["192.168.101.0/24", "192.168.102.0/24"]
```

Все виртуальные машины, кроме `db02` созданы в `ru-central1-a`.

### 1. Убедитесь, что теперь вы можете выполнить команды terraform destroy и terraform apply без дополнительных ручных действий.

В ходе выполнения скрипта create.sh получаю сообщение: 

```
Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```

## 1. Установка Nginx и LetsEncrypt

Для выполнения пунктов 3 - 7 подготовлены скрипты `node01.tf - node07.tf` с характеристиками указанными в задании.
Первая нода имеет статический внешний `ip` адрес.

Для дальнейшей установки через `ansible`, добавил скрипт [inventory.tf](./scripts/diploma/inventory.tf).
Подготовка `inventory` аналогично ДЗ 5.5. Для того, что бы все виртуальные машины успели поднятся, перед запуском `ansible` выполняется `sleep 100`.


 
