package monezi.junior.teste;

import java.util.List;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.sun.corba.se.impl.oa.poa.ActiveObjectMap.Key;

import massa.Massa;

public class GesconComunicacaoPoderConcedenteCadastrar extends BasePageObject {
	
	@FindBy(id="toggle-btn")
	private WebElement menu;
	
	@FindBy(xpath = "//*/a//div//span[@class='gescon']")
	private WebElement regulatorio;

	@FindBy(xpath = "//*/a[@href='#menuGesconProcessos']")
	private WebElement menuProcesso;
	
	@FindBy(linkText = "Comunicação Poder Concedente")
	private WebElement menuComunicacao;
	
	@FindBy(id="salvar")
	private WebElement botaoIncluir;
	
	@FindBy(id="concessao")
	private WebElement campoConcessao;
	
	@FindAll(@FindBy(xpath = "//*/div[@role]"))
	private List<WebElement> listConcessao;
	
	
	
	//@FindBy(xpath = "//*/ng-dropdown-panel[@class='ng-dropdown-panel ng-select-bottom']")
	//private WebElement listConcessao;
	
	//@FindBy(linkText = "JJJ")
	
	
	
	

	public GesconComunicacaoPoderConcedenteCadastrar(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}
	
	public void cadastroComunicacao() {
		
		
		menu.click();
		wait.until(ExpectedConditions.elementToBeClickable(regulatorio));
		regulatorio.click();
		wait.until(ExpectedConditions.elementToBeClickable(menuProcesso));
		menuProcesso.click();
		wait.until(ExpectedConditions.visibilityOf(menuComunicacao));
		menuComunicacao.click();
		wait.until(ExpectedConditions.elementToBeClickable(botaoIncluir));
		botaoIncluir.click();
		
	}
	public void cadastroCorrespondenciaEnviada() {
		
		wait.until(ExpectedConditions.elementToBeClickable(campoConcessao));
		campoConcessao.click();
		wait.until(ExpectedConditions.visibilityOfAllElements((listConcessao)));
		for (WebElement concessao : listConcessao) {
			if(concessao.getText().equals("JJJ")) {
				concessao.click();
			}
			
		}
		
	}
	

}
