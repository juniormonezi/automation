package monezi.junior.teste;

import org.junit.Before;
import org.junit.Test;

public class ConsultarDashboardRecebida extends BaseTeste {
	private LoginPagina loginPagina;
	private DashboardComunicacaoRecebida dashBoardRecebida;
	
	@Before
	public void antesTeste() {
		
		iniciaAplicacao();
		loginPagina = new LoginPagina(driver);
		dashBoardRecebida = new DashboardComunicacaoRecebida(driver);
		
		
	}

	@Test
	public void realizandoTest() {
		
		loginPagina.realizarLogin();
		dashBoardRecebida.pesquisarDashboardComunicacaoRecebida();
	}
}
