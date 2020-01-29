package monezi.junior.teste;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Massa;

public class LoginPagina extends BasePageObject {
	
	@FindBy(id = "username")
	private WebElement userName;
	
	@FindBy(id = "password")
	private WebElement senha;
	
	@FindBy(name = "login")
	private WebElement login;
	
		
	@FindBy(id="zocial-castgroup-adfs")
	private WebElement castGroup;
	
	@FindBy(id="submitButton")
	private WebElement botaoEntrar;

	public LoginPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
	}
	
	public void realizarLogin() {
		
		wait.until(ExpectedConditions.visibilityOf(userName));
		userName.sendKeys(Massa.USUARIO);
		senha.sendKeys(Massa.SENHA);
		login.click();
		
		
		/*
		castGroup.click();
		wait.until(ExpectedConditions.visibilityOf(userName));
		userName.sendKeys(Massa.CAST_USUARIO);
		senha.sendKeys(Massa.CAST_SENHA);
		botaoEntrar.click();
	*/
	}
	
	
	
	

}
