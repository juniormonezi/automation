package monezi.junior.teste;

import org.junit.Before;
import org.junit.Test;

public class CadastroItemSubitem extends BaseTeste{

	private LoginPagina loginPagina;
	private GesconCadastroItemSubItemPagina itemSubitemPagina;
	private GesconCadastroItemSubitemNovo itemSubitemNovo;
	
	
	@Before
	public void antesTeste() {
		
		iniciaAplicacao();
		loginPagina = new LoginPagina(driver);
		itemSubitemPagina = new GesconCadastroItemSubItemPagina(driver);
		itemSubitemNovo = new GesconCadastroItemSubitemNovo(driver);
		
	}
	
	@Test
	public void executarTest() {
		
		loginPagina.realizarLogin();
		itemSubitemPagina.acessarItemsSubitem();
		itemSubitemNovo.criarItemSubitem();
	}
	
}
