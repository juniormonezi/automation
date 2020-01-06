#language: pt
Funcionalidade: Excluir Cupom de Sorteio
  SENDO o administrador do sistema
  POSSO excluir um cupom de sorteio
  PARA QUE os usuários deixem de visualizar as informações do registro

  Cenário: Exclusão com sucesso
    Dado que seleciono um cupom de sorteio
    E seleciono a opção excluir
    Então o sistema exibe a mensagem "Deseja excluir o registro selecionado?"
    Quando aceito a mensgem
    Então o sistema exclui o registro
