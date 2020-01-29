package agetec.siscob_automacao;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BaseTest {

	protected WebDriver driver;
	protected WebDriverWait wait;
	
	public void iniciaAplicacao() {
		
		
		System.setProperty(Configuracoes.NOME_DRIVER, Configuracoes.CAMINHO_DRIVER);
		driver = new ChromeDriver();
		driver.get(Configuracoes.URL);
		driver.manage().window().maximize();
		
	}
	
	public void finalizaAlicacao() {
		
		wait = new WebDriverWait(driver, 20);
		driver.quit();
	}
}
