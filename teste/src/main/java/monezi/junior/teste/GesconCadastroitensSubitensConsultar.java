package monezi.junior.teste;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Massa;

public class GesconCadastroitensSubitensConsultar extends BasePageObject {
	
	@FindBy(xpath="//*[@id=\'concessao\']/div/div/div[2]/input")
	private WebElement campoConcessao;
	
	/*
	@FindBy(id = "item")
	private WebElement campoItem;
	
	@FindBy(xpath = "//*[@id=\"itemDescricao\"]/div/div/div[2]/input")
	private WebElement campoDescricaoDoItem;
	
	@FindBy(id = "subitem")
	private WebElement campoSubitem;
	
	@FindBy(xpath = "//*[@id=\"DescricaoDoItem\"]/div/div/div[2]/input")
	private WebElement campoNomeSubiitem;
	
	@FindBy(xpath ="//*[@id=\"stauts\"]/div/div/div[2]/input")
	private WebElement campoStatus;
	
	*/
	@FindBy(id = "Consultar")
	private WebElement botaoConsultar;
	
	
	
	
	

	public GesconCadastroitensSubitensConsultar(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
	}
	
	public void realizarConsulta() {
		
		//campoConcessao.sendKeys(Massa.CAMPO_CONCESSAO + Keys.ENTER);
		wait.until(ExpectedConditions.elementToBeClickable(botaoConsultar));
		botaoConsultar.click();
		
		
	}
	

}
