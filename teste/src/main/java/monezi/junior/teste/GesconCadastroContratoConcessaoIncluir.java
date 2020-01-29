package monezi.junior.teste;

import java.util.List;
import java.util.Random;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.FindBys;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Massa;

public class GesconCadastroContratoConcessaoIncluir extends BasePageObject {

	@FindBy(id = "concessao")
	private WebElement campoConcessao;

	@FindBys(@FindBy(xpath = "//*/ng-dropdown-panel//*/div[@id]"))
	private List<WebElement> listaConcessao;

	@FindBy(id = "indexadorDeTarifa")
	private WebElement campoIndexadorTarifa;

	@FindBys(@FindBy(xpath = "//*/ng-dropdown-panel//*/div[@role]"))
	private List<WebElement> selecionarIndexadorTarifa;
	
	@FindBy(id="valorTarifa")
	private WebElement campoTarifa;
	
	@FindBy(xpath = "//*/ng-select[@formcontrolname='qtdMesesRegraIPCA']")
	private WebElement campoRegraIpca;
	
	@FindBys(@FindBy(xpath = "//*/ng-dropdown-panel//*/div[@role]"))
	private List<WebElement> selecionarRegraIpca;

	@FindBy(id = "plus-input-invepar")
	private WebElement pesquisarContrato;

	@FindBy(id = "Consultar")
	private WebElement botaoConsultar;

	@FindBys(@FindBy(xpath = "//*/div//tbody//td[@class]"))
	private List<WebElement> gridItens;

	@FindBy(xpath = "//*/p[@class='col-lg-12 pl-0']/button[2]")
	private WebElement botaoInserir;

	@FindBy(xpath = "//*/ng-select[@ng-reflect-name='classificacaoObjetoContrato']")
	private WebElement inserirClassificacao;

	@FindBys(@FindBy(xpath = "//*/ng-dropdown-panel//*/div[@role]"))
	private List<WebElement> selecionarClassificacao;

	@FindBy(name = "Objeto")
	private WebElement campoObjeto;

	@FindBy(xpath = "//*/button[@class='ms-choice dropdown-toggle']")
	private WebElement campoRodovia;

	@FindBys(@FindBy(xpath = "//*/div//div//input[@type='checkbox']"))
	private List<WebElement> selecionarRodovia;

	// */div[@class=\"ms-drop dropdown-menu show\"]/div[2]

	@FindBy(xpath = "//*/ng-select[@formcontrolname=\"tipoObjetoContrato\"]")
	private WebElement campoTipoObjeto;

	@FindBys(@FindBy(xpath = "//*/ng-dropdown-panel//*/div[@role]"))
	private List<WebElement> selecionarTipoObjeto;

	public GesconCadastroContratoConcessaoIncluir(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);

	}

	public void escolherItem(WebElement elemento, List<WebElement> lista) {

		elemento.click();

		Random rand = new Random();

		int index;

		index = rand.nextInt(lista.size());

		lista.get(index).click();
	}

	public void cadastroConcessaoIncluir() {
			
		/*
			escolherItem(campoConcessao, listaConcessao);
			escolherItem(campoIndexadorTarifa, selecionarIndexadorTarifa);
			campoTarifa.sendKeys(Massa.CONTRATOCONCE_CADASTRO_TARIFA);
			escolherItem(campoRegraIpca, selecionarRegraIpca);
		*/
		campoConcessao.click();
		campoConcessao.sendKeys(Massa.CONTRATOCONCE_CONCESSAO + Keys.ENTER);
		

		pesquisarContrato.click();
		wait.until(ExpectedConditions.elementToBeClickable(botaoConsultar));
		escolherItem(botaoConsultar, gridItens);

		botaoInserir.click();

		escolherItem(inserirClassificacao, selecionarClassificacao);

		campoObjeto.sendKeys(Massa.CONTRATOCONCE_CADASTRO_CAD);

		escolherItem(campoRodovia, selecionarRodovia);

		escolherItem(campoTipoObjeto, selecionarTipoObjeto);

		// campoRodovia.click();
		// selecionarRodovia.click();

	}

}
