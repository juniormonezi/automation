package monezi.junior.teste;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BaseTeste {
	
	protected WebDriver driver;
	protected WebDriverWait wait;
	
	public void iniciaAplicacao() {
		
		System.setProperty(Configuracao.NOME_DRIVER, Configuracao.CAMINHO_DRIVER);
		driver = new ChromeDriver();
		driver.get(Configuracao.URL);
		driver.manage().window().maximize();
		
	}
	
	public void finalizaAplicacao() {
		wait = new WebDriverWait(driver, 20);
		
		driver.quit();
		
	}

}
