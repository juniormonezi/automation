#language: pt
Funcionalidade: Consultar Classificação da Divida
  SENDO o administrador do sistema
  POSSO consultar os tipos de status de dívidas
  PARA QUE eu possa utilizar na classificação da dívida

  Contexto: Acesso a funcionalidade
    Dado que estou na tela de consulta de classificação da divida
    
    
    Cenário: Consulta realizada com sucesso
    Quando preencho os campos de pesquisa corretamente
    E seleciono a opção consultar
    Então o sistema realiza a pesquisa com sucesso

  Cenário: Nenhum resultado encontrado
    Quando preencho os campos de pesquisa incorretamente
    E seleciono a opção consultar
    Então o sistema não retorna resultados
    
   