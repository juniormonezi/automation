#language: pt
Funcionalidade: Consultar Ação de Cobrança.
  SENDO o gestor ou coordenador
  POSSO consultar as ações de cobrança
  PARA QUE seja possível visualizar as ações de cobrança existentes e seus respectivos status

  Contexto: Acesso a funcionalidade
    Dado que estou na tela de Consulta de Ações de Cobrança

  Esquema do Cenário: Consulta realizada com sucesso
    Quando preencho os campos "<Numero>", "<Nome da Cobranca>", "<Data Criação de >", "<Data Criação ate>","<Status Processamento>" em consultar Ações de cobrança
    E seleciono a opção consultar em consultar Ações de Cobrança
    Então o sistema realiza a pesquisa com sucesso em consultar Ações de Cobrança

    Exemplos: 
      | Numero | Nome da Cobranca | Data Criação de | Data Criação até | Data Criação ate       | Status Processamento |
      |  00001 | IPTU 2018        | 2019-10-01      | 2019-10-15       | Processado com Sucesso |                      |
      |        |                  | 2019-10-01      | 2019-10-15       | Processado com Sucesso |                      |
      |        |                  |                 | 2019-10-15       | Processado com Sucesso |                      |
      |        |                  |                 |                  | Processado com Sucesso |                      |
      |        |                  |                 |                  | Processado com Sucesso |                      |
      |        |                  |                 |                  |                        |                      |

  Esquema do Cenário: Nenhum resultado emncontrado em Consultar Ações de Cobrança
    Quando preencho os campos "<Numero>", "<Nome da Cobranca>", "<Data Criação de >", "<Data Criação ate>","<Status Processamento>" em consultar Ações de cobrança
    E seleciono a opção consultar em consultar Ações de Cobrança
    Então o sistema não retorna registros em  consultar Ações de Cobrança

    Exemplos: 
      | Numero | Nome da Cobranca | Data Criação de | Data Criação até | Data Criação ate         | Status Processamento |
      |  00001 | IPTU 2018        | 2019-10-01      | 2019-10-15       | Falha                    |                      |
      |        |                  |                 | 2019-10-15       | Aguardando Processamento |                      |

  Esquema do Cenário: Intervalo de Data incorreto em Consultar Ações de Cobrança
    Quando preencho os campos "<Numero>", "<Nome da Cobranca>", "<Data Criação de >", "<Data Criação ate>","<Status Processamento>" em consultar Ações de cobrança
    E seleciono a opção consultar em consultar Ações de Cobrança
    Então o sistema não retorna registros em  consultar Ações de Cobrança

    Exemplos: 
      | Numero | Nome da Cobranca | Data Criação de | Data Criação até | Data Criação ate         | Status Processamento |
      |  00001 | IPTU 2018        | 2019-10-01      | 2019-10-15       | Falha                    |                      |
      |        |                  |                 | 2019-10-15       | Aguardando Processamento |                      |
