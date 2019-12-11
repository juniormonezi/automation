package br.com.castgroup.ninja.store.store_demon;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import massa.Mensagem;

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
		wait = new WebDriverWait(driver, 15);
		wait.until(ExpectedConditions.urlContains(Mensagem.URL_SUC_COMPRA));
		driver.quit();
	}

}