#language: pt
Funcionalidade: Incluir Cupom de Sorteio
  SENDO o administrador do sistema
  POSSO cadastrar um cupom de sorteio
  PARA QUE os usuários possam utilizar na cobrança das dívidas

  Contexto: Acesso a funcionalidade de inclusão de cupom de sorteio
    Dado que estou na funcionalidade de inclusão de cupom

  Cenário: Cadastro de cupom com sucesso
    Quando preencho o campo inscrição de imóvel corretamente
      | Inscrição do Imóvel |
      |            12234566 |
    E seleciono a opção Consultar
    Então o sistema exibe os dados do contribuinte para preenchimento
    Quando preencho os campos corretamente
      | Imposto   | Competência | Nome   | CPF         | RG       | CEP      | Endereco           | N  | Bairro      | Telefone    | Telefone2  | Telefone3  | E-mail                   |
      | Iptu 2019 |        2019 | Junior | 22041003820 | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 | 17987678987 | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
      | Iptu 2019 |        2019 |        | 22041003820 |          |          |                    |    | 19989889878 |             |            |            |                          |
    E seleciono a opção salvar
    Então o sistema exibe a mensagem "Registro salvo com sucesso."

  Cenário: Imovel inválido
    Quando preencho o campo inscrição de imóvel incorretamente
      | Inscrição do Imóvel |
      | AAAAAAAAAA          |
    E seleciono a opção Consultar
    Então o sistema exibe a mensagem "Inscrição do Imóvel não encontrada."

  Esquema do Cenário: Campos obrigatórios
    Quando preencho o campo <"inscrição de imóvel"> corretamente
    E seleciono a opção Consultar
    Então o sistema exibe os dados do contribuinte para preenchimento
    Quando preencho os campos <"Imposto">, <"Competência">, <"Nome">, <"CPF">, <"RG">, <"CEP">, <"Endereco">, <"N">, <"Bairro">, <"Telefone">, <"Telefone2">, <"Telefone3">, <"E-mail">
    E seleciono a opção salvar
    Então o sistema exibe a mensagem "Campo obrigatório não preenchido."

    Exemplos: 
      | Inscrição do Imóvel | Imposto   | Competência | Nome   | CPF         | RG       | CEP      | Endereco           | N  | Bairro      | Telefone    | Telefone2  | Telefone3  | E-mail                   |
      |            12234566 |           |        2019 | Junior | 22041003820 | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 | 17987678987 | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
      |            12234566 | Iptu 2019 |             | Junior | 22041003820 | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 | 17987678987 | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
      |            12234566 | Iptu 2019 |        2019 | Junior |             | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 | 17987678987 | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
      |            12234566 | Iptu 2019 |        2019 | Junior | 22041003820 | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 |             | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
      |            12234566 |           |             | Junior |             | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 |             | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |

  Esquema do Cenário: CPF Inválido
    Quando preencho o campo <"inscrição de imóvel"> corretamente
    E seleciono a opção Consultar
    Então o sistema exibe os dados do contribuinte para preenchimento
    Quando preencho os campos <"Imposto">, <"Competência">, <"Nome">, <"CPF">, <"RG">, <"CEP">, <"Endereco">, <"N">, <"Bairro">, <"Telefone">, <"Telefone2">, <"Telefone3">, <"E-mail">
    E seleciono a opção salvar
    Então o sistema exibe a mensagem "CPF Inválido."

    Exemplos:
      | Inscrição do Imóvel | Imposto   | Competência | Nome   | CPF         | RG       | CEP      | Endereco           | N  | Bairro      | Telefone    | Telefone2  | Telefone3  | E-mail                   |
      |            12234566 | Uptu 2019 |        2019 | Junior | 99955455101 | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 | 17987678987 | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
      |            12234566 | Uptu 2019 |        2019 | Junior |      999554 | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 | 17987678987 | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
