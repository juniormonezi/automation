#language: pt
Funcionalidade: Pesquisar Guias
  SENDO o administrador do sistema
  POSSO listar as guias de pagamento
  PARA QUE eu possa realizar o envio manual ao contribuinte

  Contexto: Acesso a funcionalidade de Pesquisar Guias
    Dado que estou na funcionalidade de Pesquisar Guias

  Esquema do Cenário: Consulta realizada com sucesso
    Quando preencho campo de consulta corretamente "<Nome>", "<CpfCnpj>", "<Inscricao>", "<FormaEnvio>", "<Status>", "<DataEmissaoDe>", "<DataEmissaoAte>", "<DataVencimentoDe>", "<DataVencimentoAte>"
    E seleciono a opção Consultar Guias
    Então o sistema realiza a pesquisa e retorna o resultado em Pesquisar Guias

    Exemplos: 
      | Nome            | CpfCnpj     | Inscricao      | FormaEnvio | Status                | DataEmissaoDe | DataEmissaoAte | DataVencimentoDe | DataVencimentoAte |
      | Maria Aparecida |             |                |            |                       |               |                |                  |                   |
      |                 | 12325678901 |                |            |                       |               |                |                  |                   |
      |                 |             | 12987678909876 |            |                       |               |                |                  |                   |
      |                 |             |                |          1 |                       |               |                |                  |                   |
      |                 |             |                |            | Apenas Guias Emitidas |               |                |                  |                   |
      |                 |             |                |            |                       | 2019-10-01    | 2019-10-30     |                  |                   |
      |                 |             |                |            |                       |               |                | 2019-10-30       | 2019-11-30        |
      |                 |             |                |            | Apenas Guias Enviadas |               |                |                  |                   |

  Esquema do Cenário: Nenhum resultado encontrado
    Quando preencho campo de consulta corretamente "<Nome>", "<CpfCnpj>", "<Inscricao>", "<FormaEnvio>", "<Status>", "<DataEmissaoDe>", "<DataEmissaoAte>", "<DataVencimentoDe>", "<DataVencimentoAte>"
    E seleciono a opção Consultar Guias
    Então o sistema exibe a mensagem "Nenhum registro encontrado."

    Exemplos: 
      | Nome   | CpfCnpj | Inscricao | FormaEnvio | Status | DataEmissaoDe | DataEmissaoAte | DataVencimentoDe | DataVencimentoAte |
      | QAZWSX |         |           |            |        |               |                |                  |                   |

  Esquema do Cenário: Período Inválido em Pesquisar Guias
    Quando preencho os campos incorretos "<Data de Emissão de>","<Data de Emissão ate>","<Data de Vencimento de>","<Data de Vencimento ate>"
    E seleciono a opção Consultar Guias
    Então o sistema exibe a mensagem "Período Inválido."

    Exemplos: 
      | Data de Emissão de | Data de Emissão ate | Data de Vencimento de | Data de Vencimento ate |
      | 2019-10-01         | 2019-01-15          | 2019-10-01            | 2019-01-15             |
      |                    | 2019-10-01          |                       | 2019-10-01             |

  Esquema do Cenário: Período Vencido em Pesquisar Guias
    Quando preencho os campos com  data menor que atual "<Data de Vencimento de>"
    E seleciono a opção Consultar Guias
    Então o sistema exibe a mensagem "Nenhum registro encontrado."

    Exemplos: 
      | Data de Vencimento de |
      | 2019-12-01            |
