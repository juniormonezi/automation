package configuracoesTeste;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class ClasseBaseTeste {

	protected WebDriver driver;

	public void iniciaAplicacao() {
		
		//System.setProperty(ConfiguracoesTeste.NOME_DRIVER, ConfiguracoesTeste.CAMINHO_DRIVER);
		driver = DriverFactory.createDriver("chrome");
		driver = new ChromeDriver();
		driver.get(ConfiguracoesTeste.URL_APLICACAO);// abre a aplicacao
		driver.manage().window().maximize();

	}
}
