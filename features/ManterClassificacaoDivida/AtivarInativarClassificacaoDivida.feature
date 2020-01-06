#language: pt
Funcionalidade: Consultar Classificação da Divida
  SENDO o administrador do sistema
  POSSO ativar ou inativar uma classificação da dívida
  PARA QUE  possa ser utilizado classificação da dívida no painel de cobrança

  Cenário: Ativar/Inativar com sucesso
    Dado que seleciono uma Classificação da Dpivida
    E seleciono a opção Ativar/Inativar
    Então o sistema exibe a mensagem "Deseja ativar/inativar o registro selecionado?"
    Quando aceito a mensagem
    Então o sistema Ativa ou Inativa de acordo com status do registro
