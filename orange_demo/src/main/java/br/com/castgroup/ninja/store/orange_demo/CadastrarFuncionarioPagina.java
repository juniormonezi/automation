package br.com.castgroup.ninja.store.orange_demo;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Massa;

public class CadastrarFuncionarioPagina extends BasePageObject{
	
	@FindBy(xpath = "//*/a[@href='/index.php/pim/viewPimModule']")
	private WebElement menuPin;
	
	@FindBy(xpath = "//*/a[@href='/index.php/pim/addEmployee']")
	private WebElement menuAddEmployee;
	
	@FindBy(id="menu_pim_addEmployee")
	private WebElement clicarAddEmployee;

	@FindBy(name = "firstName")
	private WebElement nome;
	
	@FindBy(name = "middleName")
	private WebElement nomeMeio;
	
	@FindBy(name = "lastName")
	private WebElement sobrenome;
	
	@FindBy(name = "chkLogin")
	private WebElement checkboxCriarLogin;
	
	@FindBy(name = "user_name")
	private WebElement userName;
	
	@FindBy(name = "user_password")
	private WebElement userPassword;
	
	@FindBy(name = "re_password")
	private WebElement confirmPassword;
	
	@FindBy(name = "status")
	private WebElement status;
	
	@FindBy(id = "btnSave")
	private WebElement botaoSalvar;
	
	
	
	
	
	
	public CadastrarFuncionarioPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
	}
	
	public void selecionarMenu() {
		
		new Actions(driver).moveToElement(menuPin).perform();
		wait.until(ExpectedConditions.elementToBeClickable(menuAddEmployee));
		new Actions(driver).moveToElement(menuAddEmployee).perform();
		clicarAddEmployee.click();
	}
	
	public void cadastrar() {
		
		wait.until(ExpectedConditions.visibilityOf(nome));		
		nome.sendKeys(Massa.CADASTRO_NOME);
		nomeMeio.sendKeys(Massa.CADASTRO_MIDNAME);
		sobrenome.sendKeys(Massa.CADASTRO_SOBRENOME);
		wait.until(ExpectedConditions.elementToBeClickable(clicarAddEmployee));
		checkboxCriarLogin.click();
		wait.until(ExpectedConditions.visibilityOf(userName));
		userName.sendKeys(Massa.CADASTRO_LOGIN);
		userPassword.sendKeys(Massa.CADASTRO_SENHA);
		confirmPassword.sendKeys(Massa.CADASTRO_CONFIRM_SENHA);
		status.sendKeys(Massa.CADASTRO_STATUS);
		botaoSalvar.click();
		
		
	}

}
