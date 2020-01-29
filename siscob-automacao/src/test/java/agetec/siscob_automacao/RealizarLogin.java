package agetec.siscob_automacao;

import org.junit.Before;
import org.junit.Test;

public class RealizarLogin extends BaseTest{
	
	private Login login;
	
	@Before
	
	public void antesTeste() {
		
		iniciaAplicacao();
		login = new Login(driver);
		
	}
	@Test
	
	public void realizarTest() {
		
		login.fazerLogin();
		
		
		
	}

}
