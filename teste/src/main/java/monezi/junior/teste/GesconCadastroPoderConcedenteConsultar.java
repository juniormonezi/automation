package monezi.junior.teste;

import java.util.List;
import java.util.Random;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.FindBys;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.events.WebDriverEventListener;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Sleeper;

public class GesconCadastroPoderConcedenteConsultar extends BasePageObject {

	@FindBy(id = "poderConcedente")
	private WebElement campoNomePoderConcedente;

	@FindBy(xpath = "//*/button[@class='ms-choice dropdown-toggle']")
	private WebElement campoConcessao;
	
	@FindBy(xpath = "//*/div[@tabindex='17']")
	private WebElement selecionarConcessão;

	@FindBy(xpath = "//*/div[@class='ng-input']")
	private WebElement campoStatus;

	@FindBy(linkText = "Todos")
	private WebElement selecionarStatus;

	@FindBy(id = "consultar")
	private WebElement botaoConsultar;

	@FindBys(@FindBy(xpath = "//*/div[@tabindex]"))
	private List<WebElement> concessaoAleatoria;

	public GesconCadastroPoderConcedenteConsultar(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);

	}

	public void realizarConsulta() {
		
		wait.until(ExpectedConditions.elementToBeClickable(campoConcessao));
		campoConcessao.click();
		
		//wait.until(ExpectedConditions.visibilityOfAllElements(concessaoAleatoria));

		int index = 0;
		Random rand = new Random();

		index = rand.nextInt(concessaoAleatoria.size());
		
		
		concessaoAleatoria.get(index).click();

		wait.until(ExpectedConditions.elementToBeClickable(botaoConsultar));
		botaoConsultar.click();

	}

}
