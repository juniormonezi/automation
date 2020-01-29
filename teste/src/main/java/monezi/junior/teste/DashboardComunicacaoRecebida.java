package monezi.junior.teste;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class DashboardComunicacaoRecebida extends BasePageObject{
	
	@FindBy(id="toggle-btn")
	private WebElement menu;
	
	@FindBy(xpath = "//*/a[@href='#menuGescon']")
	private WebElement menuGescon;
	
	@FindBy(xpath = "//*/a[@href='#menuGesconIndicadores']")
	private WebElement menuIndicadores;
	
	@FindBy(linkText = "Dashboard Comunicação Recebida do Poder Concedente​")
	private WebElement menuDeashBoard;
	
	
	@FindBy(id="concessao")
	private WebElement campoConcessao;
	
	@FindBy(id="consultar")
	private WebElement botaoConsultar;
	
	@FindBy(xpath = "//*/div/date-picker-custom[@ng-reflect-name='incioPeriodo']")
	private WebElement periodoDe;
	
	@FindBy(xpath = "//*/div/date-picker-custom[@ng-reflect-name='fimPeriodo']")
	private WebElement periodoAte;
	

	public DashboardComunicacaoRecebida(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
	
	}
	
	public void pesquisarDashboardComunicacaoRecebida() {
		
		menu.click();
		wait.until(ExpectedConditions.elementToBeClickable(menuGescon));
		menuGescon.click();
		wait.until(ExpectedConditions.elementToBeClickable(menuIndicadores));
		menuIndicadores.click();
		wait.until(ExpectedConditions.elementToBeClickable(menuDeashBoard));
		menuDeashBoard.click();
		
		
		
		
	}
	
	

}
