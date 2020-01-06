#language :pt
Funcionalidade: Detakhar Ação de Cobrança
  SENDO gestor ou coordenador
  POSSO realizar consultas na ação de cobrança
  PARA QUE poder pesquisar e visualizar as dívidas que compõem a ação de cobrança

  Contexto: Acesso a funcionalidade
    Dado que estou na tela de Detalhar Ação de Cobrança

  Esquema do Cenário: Consulta do Detalhar Ação realizada com sucesso
    Quando preencho os campos "<CPF/CNPJ>", "<Nome/ Razão Social>", "<Tipo Inscrição>", "<Numero Inscrição>","<Valor De>","<Valor Ate>"  em detalhar Ações de cobrança
    E seleciono a opção consultar em detalhar Ações de Cobrança
    Então o sistema realiza a pesquisa com sucesso em detalhar Ações de Cobrança

    Exemplos: 
      | CPF/CNPJ    | Nome/ Razão Social           | Tipo Inscrição | Numero Inscrição | Valor De | Valor Até |
      | 39220598051 | JOAO VERISSIMO CLARO DA CRUZ | TODOS          |       1000010010 |   100,00 |    300,00 |
      |             | JOAO VERISSIMO CLARO DA CRUZ | TODOS          |       1000010010 |   100,00 |    300,00 |
      |             |                              | TODOS          |       1000010010 |   100,00 |    300,00 |
      |             |                              | TODOS          |       1000010010 |   100,00 |    300,00 |
      |             |                              |                |       1000010010 |   100,00 |    300,00 |
      |             |                              |                |                  |          |           |

  Esquema do Cenário: Nenhum resultado encontrado em Detalhar Ação de Cobrança
    Quando preencho os campos  "<CPF/CNPJ>", "<Nome/ Razão Social>", "<Tipo Inscrição>", "<Numero Inscrição>","<Valor De>","<Valor Ate>"  em detalhar Ações de cobrança
    E seleciono a opção consultar  em detalhar Ações de Cobrança
    Então o sistema não retorna registros em consultar tbf

    Exemplos: 
      | CPF/CNPJ    | Nome/ Razão Social | Tipo Inscrição | Numero Inscrição | Valor De | Valor Até |
      | 39220598051 | JOAO SILVA         | TODOS          |       1000010010 |   100,00 |    300,00 |
