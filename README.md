# rashevtsov_infra
rashevtsov Infra repository

ДЗ 3 к Лекции 5

Решение "в одну команду"
ssh -i ~/.ssh/appuser -AJ appuser@130.193.39.165 appuser@10.130.0.26

Решение "подключение по алиасу"
alias someinternalhost="ssh -i ~/.ssh/appuser -AJ appuser@130.193.37.154 appuser@10.130.0.26"
source ~/.zshrc

при конфигурации pritunl столкнулся с ошибками в логах на GUi
OSError: [Errno 2] No such file or directory
  cmd = ["iptables", "-I", "INPUT", "-i", "tun7", "-j", "ACCEPT", "-m", "comment", "--comment", "pritunl-5f694d5f2a3c2e5d77780a62"]

пришлось ставить iptables и лихорадочно делать всевозможные apt-get update

bastion_IP = 130.193.39.165
someinternalhost_IP = 10.130.0.26

ДЗ 4 к лекции 6

testapp_IP = 130.193.49.220
testapp_port = 9292

yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./startup-reddit-meta.yaml

ДЗ 5 к лекции 7
 - установи packer
 - создал сервисный аккаунт YC c правами для packer
 - создал service account key.json
 - создал шаблон для packer ubuntu16.json
 - собрал файлы для ubuntu16 в scripts
 - создал fry образ reddit-base
 - параметризировал шаблон, сделал фейковые параметры в variables.json.examples
 - создал шаблон immutable.json
 - собрал файлы для immutable в files
 - создал bake образ reddit-full
 - создал create-reddit-vm.sh для раскатки из bake образа, где image-family=reddit-full
