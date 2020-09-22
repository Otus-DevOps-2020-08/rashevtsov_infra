# rashevtsov_infra
rashevtsov Infra repository

ДЗ к Лекции 5
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
