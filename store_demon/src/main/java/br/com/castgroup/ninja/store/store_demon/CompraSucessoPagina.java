package br.com.castgroup.ninja.store.store_demon;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Mensagem;

public class CompraSucessoPagina extends BasePageObject {
	
	@FindBy(xpath = "//*/div[@class='page-title']")
	private WebElement mensagemSucesso;
	
	@FindBy(xpath = "//*/button[@title='Continue Shopping']")
	private WebElement botaoContinueShopp;

	public CompraSucessoPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
	}
	
	public void acharBotao() {
		
		wait.until(ExpectedConditions.elementToBeClickable(botaoContinueShopp));
		
	}
	
	public boolean mensagemSucessoCompra() {
		
		return driver.getPageSource().contains(Mensagem.MSG_SUC_COMPRASUCESSO);
		
	}
	public void finalizarCompra() {
		
		botaoContinueShopp.click();
	}

}
