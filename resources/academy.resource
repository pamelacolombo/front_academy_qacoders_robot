*** Settings ***
Library  SeleniumLibrary    
Library  String

*** Variables ***
${URL}                         https://automacao.qacoders-academy.com.br/login
${mailSysadminInput}           email
${passwordSysadminInput}       password
${entrarButton}                login
${cadastrosSpan}               Cadastros
${diretoriasSpan}              Diretorias
${novoCadastroButton}          Novo Cadastro
${nomeDiretoriaInput}          boardName
${salvarButton}                save
${usuariosSpan}                Usuários
${nomeCompletoInput}           fullName
${emailInput}                  mail
${acessProfileInput}           accessProfile
${cpfInput}                    cpf
${passwordInput}               password
${confirmPasswordInput}        confirmPassword
${editarButton}                edit
${salvarAlteracoesButton}      save
${nomeDiretoriaClass}          fullName
${usuarioPamela}               p["pamela_colombo@qacoders.com.br"]
${avancarPagina}               div[button class=”css-kab9pu”

*** Keywords ***

Abrir o navegador 
  Open Browser  browser=headlesschrome
  Maximize Browser Window

Fechar o navegador
  Capture Page Screenshot
  Close Browser

#CADASTRO DE NOVA DIRETORIA

Criar massa de dados de Diretoria
  ${palavra_randomica}  Generate Random String  length=8  chars=[LETTERS]
  ${palavra_randomica}  Convert To Lower Case    ${palavra_randomica} 
  Set Test Variable    ${BOARD_NAME}             P${palavra_randomica}
  Log                  ${BOARD_NAME}  
  ${palavra_randomica_alterar}  Generate Random String  length=8  chars=[LETTERS]
  ${palavra_randomica_alterar}  Convert To Lower Case    ${palavra_randomica_alterar} 
  Set Test Variable    ${BOARD_NAME_ALTERAR}             P${palavra_randomica_alterar}
  Log                  ${BOARD_NAME_ALTERAR} 

Passo 1 - Acessar a página de login Qacoders-Academy
  Go To   url=${URL}

Passo 2 - Digitar um e-mail administrador
  Wait Until Element Is Visible    locator=${mailSysadminInput}
  Input Text                       locator=${mailSysadminInput}  text=sysadmin@qacoders.com
  Sleep  2s

Passo 3 - Digitar uma senha administrador
  Wait Until Element Is Visible    locator=${passwordSysadminInput}
  Input Password                   locator=${passwordSysadminInput}  password=1234@Test
  Sleep  2s

 Passo 4 - Clicar em Entrar
  Wait Until Element Is Visible    locator=${entrarButton} 
  Click Button                     locator=${entrarButton} 
  Sleep  2s

Passo 5 - Clicar em Cadastros
  Wait Until Element Is Visible    locator=${cadastrosSpan}
  Click Element                    locator=${cadastrosSpan}
  Sleep  2s

Passo 6 - Clicar em Diretorias
  Wait Until Element Is Visible    locator=${diretoriasSpan}
  Click Element                    locator=${diretoriasSpan}
  Sleep  2s

Passo 7 - Clicar em Novo Cadastro 
  Wait Until Element Is Visible    locator=${novoCadastroButton} 
  Click Button                     locator=${novoCadastroButton} 
  Sleep  2s

Passo 8 - Digitar Nome da Diretoria
  Criar massa de dados de Diretoria
  Wait Until Element Is Visible    locator=${nomeDiretoriaInput} 
  Input Text                       locator=${nomeDiretoriaInput}  text=${BOARD_NAME}  
  Sleep  2s

Passo 9 - Clicar em Salvar Novo
  Wait Until Element Is Visible    locator=${salvarButton}  
  Click Button                     locator=${salvarButton}  
  Sleep  2s

#Passo 10 - Verificar mensagem de cadastro com sucesso Diretoria 
  #Wait Until Page Contains    Cadastro realizado com sucesso!

#CADASTRO DE NOVO USUARIO ADMINISTRADOR

Criar massa de dados de usuário
  ${palavra_randomica_email}  Generate Random String  length=8  chars=[LETTERS]
  ${palavra_randomica_email}  Convert To Lower Case    ${palavra_randomica_email} 
  Set Test Variable    ${EMAIL}                  ${palavra_randomica_email}@qacoders.com.br
  Log                  ${EMAIL}   
  ${palavra_randomica_cpf}  Generate Random String  length=11  chars=[NUMBERS]
  Set Test Variable    ${CPF}                    ${palavra_randomica_cpf}     
  Log                  ${CPF}  
  ${palavra_randomica_nome}  Generate Random String  length=8  chars=[LETTERS]
  Set Test Variable    ${NOME}             ${palavra_randomica_nome} 
  ${palavra_randomica_nome}  Convert To Lower Case    ${palavra_randomica_nome} 
  ${palavra_randomica_sobrenome}  Generate Random String  length=8  chars=[LETTERS]
  Set Test Variable    ${SOBRENOME}             ${palavra_randomica_sobrenome}
  ${palavra_randomica_sobrenome}  Convert To Lower Case    ${palavra_randomica_sobrenome} 
  Set Test Variable    ${FULLNAME}             P${palavra_randomica_nome} C${palavra_randomica_sobrenome}
  Log  ${FULLNAME} 

Passo 6 - Clicar em Usuários
  Wait Until Element Is Visible    locator=${usuariosSpan}
  Click Element                    locator=${usuariosSpan} 
  Sleep  2s

Passo 8 - Digitar Nome Completo
  Criar massa de dados de usuário
  Wait Until Element Is Visible    locator=${nomeCompletoInput} 
  Input Text                       locator=${nomeCompletoInput}  text=${FULLNAME} 
  Sleep  2s

Passo 9 - Digitar E-mail
  Wait Until Element Is Visible    locator=${emailInput} 
  Input Text                       locator=${emailInput}   text=${EMAIL} 
  Sleep  2s

Passo 10 - Digitar Perfil de Acesso
  Wait Until Element Is Visible    locator=${acessProfileInput}
  Input Text                       locator=${acessProfileInput}  text=ADMIN
  Sleep  2s

Passo 11 - Digitar CPF
  Wait Until Element Is Visible    locator=${cpfInput}
  Input Text                       locator=${cpfInput}  text=${CPF} 
  Sleep  2s

Passo 12 - Digitar Senha
  Wait Until Element Is Visible    locator=${passwordInput} 
  Input Password                   locator=${passwordInput}   password=pamela@1234
  Sleep  2s

Passo 13 - Digitar Confirme a sua senha
  Wait Until Element Is Visible    locator=${confirmPasswordInput} 
  Input Password                   locator=${confirmPasswordInput}  password=pamela@1234
  Sleep  2s

Passo 14 - Clicar em Salvar Novo
  Wait Until Element Is Visible    locator=${salvarButton}  
  Click Button                     locator=${salvarButton}  
  Sleep  2s

 #Passo 15 - Verificar mensagem de cadastro com sucesso Administrador
  #Wait Until Page Contains   Olá ${FULLNAME}, cadastro realizado com sucesso.

#EDITAR DIRETORIA CADASTRADA

Passo 2 - Digitar um e-mail cadastrado
  Wait Until Element Is Visible    locator=${mailSysadminInput}
  Input Text                       locator=${mailSysadminInput}  text=pamela_colombo@qacoders.com.br
  Sleep  2s

Passo 3 - Digitar uma senha cadastrada
  Wait Until Element Is Visible    locator=${passwordSysadminInput}
  Input Password                   locator=${passwordSysadminInput}  password=1234@Test
  Sleep  2s

Passo 7 - Clicar em editar
  Wait Until Element Is Visible    locator=${editarButton} 
  Click Element                    locator=${editarButton} 
  Sleep  2s

Passo 8 - Alterar os dados da Diretoria
  Criar massa de dados de Diretoria
  Wait Until Element Is Visible    locator=${nomeDiretoriaInput}   
  Input Text                       locator=${nomeDiretoriaInput}    text=${BOARD_NAME_ALTERAR} 
  Sleep  2s

#Passo 8 - Alterar os dados da Diretoria
 # Criar massa de dados de Diretoria
 # Wait Until Element Is Visible    locator=${avancarPagina}
 # Click Element                    locator=${avancarPagina}
 # Sleep  2s
 # Wait Until Page Contains         locator=${usuarioPamela} 
 # Sleep  2s 
 # Wait Until Element Is Visible    locator=${editarButton}
 # Click Element                    locator=${editarButton}
 # Sleep  2s
 # Wait Until Element Is Visible    locator=${nomeDiretoriaInput}   
 # Input Text                       locator=${nomeDiretoriaInput}    text=${BOARD_NAME_ALTERAR} 
 # Sleep  2s

Passo 9 - Clicar em Salvar Alterações
  Wait Until Element Is Visible    locator=${salvarButton}
  Click Button                     locator=${salvarButton}
  Sleep  2s

#Passo 10 - Verificar mensagem de editar com sucesso Diretoria 
  #Wait Until Page Contains    Cadastro atualizado com sucesso.

