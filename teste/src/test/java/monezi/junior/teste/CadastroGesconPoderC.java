package monezi.junior.teste;

import org.junit.Before;
import org.junit.Test;

public class CadastroGesconPoderC extends BaseTeste {
	
	private LoginPagina loginPagina;
	private GesconCadastroPoderConcedentePagina gesconPoderConsedentePagina;
	private GesconCadastroPoderConcedenteIncluir gesconCadastroPoderConcedenteIncluir;
	private GesconCadastroPoderConcedenteConsultar gesconCadastroPoderConcedenteConsultar;
	
	
	@Before
	
	public void antesDoTeste() {
		iniciaAplicacao();
		loginPagina = new LoginPagina(driver);
		gesconPoderConsedentePagina = new GesconCadastroPoderConcedentePagina(driver);
		gesconCadastroPoderConcedenteIncluir = new GesconCadastroPoderConcedenteIncluir(driver);
		gesconCadastroPoderConcedenteConsultar = new GesconCadastroPoderConcedenteConsultar(driver);
	}
	
	@Test
	
	public void executarTest2(){
		
		
		loginPagina.realizarLogin();
		gesconPoderConsedentePagina.acessarCadastroPoderConcedente();
		//gesconCadastroPoderConcedenteIncluir.voltarComSucesso();
		gesconCadastroPoderConcedenteIncluir.cadastrarPoderConcedente();		
		//gesconCadastroPoderConcedenteConsultar.realizarConsulta();
		
		
	}

}
