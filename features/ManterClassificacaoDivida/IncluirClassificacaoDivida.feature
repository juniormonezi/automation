#language: pt
Funcionalidade: Incluir Classificação da Divida
  SENDO o administrador do sistema
  POSSO cadastrar um tipo de classificação da dívida
  PARA QUE os usuários possam utilizar na classificação da dívida no painel de cobrança

  Contexto: Acesso a funcionalidade de inclusão de classificação da divida
    Dado que estou na funcionalidade de inclusão de classificação da divida

  Cenário: Cadastro Classificação da Divida com sucesso
    Quando preencho o campo Classificação da Dívida corretamente
      | Classificação da Dívida |
      |                11111111 |
    E seleciono o botão Salvar
    Então o sistema exibe a mensagem de sucesso "Registro salvo com sucesso."

  Cenário: Cadastro Classificação da Divida campo Obrigatório
    Quando não preencho o campo Classificação da Dívida
      | Classificação da Dívida |
      |                         |
    E seleciono o botão Salvar
    Então o sistema exibe a mensagem de obrigatoriedade "Campo obrigatório não preenchido."

  Cenário: Cadastro Classificação da Divida registro Duplicado
    Quando preencho o campo Classificação da Dívida
      | Classificação da Dívida |
      |                11111111 |
    E seleciono botão Salvar
    Então o sistema exibe a mensagem de duplicidade "Registro já cadastrado no sistema."

  