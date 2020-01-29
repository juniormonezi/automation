package monezi.junior.teste;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class GesconCadastroPoderConcedentePagina extends BasePageObject {
	@FindBy(xpath = "//*/i[@class='fa fa-bars fa-menu active']")
	private WebElement menu;
	
	@FindBy(xpath = "//*/a[@href='#menuGescon']")
	private WebElement menuGescon;
	
	@FindBy(xpath = "//*/a[@href='#menuGesconCasdastro']")
	private WebElement menuGesconCadastro;
	
	@FindBy(linkText = "Poder Concedente")
	private WebElement menuPoderConcedente;
	
	@FindBy(id = "incluir")
	private WebElement botaoIncluir;

	public GesconCadastroPoderConcedentePagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}
	
	public void acessarCadastroPoderConcedente() {
		
		menu.click();
		wait.until(ExpectedConditions.elementToBeClickable(menuGescon));
		menuGescon.click();
		wait.until(ExpectedConditions.elementToBeClickable(menuPoderConcedente));
		menuPoderConcedente.click();
		wait.until(ExpectedConditions.elementToBeClickable(botaoIncluir));
		botaoIncluir.click();
	}

}
