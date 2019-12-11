package br.com.castgroup.ninja.store.orange_demo;

import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.FindBys;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Massa;

public class PersonalizarPerfilPagina extends BasePageObject {
	
	@FindBy(id = "btnSave")
	private WebElement botaoEditSalve;
	
	@FindBy(xpath = "//*/input[@id='btnSave']")
	private WebElement btnEditSalve;
	
	@FindBy(name = "personal[txtOtherID]")
	private WebElement outroId;
	
	@FindBy(name = "personal[txtLicenNo]")
	private WebElement numeroLicenca;
	
	@FindBy(name = "personal[txtLicExpDate]")
	private WebElement dataLicence;
	
	@FindBys(@FindBy(name = "personal[optGender]"))
	private List<WebElement> selectSexo;
	
	@FindBy(name = "personal[cmbMarital]")
	private WebElement estadoCivil;
	
	@FindBy(name = "personal[cmbNation]")
	private WebElement nacionalidade;
	
	@FindBy(name = "personal[DOB]")
	private WebElement dataNascimento;
	
	@FindBy(xpath = "//*/a[@href='/index.php/leave/viewLeaveModule']")
	private WebElement menuLeave;
	
	@FindBy(xpath = "//*/a[@href='/index.php/leave/assignLeave']")
	private WebElement menuAssignLeave;
	

	public PersonalizarPerfilPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
	
		
		
	}
	
	public void editarPerfil() {
		
		wait.until(ExpectedConditions.attributeContains(botaoEditSalve, "value", "Edit"));
		botaoEditSalve.click();
		wait.until(ExpectedConditions.visibilityOf(outroId));
		outroId.sendKeys(Massa.PERSO_PERFIL_OUTROID);
		numeroLicenca.sendKeys(Massa.PERSO_PERFIL_LICENCA);
		dataLicence.click();
		dataLicence.sendKeys(Massa.PERSO_PERFIL_EXPIRARDATA);
		
		for(WebElement radio:selectSexo) {
			if(radio.getAttribute("value").equals("1"))
				radio.click();
	}
		estadoCivil.sendKeys(Massa.PERSO_PERFIL_ESTADOCIVIL);
		nacionalidade.sendKeys(Massa.PERSO_PERFIL_NACIONALIDADE);
		dataNascimento.click();
		dataNascimento.sendKeys(Massa.PERSO_PERFIL_DATNASCIMENTO);
		botaoEditSalve.click();
		
		
		
	}
	public void selecionarMenuLeave() {
		
		new Actions(driver).moveToElement(menuLeave).perform();
		wait.until(ExpectedConditions.elementToBeClickable(menuAssignLeave));
		new Actions(driver).moveToElement(menuAssignLeave).perform();
		menuAssignLeave.click();
	}
	
}
