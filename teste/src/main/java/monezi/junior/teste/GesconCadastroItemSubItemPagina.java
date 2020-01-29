package monezi.junior.teste;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class GesconCadastroItemSubItemPagina extends BasePageObject {
	
	@FindBy(id="toggle-btn")
	private WebElement menu;
	
	@FindBy(xpath = "//*/a[@href='#menuGescon']")
	private WebElement menuGescon;
	////*/a/div/span[contains(@ng-reflect-klass, 'gescon')]
	
	@FindBy(xpath = "//*/a[@href='#menuGesconCasdastro']")
	private WebElement menuGesconCadastro;
	
	@FindBy(linkText = "Itens e Subitens")
	private WebElement itenseSubitens;
	
	@FindBy(id = "Inserir")
	private WebElement botaoIncluir;
	
	
	

	public GesconCadastroItemSubItemPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}
	
	public void acessarItemsSubitem() {
		
		//wait.until(ExpectedConditions.elementToBeClickable(menu));
		new Actions(driver).moveToElement(menu).click(menu).perform();
		wait.until(ExpectedConditions.elementToBeClickable(menuGescon));
		new Actions(driver).moveToElement(menuGescon).click(menuGescon).perform();
		//menuGescon.click();
		wait.until(ExpectedConditions.elementToBeClickable(menuGesconCadastro));
		menuGesconCadastro.click();
		wait.until(ExpectedConditions.elementToBeClickable(itenseSubitens));
		itenseSubitens.click();
		wait.until(ExpectedConditions.elementToBeClickable(botaoIncluir));
		botaoIncluir.click();
		
		
		
		
		
		
		
		
	}
	
	

}
