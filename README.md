# 🛠️ Provisionamento de Estrutura de Diretórios e Permissões com Bash Script

Este projeto consiste em um script de automação para provisionamento de usuários, grupos, diretórios e permissões de acesso em sistemas Linux.

## 📁 Estrutura Criada

**Diretórios:**
- `/publico`
- `/administracao`
- `/vendas`
- `/seguranca`

**Grupos:**
- `GRP-Administracao`
- `GRP-Vendas`
- `GRP-Seguranca`

**Usuários:**
- **Administracao:** carlos, maria, joao
- **Vendas:** debora, sebastiana, roberto
- **Segurança:** josefina, amanda, rogerio

## ⚙️ Regras e Comportamento do Script

- Todo o provisionamento é feito via Bash Script
- O usuário `root` é o dono de todos os diretórios
- O diretório `/publico` tem acesso total para todos os usuários
- Cada grupo tem acesso total ao seu diretório correspondente
- Usuários não têm acesso a diretórios de grupos que não pertencem

## 🔐 Observação sobre a Definição de Senhas

Durante a criação dos usuários, a senha é definida com o comando `mkpasswd`, proveniente do pacote `whois`, por ser compatível com o `useradd` em distribuições modernas.

---

## 🚀 Como Executar

Se você estiver logado como root e quiser rodar o script diretamente:
Primeiro, dê permissão de execução com o comando chmod +x infra.sh, e depois execute com ./infra.sh.
Obs: É necessário estar no mesmo diretório onde o arquivo está localizado.

Caso queira executar o arquivo a partir de outro local, como por exemplo estando na raiz (/), use o comando bash seguido do caminho completo até o arquivo. Exemplo:
bash /home/seu_usuario/diretorio/infra.sh
