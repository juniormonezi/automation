#language: pt
Funcionalidade: Consultar Tipos de Benefícios Fiscais
  SENDO o administrador do sistema
  POSSO ativar ou inativar um benefício fiscal
  PARA QUE para possa ser utilizado na negociação da dívida.

  Cenário: Ativar/Inativar com sucesso
    Dado que seleciono um Tipos de Benefícios Fiscais
    E seleciono a opção Ativar/Inativar
    Então o sistema exibe a mensagem "Deseja ativar/inativar o registro selecionado?"
    Quando aceito a mensagem
    Então o sistema Ativa ou Inativa de acordo com status do registro

  Cenário: Ativar/Inativar status vigente
    Dado que seleciono um Tipo de Benefícios Fiscais
    E aciono a opção de Ativar/Inativar com status Vigente
    Então o sistema deve exibir a mensagem "O registro está vigente. Deseja inativar o registro?"
    Quando aceito a mensagem
    Então o sistema Ativa ou Inativa de acordo com status do registro
