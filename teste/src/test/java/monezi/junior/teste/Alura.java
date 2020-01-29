package monezi.junior.teste;

import org.junit.Before;
import org.junit.Test;

public class Alura extends BaseTeste {
	private LoginAlura loginAlura;
	
	@Before
	public void antesTeste() {
		
		
		iniciaAplicacao();
		loginAlura = new LoginAlura(driver);
	}
	
	@Test
	public void realizarTeste() {
		
		loginAlura.primeiroPasso();
		
		
	}

}
