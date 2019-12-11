package br.com.castgroup.ninja.store.store_demon;

import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.FindBys;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Massa;
import massa.Mensagem;

public class CheckoutPagina extends BasePageObject {
	
	@FindBy(className = "page-title")
	private WebElement mensagemSucesso;
	
	@FindBy(id="login:guest")
	private WebElement radioCheckoutGuest;
	
	@FindBy(id="onepage-guest-register-button")
	private WebElement botaoContinue;
	
	@FindBy(name = "billing[firstname]")
	private WebElement firstName;
	
	@FindBy(name= "billing[lastname]")
	private WebElement lastName;
	
	@FindBy(name ="billing[email]")
	private WebElement email;
	
	@FindBy(name = "billing[street][]")
	private WebElement endereco;
	
	@FindBy(name ="billing[city]")
	private WebElement cidade;
	
	//@FindBy(name ="billing[region_id]")
	//private WebElement state;
	
	@FindBy(name="billing[postcode]")
	private WebElement zip;
	
	@FindBy(name="billing[country_id]")
	private WebElement pais;
	
	@FindBy(name="billing[telephone]")
	private WebElement telefone;
	
	@FindBys({@FindBy(name="billing[use_for_shipping]")})
	private List<WebElement> radioShipAddress;
	
	@FindBy(xpath ="//*/button[@title='Continue']")
	private WebElement botaoContinue2;
	
	@FindBy(id="s_method_freeshipping_freeshipping")
	private WebElement radioFree;
	
	@FindBy(xpath="//*/button[@onclick='shippingMethod.save()']")
	private WebElement botaoContinue3;
	
	@FindBy(xpath="//*/button[@onclick='payment.save()']")
	private WebElement botaoContinue4;
	
	@FindBy(xpath="//*/button[@title='Place Order']")
	private WebElement botaoPlaceOrder;
	
	
	
	
	
	
	

	public CheckoutPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
		
	}
	public void realizandoCheckout() {
		
		radioCheckoutGuest.click();
		botaoContinue.click();
		wait.until(ExpectedConditions.visibilityOf(firstName));
		firstName.sendKeys(Massa.CHECK_FIRST_NAME);
		lastName.sendKeys(Massa.CHECK_LAST_NAME);
		email.sendKeys(Massa.CHECK_EMAIL);
		endereco.sendKeys(Massa.CHECK_ENDERECO);
		cidade.sendKeys(Massa.CHECK_CIDADE);
		zip.sendKeys(Massa.CHECK_ZIP);
		pais.sendKeys(Massa.CHECK_PAIS);
		telefone.sendKeys(Massa.CHECK_TELEFONE);
		
		//wait.until(ExpectedConditions.elementToBeClickable(checkboxShipAddress));
		for(WebElement radio:radioShipAddress) {
			if(radio.getAttribute("value").equals("1"))
				radio.click();
		}
		
		
		botaoContinue2.click();
		wait.until(ExpectedConditions.elementToBeClickable(radioFree));
		radioFree.click();
		botaoContinue3.click();
		wait.until(ExpectedConditions.elementToBeClickable(botaoContinue4));
		botaoContinue4.click();
		wait.until(ExpectedConditions.elementToBeClickable(botaoPlaceOrder));
		botaoPlaceOrder.click();
		
		
		
		
		
		
	}
	
	public boolean checkouMensagemSucesso() {
		wait.until(ExpectedConditions.textToBePresentInElementValue(mensagemSucesso, Mensagem.MSG_SUC_CHECKOUT));
		
		return driver.getPageSource().contains(Mensagem.MSG_SUC_CHECKOUT);
		
	}
	

}
