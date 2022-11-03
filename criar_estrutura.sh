#!/bin/bash


echo:"Criando Diretórios...."

mkdir /puplico
mkdir /adm
mkdir /ven
mkdir /sec


echo:"Criando Grupos...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC



echo:"Criando usuários do sistema...."

echo "---------------- Grupo Administrativo --------------------"
useradd carlos -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria  -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM


echo "---------------- Grupo de Vendas --------------------"
useradd debora -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN


echo "---------------- Grupo de Segurança --------------------"
useradd josefina -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC


echo "Especificando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_ADM /adm
chown root:GRP_ADM /adm

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Criação concluída com sucesso..."





