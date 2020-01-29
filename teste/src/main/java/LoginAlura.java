import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import monezi.junior.teste.BasePageObject;

public class LoginAlura extends BasePageObject {
	
	@FindBy(xpath = "//*/div//div//a[@href='https://cursos.alura.com.br/']")
	private WebElement botaoEntrar;

	public LoginAlura(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}
	
	public void primeiroPasso() {
		
		botaoEntrar.click();
	}
	

}
