package curso_selenium;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class PrimeiraClasse_JUnit {
	
	@BeforeClass
	public static void antesDeTudo() {
		System.out.println("Executando @BeforeClass");
	}
	
	@Before
	public void antesdoTeste() {
		System.out.println("Executando @Before");
	}
	
	@Test
	public void teste1() {
		System.out.println("Executando teste1");	
	}
	
	@Test
	public void teste2() {
		System.out.println("Executando teste2");	
	}
	
	@Test
	public void teste3() {
		System.out.println("Executando teste3");	
	}
	
	@After
	public void depoisDoTeste() {
		System.out.println("Executando @After");
	}
	
	@AfterClass
	public static void depoisDeTudo() {
		System.out.println("Executando @AfterClass");
	}
}
