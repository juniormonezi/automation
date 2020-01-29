package agetec.siscob_automacao;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import massa.Massa;

public class Login extends BasePageObject{
	
	
	@FindBy(id="username")
	private WebElement user;
	
	@FindBy(id="password")
	private WebElement password;
	
	@FindBy(name="login")
	private WebElement btnLogin;
	
	
	public Login(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
	}
	
	
	public void fazerLogin() {
		
		user.sendKeys(Massa.USER);
		password.sendKeys(Massa.PASSWORD);
		btnLogin.click();
		
	}
}
