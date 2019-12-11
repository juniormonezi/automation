package br.com.castgroup.ninja.store.store_demon;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Massa;
import massa.Mensagem;

public class ConfirmacaoCompraPagina extends BasePageObject {
	
	@FindBy(className = "success-msg")
	private WebElement mensagemSucesso;
	
	@FindBy(name = "country_id")
	private WebElement country;
	
	@FindBy(name = "region")
	private WebElement estado;
	
	@FindBy(name="estimate_city")
	private WebElement cidade;
	
	@FindBy(name="estimate_postcode")
	private WebElement zip;
	
	@FindBy(xpath ="//*/button[@title='Estimate']")
	private WebElement botaoEstimate;
	
	@FindBy(id ="s_method_freeshipping_freeshipping")
	private WebElement radioFreeShipping;
	
	@FindBy(xpath = "//*/button[@title='Update Total']")
	private WebElement botaoUpdateTotal;
	
	@FindBy(xpath = "//*/button[@title='Proceed to Checkout']")
	private WebElement botaoProceedToCheckout;
	

	
	
	
	

	public ConfirmacaoCompraPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}
	public void confirmarDetalhesCompra() {
		
		
		country.sendKeys(Massa.PAIS);
		wait.until(ExpectedConditions.visibilityOf(estado));
		estado.sendKeys(Massa.ESTADO);
		cidade.sendKeys(Massa.CIDADE);
		zip.sendKeys(Massa.ZIP);
		wait.until(ExpectedConditions.elementToBeClickable(botaoEstimate));
		botaoEstimate.click();
		radioFreeShipping.click();
		botaoUpdateTotal.click();
		botaoProceedToCheckout.click();
		
		
		
	}
	
	public boolean verificaMensagemSucessoAddCarrinho() {
		wait.until(ExpectedConditions.textToBePresentInElement(mensagemSucesso, Mensagem.MSG_SUC_ADDCARRINHO));
		
		return driver.getPageSource().contains(Mensagem.MSG_SUC_ADDCARRINHO);
		
		
		
	}
	

}
