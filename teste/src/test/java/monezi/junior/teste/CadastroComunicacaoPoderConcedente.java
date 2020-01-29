package monezi.junior.teste;

import org.junit.Before;
import org.junit.Test;

public class CadastroComunicacaoPoderConcedente extends BaseTeste {
	

	private LoginPagina loginPagina;
	private GesconComunicacaoPoderConcedenteCadastrar comunicacaoPoderConcedente;
	
	@Before
	
	public void antesTeste() {
		
		iniciaAplicacao();
		loginPagina = new LoginPagina(driver);
		comunicacaoPoderConcedente = new GesconComunicacaoPoderConcedenteCadastrar(driver);
		
	}
	
	@Test
	
	public void realizarTest() {
		
		loginPagina.realizarLogin();
		comunicacaoPoderConcedente.cadastroComunicacao();
		comunicacaoPoderConcedente.cadastroCorrespondenciaEnviada();
	}
	
	
	
}
