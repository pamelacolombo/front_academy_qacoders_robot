*** Settings ***
Resource  ../resources/academy.resource
Test Setup  Abrir o navegador 
Test Teardown  Fechar o navegador

*** Test Cases ***
Cenário de Teste: Cadastro de Diretoria
  Passo 1 - Acessar a página de login Qacoders-Academy
  Passo 2 - Digitar um e-mail administrador
  Passo 3 - Digitar uma senha administrador
  Passo 4 - Clicar em Entrar
  Passo 5 - Clicar em Cadastros
  Passo 6 - Clicar em Diretorias
  Passo 7 - Clicar em Novo Cadastro
  Passo 8 - Digitar Nome da Diretoria
  Passo 9 - Clicar em Salvar Novo
   


Cenário de Teste: Cadastro de usuário administrador
  Passo 1 - Acessar a página de login Qacoders-Academy
  Passo 2 - Digitar um e-mail administrador
  Passo 3 - Digitar uma senha administrador
  Passo 4 - Clicar em entrar
  Passo 5 - Clicar em cadastros
  Passo 6 - Clicar em usuários
  Passo 7 - Clicar em Novo Cadastro
  Passo 8 - Digitar Nome Completo
  Passo 9 - Digitar E-mail
  Passo 10 - Digitar Perfil de Acesso
  Passo 11 - Digitar CPF
  Passo 12 - Digitar Senha
  Passo 13 - Digitar Confirme a sua senha
  Passo 14 - Clicar em Salvar Novo
  


Cenário de Teste: Editar Cadastro de Diretoria
  Passo 1 - Acessar a página de login Qacoders-Academy
  Passo 2 - Digitar um e-mail cadastrado
  Passo 3 - Digitar uma senha cadastrada
  Passo 4 - Clicar em entrar
  Passo 5 - Clicar em Cadastros
  Passo 6 - Clicar em Diretorias
  Passo 7 - Clicar em editar
  Passo 8 - Alterar os dados da Diretoria
  Passo 9 - Clicar em Salvar Alterações
 
 
  

#BUGs: editar <botão pesquisar não funciona, pois não permite confirmação de pesquisa> <botão salvar alterações em editar cadastro de usuário não esta habilitado> 