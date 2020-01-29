package monezi.junior.teste;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class GesconCadastroContratoConcessaoPagina extends BasePageObject {
	
	@FindBy(id = "toggle-btn")
	private WebElement menu;
	
	@FindBy(className = "gescon")
	private WebElement menuGescon;
	//"//*/a//div//span[@class='gescon']"
	
	@FindBy(xpath = "//*/a[@href='#menuGesconCasdastro']")
	private WebElement menuGesconCadastro;
	
	@FindBy(linkText = "Contrato de Concessão")
	private WebElement menuContratoConcessão;
	
	@FindBy(id="Novo")
	private WebElement botaoIncluir;
	
	

	public GesconCadastroContratoConcessaoPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}
	
	public void acessarGescon() {
		
		menu.click();
		wait.until(ExpectedConditions.elementToBeClickable(menuGescon));
		menuGescon.click();
		menuGesconCadastro.click();
		
		wait.until(ExpectedConditions.elementToBeClickable(menuContratoConcessão));
		menuContratoConcessão.click();
		wait.until(ExpectedConditions.elementToBeClickable(botaoIncluir));
		botaoIncluir.click();
	}
	

}
