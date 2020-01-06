#language: pt
Funcionalidade: Alterar Classificação da Divida
  SENDO o administrador do sistema
  POSSO alterar um tipo de classificação de dívida
  PARA QUE os usuários possam utilizar na classificação da dívida no painel de cobrança

  Contexto: Acesso a funcionalidade de alteração de classificação de dívida
    Dado que estou na funcionalidade de alteração de classificação de dívida

  Cenário: Alterar Classificação da Divida com sucesso
    Quando preencho o campo Classificação da Dívida corretamente
      | Classificação da Dívida |
      |                11111111 |
    E seleciono o botão Salvar
    Então o sistema exibe a mensagem de sucesso "Registro salvo com sucesso."

  Cenário: Alterar Classificação da Divida campo Obrigatório
    Quando não preencho o campo Classificação da Dívida
      | Classificação da Dívida |
      |                         |
    E seleciono o botão Salvar
    Então o sistema exibe a mensagem de obrigatoriedade "Campo obrigatório não preenchido."

  Cenário: Alterar Classificação da Divida registro Duplicado
    Quando preencho o campo Classificação da Dívida
      | Classificação da Dívida |
      |                11111111 |
    E seleciono botão Salvar
    Então o sistema exibe a mensagem de duplicidade "Registro já cadastrado no sistema."

  Cenário: Alterar Classificação da Divida Voltar
    Quando seleciono botão Voltar
    Então o sistema retorna para tela de consultar
