package monezi.junior.teste;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.sun.corba.se.impl.oa.poa.ActiveObjectMap.Key;

import massa.Massa;

public class GesconCadastroItemSubitemNovo extends BasePageObject {
	
	@FindBy(id="concessao")
	private WebElement concessao;
	
	@FindBy(xpath = "//*/div/ng-select[@class=\"ng-select ng-select-single ng-select-searchable ng-untouched ng-pristine ng-valid ng-select-opened ng-select-bottom\"]")
	private WebElement tipoItem;
	
	@FindBy(id="text")
	private WebElement nomeTipoItem;
	
	@FindBy(id="adicionar")
	private WebElement iconeAdicionar;
	
	@FindBy(id="Salvar")
	private WebElement botaoSalvar;
	
	@FindBy(id="Cancelar")
	private WebElement botaoCancelar;
	
	
	public void criarItemSubitem() {
		
		//new Actions(driver).moveToElement(concessao).click().perform();
		wait.until(ExpectedConditions.elementToBeSelected(concessao));
		concessao.click();
		concessao.sendKeys(Massa.CAMPO_CONCESSAO + Keys.ENTER);
		tipoItem.click();
		tipoItem.sendKeys(Massa.CAMPO_TIPOITEM + Keys.ENTER);
		nomeTipoItem.sendKeys(Massa.CAMPO_ITEM);
		botaoSalvar.click();
		iconeAdicionar.click();
		
	}
	
	
	
	
	
	
	
	public GesconCadastroItemSubitemNovo(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
		
	}
	

}
