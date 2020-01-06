#language: pt
Funcionalidade: Formulário de Emissão de Informações.
   
  SENDO o administrador do sistema
  POSSO gerar documento com informações de contribuintes
  PARA QUE eu possa enviar o formulário para outros setores
  
  Contexto: Acesso a funcionalidade do Formulário de Emissão de Informações.
    Dado que estou na funcionalidade do Formulário de Emissão de Informações.
    
    Cenário: Consulta realizada com sucesso
    Quando Preencho os filtros desejados do Formulário de Emissão de Informações.
    E aciono o botão consultar.
    Então o sistema retorna os formulários cadastrados.
