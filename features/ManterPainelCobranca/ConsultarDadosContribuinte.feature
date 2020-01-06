#language: pt
Funcionalidade: Consultar Dados do Contribuinte
  SENDO o consultor 
  POSSO visualizar as informações do contribuinte
  PARA QUE possa realizar o contato com o contribuinte
  
  Contexto: Acesso a funcionalidade
    Dado que estou na tela de Consultar Dados do Contribuinte
    
    
    Cenário: Exibição realizada com sucesso.
    Quando partir de integrações com sistemas externos, o sistema deve buscar os dados de endereço e os telefones do contribuinte
    Então O sistema deve identificar na sua base de dados se existe cupom de sorteio cadastrado para o contribuinte. Quando existir, deverá recuperar os dados do cupom cadastrado mais recente.
   	

		Cenário: check Telefone
    Quando sistema deve buscar os dados de endereço e os telefones do contribuinte
    Então O telefone deve estar inicialmente desmarcado na cor cinza.
    E aciono o checkbox do telefone.
    Então o sistema deve armazenar o número do telefone para o contribuinte, e o ícone deve ficar na cor verde, indicando que aquele número de telefone é válido.
	
		Cenário: Desmarcar Telefone
    Quando sistema deve buscar os dados de endereço e os telefones do contribuinte
    Então O telefone deve estar marcado na cor verde.
    E aciono o checkbox do telefone novamente.
    Então o sistema deve excluir o telefone da base de dados, retornando ao estado inicial cinza.