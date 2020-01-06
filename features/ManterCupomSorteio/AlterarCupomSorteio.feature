#language: pt
Funcionalidade: Alterar Cupom de Sorteio
  SENDO o administrador do sistema
  POSSO alterar um cupom de sorteio
  PARA QUE os usuários possam utilizar na cobrança das dívidas

  Contexto: Acesso a funcionalidade de alteração de cumpom de sorteio
    Dado que estou na funcionalidade de alteração de cupom

  Cenário: Alteração de cupom com sucesso
    Dado que o usuário realiza a alteração do cupom
    E seleciona a opção salvar
    Então o sistema exibe a mensagem "Registro salvo com sucesso."

  Esquema do Cenário: Campos obrigatórios
    Quando preencho os campos <"Imposto">, <"Competência">, <"Nome">, <"CPF">, <"RG">, <"CEP">, <"Endereco">, <"N">, <"Bairro">, <"Telefone">, <"Telefone2">, <"Telefone3">, <"E-mail">
    E seleciona a opção salvar
    Então o sistema exibe a mensagem "Campo obrigatório não preenchido."

    Exemplos: 
      | Imposto   | Competência | Nome   | CPF         | RG       | CEP      | Endereco           | N  | Bairro      | Telefone    | Telefone2  | Telefone3  | E-mail                   |
      |           |        2019 | Junior | 22041003820 | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 | 17987678987 | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
      | Iptu 2019 |             | Junior | 22041003820 | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 | 17987678987 | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
      | Iptu 2019 |        2019 | Junior |             | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 | 17987678987 | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
      | Iptu 2019 |        2019 | Junior | 22041003820 | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 |             | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |
      |           |             | Junior |             | 38847578 | 14800000 | Av, 15 de Novembro | 12 | 19989889878 |             | 1133455454 | 1123857889 | rodrigo.grillo@teste.com |

  Esquema do Cenário: CPF Inválido
    Quando preencho o campo <"CPF"> com dados inválidos
    E seleciona a opção salvar
    Então o sistema exibe a mensagem "CPF Inválido."

    Exemplos: 
      | CPF         |
      | 99955455101 |
      |      999554 |
