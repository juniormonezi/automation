#language: pt
Funcionalidade: Divisão da Ação de Cobranças em Carteiras de Cobrança
  SENDO gestor ou coordenador
  POSSO dividir as carteiras
  PARA QUE a divisão de carteiras entre os consultores seja controlada.

  Contexto: Acesso a funcionalidade de divisão de ação de cobranças em carteiras de cobrança.
    Dado que estou na funcionalidade de divisão de ação de cobranças em carteiras de cobrança.

  Cenário: Cadastro divisão de carteira com sucesso.
    Quando preencho o campo Quantidade corretamente.
      | Quantidade |
      |         03 |
    E aciono a opção Dividir.
    Então divisão deve considerar o número de contribuintes como o dividendo, a ação é dividida pelo número de contribuintes. 
   	E Caso a operação resulte em resto.
   	Então o resto deve ser aplicaod na última carteira.
    E seleciono OK para confirmar.
    Então o sistema redireciona para a tela anterior com as divisões da ação de cobrança em carteira definidas.

  Esquema do Cenário: Campos Obrigatórios.
    Quando não preencho o campo <"Quantidade"> corretamente.
      | Quantidade |
      |            |
    E seleciono a opção Dividir
    Então o sistema exibe a mensagem "Campo obrigatório não preenchido."

    