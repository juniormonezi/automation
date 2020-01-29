package monezi.junior.teste;

import java.util.List;
import java.util.Random;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.FindBys;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.events.WebDriverEventListener;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Massa;
import massa.Mensagem;

public class GesconCadastroItensSubItensIncluir extends BasePageObject {

	@FindBy(xpath = "//*/input[@role='combobox']")
	private WebElement campoConcessao;

	@FindBys(@FindBy(xpath = "//*/ng-dropdown-panel//*/div[@id]"))
	private List<WebElement> selecionarConcessao;

	@FindBy(id = "a21bebcf0983")
	private WebElement elementoConcessao;

	@FindBy(id = "item")
	private WebElement campoItem;

	@FindBy(xpath = "//*/input[@placeholder='Descrição do item']")
	private WebElement campoDescricaoDobItem;

	@FindBy(xpath = "//*/input[@placeholder='Subitem']")
	private WebElement campoSubItem;

	@FindBy(xpath = "//*/input[@placeholder='Selecione']")
	private WebElement campoNomeDoSubItem;

	@FindBy(name = "DescricaoSubitem")
	private WebElement campoDescricaoDoSubItem;

	@FindBy(id = "InserirSubitem")
	private WebElement botaoInserirSubitem;

	@FindBy(id = "Inserir")
	private WebElement botaoSalvar;

	@FindBy(xpath = "//*/div//button[2]")
	private WebElement botaoIncluir;
	// xpath = "//*/p//button[2]"

	public GesconCadastroItensSubItensIncluir(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
	}

	public void cadastrarItensSubItens() {

		campoConcessao.click();
		/*
		 * Random rand = new Random(); int index; index =
		 * rand.nextInt(selecionarConcessao.size());
		 * selecionarConcessao.get(index).click();;
		 */
		campoConcessao.sendKeys(Massa.CAMPO_CONCESSAO + Keys.ENTER);

		campoItem.sendKeys(Massa.CAMPO_ITEM);
		campoDescricaoDobItem.sendKeys(Massa.CAMPO_DESCRICAODOITEM);
		campoSubItem.sendKeys(Massa.CAMPO_SUBITEM);
		campoNomeDoSubItem.sendKeys(Massa.CAMPO_NOMEDOSUBITEM);
		campoDescricaoDoSubItem.sendKeys(Massa.CAMPO_DESCRICAO_DO_SUBITEM);
		wait.until(ExpectedConditions.elementToBeClickable(botaoInserirSubitem));
		botaoInserirSubitem.click();
		botaoSalvar.click();
		
		
	}
	public void incluirNovoItem() {
		
		wait.until(ExpectedConditions.elementToBeClickable(botaoIncluir));
		new Actions(driver).moveToElement(botaoIncluir).click(botaoIncluir).perform();

		
	}

	/*
	 * public boolean verificarIncluirComSucesso() {
	 * wait.until(ExpectedConditions.textToBePresentInElement(mensagem,
	 * Mensagem.MSG_SUC_INCLUIR));
	 * 
	 * return driver.getPageSource().contains(Mensagem.MSG_SUC_INCLUIR); }
	 * 
	 */

}
