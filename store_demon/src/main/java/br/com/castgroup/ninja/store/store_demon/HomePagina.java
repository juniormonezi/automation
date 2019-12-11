package br.com.castgroup.ninja.store.store_demon;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class HomePagina extends BasePageObject {
	
	@FindBy(xpath = "//*/a[@href='http://demo-store.seleniumacademy.com/sale.html']")
	private WebElement menu;
	
	@FindBy(xpath = "//*/a[@href ='http://demo-store.seleniumacademy.com/sale.html']")
	private WebElement clicarMenu;

	public HomePagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
		
	}
	
	public void selecionarMenu() {
		
		
	new Actions(driver).moveToElement(menu).perform();
	clicarMenu.click();
	
		
		
		
	}
	
	
	

}
