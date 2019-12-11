package br.com.castgroup.ninja.store.orange_demo;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BaseTest {
	
	protected WebDriver driver;
	protected WebDriverWait wait;
	
	
	public void iniciaAplicacao() {
		
		System.setProperty(Configuracao.NOME_DRIVER, Configuracao.CAMINHO_DRIVER);
		driver = new ChromeDriver();
		driver.get(Configuracao.URL);
		driver.manage().window().maximize();
	}
	public void finalizaAplicacao() {
		
		driver.quit();
	}

}