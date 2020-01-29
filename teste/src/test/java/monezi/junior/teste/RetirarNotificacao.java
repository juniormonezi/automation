package monezi.junior.teste;

import org.junit.Before;
import org.junit.Test;

public class RetirarNotificacao extends BaseTeste {
	
	private ClicarNotificacoes clicarNotificacoes;
	
	@Before
	public void antesDoTeste() {
		iniciaAplicacao();
		clicarNotificacoes = new ClicarNotificacoes(driver);
	}
	
	@Test
	public void realizarTeste() {
		
		clicarNotificacoes.acessarSistema();
	}
	

}
