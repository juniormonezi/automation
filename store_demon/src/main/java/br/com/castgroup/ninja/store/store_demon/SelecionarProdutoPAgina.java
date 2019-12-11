package br.com.castgroup.ninja.store.store_demon;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SelecionarProdutoPAgina extends BasePageObject {
	
	@FindBy(xpath = "//*/a[@href='http://demo-store.seleniumacademy.com/racer-back-maxi-dress-603.html']")
	private WebElement botaoDetalhesProduto;
	

	public SelecionarProdutoPAgina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}
	
	public void escolherProduto(){
		
		botaoDetalhesProduto.click();
		
		
	}
	

}
