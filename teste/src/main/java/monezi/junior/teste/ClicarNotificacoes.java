package monezi.junior.teste;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Massa;

public class ClicarNotificacoes extends BasePageObject {
	
	@FindBy(id = "zocial-castgroup-adfs")
	private WebElement castGroup;
	
	@FindBy(xpath = "//*/li/a[@id='alertasBotao']")
	private WebElement abrirNotificacao;
	
	@FindBy(xpath = "/html/body/div/app-root/app-layout/app-header/header/nav/div/div/ul/app-alerta-shortlist/li/div/ul/li[1]/div")
	private WebElement notificacao;
	
	@FindBy(name = "UserName")
	private WebElement usuarioCast;
	
	@FindBy(name = "Password")
	private WebElement senhaCast;
	
	@FindBy(id = "submitButton")
	private WebElement botaoEntrar;
	
	

	public ClicarNotificacoes(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}
	
	public void acessarSistema() {
		
		castGroup.click();
		wait.until(ExpectedConditions.visibilityOf(usuarioCast));
		usuarioCast.sendKeys(Massa.CAST_USUARIO);
		senhaCast.sendKeys(Massa.CAST_SENHA);
		botaoEntrar.click();
		
		int i = 0;
		while(i<1114) {
			wait.until(ExpectedConditions.elementToBeClickable(abrirNotificacao));
			abrirNotificacao.click();
			wait.until(ExpectedConditions.elementToBeClickable(notificacao));
			notificacao.click();
			i++;
		}
		
		
	}
	
	

}
