#language: pt
Funcionalidade: Consultar Cupom de Sorteio
  SENDO o administrador do sistema
  POSSO consultar os cupons cadastrados no sistema
  PARA QUE eu possa visualizar as informações do contribuinte

Contexto: Acesso a funcionalidade
    Dado que estou na tela de consulta de cupom

  Cenário: Consulta realizada com sucesso
    Quando preencho os campos de pesquisa corretamente
    E seleciono a opção consultar
    Então o sistema realiza a pesquisa com sucesso

  Cenário: Nenhum resultado encontrado
    Quando preencho os campos de pesquisa incorretamente
    E seleciono a opção consultar
    Então o sistema não retorna resultados
