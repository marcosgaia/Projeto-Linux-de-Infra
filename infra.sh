#!/bin/bash

echo " Criar diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criado  grupos de user "

mkdir GRP_ADM
mkdir GRP_VEN
mkdir GRP_SEC

echo "Criado  usuarios e adicionado aos grupos ...."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM 
useradd maria  -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -G GRP_ADM
useradd joao  -m -s /bin/bash -p $(openssl passwd -6  Senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6  Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6  Senha123)  -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123)  -G GRP_SEC

echo "Especificado permissoes de diretorios .."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo " script de infra realizado ..."

