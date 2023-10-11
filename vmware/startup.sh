rm -rf terraform.tfstate*
for keys in $(cat .envfile);do export ${keys};done && terraform apply --auto-approve