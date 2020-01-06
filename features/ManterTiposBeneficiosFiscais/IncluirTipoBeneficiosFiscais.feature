#language: pt
Funcionalidade: Incluir Tipos de Benefícios Fiscais
  SENDO o administrador do sistema
  POSSO incluir benefícios fiscais
  PARA QUE eu possa utilizar na negociação das dívidas

  Contexto: Acesso a funcionalidade de inclusão de tipo de benefício fiscal
    Dado que estou na funcionalidade de inclusão de tipo de benefício fiscal

  Cenário: Cadastro de benefício fiscal com sucesso
    Quando tipo de beneficio fiscal preencho os campos
      | Nome do Tributo | Ano  | Data Inicial | Data Final | Descrição                 |
      | Tributo001      | 2018 |     01012018 |   31122018 | Descrição sobre o tributo |
    E beneficio fiscal seleciono a opção salvar
    Então beneficio fiscal persiste as informações na base de dados
    E o sistema exibe a mensagem "Registro salvo com sucesso."

  Cenário: Nome do tribulo duplicado
    Quando tipo de beneficio fiscal preencho os campos
      | Nome do Tributo | Ano  | Data Inicial | Data Final | Descrição              |
      | Tributo001      | 2017 |     01012017 |   31122017 | tributo nome duplicado |
    E beneficio fiscal seleciono a opção salvar
    Então beneficio fiscal persiste as informações na base de dados
    E o sistema exibe a mensagem "Registro já cadastrado no sistema."

  Esquema do Cenário: Obrigatoriedade de campos
    Quando tipo de beneficio fiscal preencho os campos "<Nome do Tributo>", "<Ano>", "<Data Inicial>", "<Data Final>", "<Descrição>"
    E beneficio fiscal seleciono a opção salvar
    Então beneficio fiscal não persiste as informações na base de dados
    E o sistema exibe a mensagem "Campo obrigatório não preenchido."

    Exemplos: 
      | Nome do Tributo | Ano  | Data Inicial | Data Final | Descrição                 |
      |                 | 2018 |     01012018 |   31122018 | Descrição sobre o tributo |
      | Tributo001      |      |     01012018 |   31122018 | Descrição sobre o tributo |
      | Tributo001      | 2018 |              |   31122018 | Descrição sobre o tributo |
      |                 |      |              |   31122018 | Descrição sobre o tributo |

  Esquema do Cenário: Data inválida
    Quando tipo de beneficio fiscal preencho os campos "<Nome do Tributo>", "<Ano>", "<Data Inicial>", "<Data Final>", "<Descrição>"
    E beneficio fiscal seleciono a opção salvar
    Então beneficio fiscal não persiste as informações na base de dados
    E o sistema exibe a mensagem "Data Inválida"

    Exemplos: 
      | Nome do Tributo | Ano  | Data Inicial | Data Final | Descrição              |
      | Tributo001      | 2017 |     32012017 |   31122017 | tributo nome duplicado |
      | Tributo001      | 2017 |       012017 |   31122017 | tributo nome duplicado |
      | Tributo001      | 2017 |         2017 |   31122017 | tributo nome duplicado |
      | Tributo001      | 2017 |     01012017 |   32122017 | tributo nome duplicado |
      | Tributo001      | 2017 |     01012017 |     122017 | tributo nome duplicado |
      | Tributo001      | 2017 |     01012017 |       2017 | tributo nome duplicado |

  Esquema do Cenário: Período inválido
    Quando tipo de beneficio fiscal preencho os campos "<Nome do Tributo>", "<Ano>", "<Data Inicial>", "<Data Final>", "<Descrição>"
    E beneficio fiscal seleciono a opção salvar
    Então beneficio fiscal não persiste as informações na base de dados
    E o sistema exibe a mensagem "Data Inválida"

    Exemplos: 
      | Nome do Tributo | Ano  | Data Inicial | Data Final | Descrição              |
      | Tributo001      | 2017 |     31122017 |   01012017 | tributo nome duplicado |
      | Tributo001      | 2017 |     01012018 |   31122017 | tributo nome duplicado |
