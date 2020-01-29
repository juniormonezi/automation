package monezi.junior.teste;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class GesconCadastroItensSubItensVoltar extends BasePageObject {
	
	@FindBy( id = "Voltar")
	private WebElement botaoVoltar;
	
	@FindBy(xpath = "//*/div/button[@class='btn btn-primary']")
	private WebElement botaoConfirmaVoltarSim;

	public GesconCadastroItensSubItensVoltar(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
	}
	
public void cadastrarItensSubitensVoltar() {
	
		
		wait.until(ExpectedConditions.elementToBeClickable(botaoVoltar));
		botaoVoltar.click();
		wait.until(ExpectedConditions.elementToBeClickable(botaoConfirmaVoltarSim));
		botaoConfirmaVoltarSim.click();
	}

}
