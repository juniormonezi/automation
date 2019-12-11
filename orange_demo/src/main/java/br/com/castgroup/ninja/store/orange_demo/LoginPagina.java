package br.com.castgroup.ninja.store.orange_demo;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import massa.Massa;

public class LoginPagina extends BasePageObject {
	
	@FindBy(name = "txtUsername")
	private WebElement campoUsuario;
	
	@FindBy(name = "txtPassword")
	private WebElement campoSenha;
	
	@FindBy(name = "Submit")
	private WebElement botaoLogin;

	public LoginPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
	}
	
	public void realizarLogin() {
		
		campoUsuario.sendKeys(Massa.LOGIN);
		campoSenha.sendKeys(Massa.SENHA);
		botaoLogin.click();
	}
	
	
	
	

}
