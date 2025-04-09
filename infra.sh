#!/bin/bash

echo "Iniciando a Criação dos diretórios..."

mkdir /publico
mkdir /administracao
mkdir /vendas
mkdir /seguranca

echo "Iniciando a Criação dos grupos de usuários..."

groupadd GRP-Administracao
groupadd GRP-Vendas
groupadd GRP-Seguranca

echo "Iniciando a Criação dos usuários e Realizando Inserção dos Usuários nos Grupos Destinados..."

useradd carlos -c "Carlos Sampaio" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP-Administracao
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP-Administracao
useradd joao -c "Jão Andrade" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP-Administracao

useradd debora -c "Debora Andrade" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP-Vendas
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP-Vendas
useradd roberto -c "Roberto Paulo" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP-Vendas

useradd josefina -c "Josefina Dr." -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP-Seguranca
useradd amanda -c "Amanda Brito" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123)  -G GRP-Seguranca
useradd rogerio -c "Rogerio Torres" -m -s /bin/bash -p $(mkpasswd -m sha-512 Senha123) -G GRP-Seguranca

echo "Definindo permissões  dos diretórios..."


chown root:GRP-Administracao /administracao
chown root:GRP-Vendas /vendas
chown root:GRP-Seguranca /seguranca

chmod 777 /publico
chmod 770 /administracao
chmod 770 /vendas
chmod 770 /seguranca

echo "Procedimento Finalizado!"


