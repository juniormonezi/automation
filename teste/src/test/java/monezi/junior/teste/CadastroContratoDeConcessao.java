package monezi.junior.teste;

import org.junit.Before;
import org.junit.Test;

public class CadastroContratoDeConcessao extends BaseTeste {
	
	private LoginPagina loginPagina;
	private GesconCadastroContratoConcessaoPagina contratoConcessaoCadastro;
	private GesconCadastroContratoConcessaoIncluir contratoConcessaoIncluir;
	
	@Before
	public void antesTeste() {
		
		iniciaAplicacao();
		loginPagina = new LoginPagina(driver);
		
		contratoConcessaoCadastro = new GesconCadastroContratoConcessaoPagina(driver);
		contratoConcessaoIncluir = new GesconCadastroContratoConcessaoIncluir(driver);
		
		
		
		
	}
	
	@Test
	public void tsteAplicao() {
		
		
		loginPagina.realizarLogin();
		contratoConcessaoCadastro.acessarGescon();
		contratoConcessaoIncluir.cadastroConcessaoIncluir();
	}

}
