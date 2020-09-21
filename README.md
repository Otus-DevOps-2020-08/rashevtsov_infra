# rashevtsov_infra
rashevtsov Infra repository

ДЗ к Лекции 5
Решение "в одну команду"
ssh -i ~/.ssh/appuser -AJ appuser@130.193.37.154 appuser@10.130.0.26

Решение "подключение по алиасу"
alias someinternalhost="ssh -i ~/.ssh/appuser -AJ appuser@130.193.37.154 appuser@10.130.0.26"
source ~/.zshrc
