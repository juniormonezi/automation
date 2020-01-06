#language: pt
Funcionalidade: Gerenciar Detalhamento da Dívida
SENDO o consultor 
POSSO visualizar as informações detalhadas da dívida
PARA QUE possa realizar a cobrança da dívida do contribuinte

Contexto: Acesso a funcionalidade de Gerenciar Detalhamento da Dívida
 Dado que estou na funcionalidade de Gerenciar Detalhamento da Dívida
 
 Cenário: Consulta realizada com sucesso.
 Quando As informações sobre a inscrição, valores devidos e parcelas devidas da dívida deverão ser obtidas a partir de integração com o BI da Agetec.
 Então informações servirão de base para o consultor identificar os valores devidos e emitir as guias de pagamento conforme o que foi acordado na cobrança do contribuinte.
 E seleciona o campo <"Classificação da Dívida">
 E seleciona o botão salvar.
 Então o sistema salva as informações na base de dados.
 E Cadastrar um registro de histórico da dívida, contendo o protocolo gerado, o mesmo status da dívida (não há alteração), a classificação da dívida, os comentários (quando houver) a data e hora e o usuário que realizou a ação.
 
 Cenário: Campo obrigatório não preenchido
 Quando não seleciono uma <"Classificação da Dívida">
 E aciono o botão Salvar
 Então o sistema emite a mensagem "Campo obrigatório não preenchido."
 
 Cenário: Quitação da Dívida
 Quando verificar o checkbox de Quitação da Dívida
 E seleciona o checkbox da Quitação da Dívida
 Então o sistema deve selecionar por default todos os débitos(parcelas) a serem pagas da tabela.
 
 