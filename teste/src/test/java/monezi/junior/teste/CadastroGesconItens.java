package monezi.junior.teste;

import org.junit.Before;
import org.junit.Test;

public class CadastroGesconItens extends BaseTeste {
	private LoginPagina loginPagina;

	private GesconCadastroItemSubItemPagina gesconItemSubitemPagina;
	private GesconCadastroItensSubItensIncluir gesconItensSubItensIncluir;
	private GesconCadastroItensSubItensVoltar gesconItensSubItensincluirVoltar;
	private GesconCadastroitensSubitensConsultar gesconItensSubItensConsultar;

	@Before
	public void antesDoTeste() {

		iniciaAplicacao();
		loginPagina = new LoginPagina(driver);
		gesconItemSubitemPagina = new GesconCadastroItemSubItemPagina(driver);
		gesconItensSubItensIncluir = new GesconCadastroItensSubItensIncluir(driver);
		gesconItensSubItensincluirVoltar = new GesconCadastroItensSubItensVoltar(driver);
		gesconItensSubItensConsultar = new GesconCadastroitensSubitensConsultar(driver);

	}

	@Test
	public void executarTest() {

		loginPagina.realizarLogin();
		gesconItemSubitemPagina.acessarItemsSubitem();
		gesconItensSubItensIncluir.cadastrarItensSubItens();
		gesconItensSubItensIncluir.incluirNovoItem();
		gesconItensSubItensIncluir.cadastrarItensSubItens();
		gesconItensSubItensIncluir.incluirNovoItem();
		gesconItensSubItensIncluir.cadastrarItensSubItens();
		gesconItensSubItensIncluir.incluirNovoItem();
		gesconItensSubItensIncluir.cadastrarItensSubItens();
		//gesconItensSubItensincluirVoltar.cadastrarItensSubitensVoltar();
		//gesconItensSubItensConsultar.realizarConsulta();

	}

}
