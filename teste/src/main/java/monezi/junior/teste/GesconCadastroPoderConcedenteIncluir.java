package monezi.junior.teste;

import java.util.List;
import java.util.Random;
import java.util.RandomAccess;

import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.ClickAction;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.FindBys;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;

import jdk.management.resource.internal.inst.RandomAccessFileRMHooks;
import massa.Massa;

public class GesconCadastroPoderConcedenteIncluir extends BasePageObject {

	

	@FindBy(id = "poderConcedente")
	private WebElement campoNomePoderConcedente;

	@FindBy(xpath = "//*/button[@class='ms-choice dropdown-toggle ng-invalid']")
	private WebElement campoConcessao;

	@FindBys(@FindBy(xpath = "//*/div[@tabindex]"))
	private List<WebElement> listaConcessoes;

	// @FindBys(@FindBy(xpath = "//*/input[@type='checkbox']"))
	// private List<WebElement> selecionarConcessao1;

	// @FindBy(xpath = "//*/div[@class='ms-drop dropdown-menu
	// show']/div[@tabindex='6']")
	// private WebElement selecionarConcessao2;

	@FindBy(id = "nomeSetores")
	private WebElement campoNome;

	@FindBy(id = "descricao")
	private WebElement campoDescricao;

	@FindBy(id = "contato")
	private WebElement campoContato;

	@FindBy(id = "adicionar")
	private WebElement botaoAdicionar;

	@FindBy(id = "primeiroNome")
	private WebElement campoPrimeiroNome;

	@FindBy(id = "primeiroPrazo")
	private WebElement campoPrimeiroPrazo;

	@FindBy(id = "salvar")
	private WebElement botaoSalvar;

	@FindBy(id = "Voltar")
	private WebElement botaoVoltar;
	
	@FindBy(id ="incluir")
	private WebElement botaoIncluir;

	public GesconCadastroPoderConcedenteIncluir(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);

	}

	public void cadastrarPoderConcedente() {

		campoNomePoderConcedente.sendKeys(Massa.PODER_CON_NOMEPODERCONCEDENTE);
		campoConcessao.click();

		int index = 0;
		Random rand = new Random();

		index = rand.nextInt(listaConcessoes.size());
		
		listaConcessoes.get(index).click();

		campoNome.sendKeys(Massa.PODER_CON_NOME);
		campoDescricao.sendKeys(Massa.PODER_CON_DESCRICAO);
		campoContato.sendKeys(Massa.PODER_CON_CONTATO);
		botaoAdicionar.click();
		campoPrimeiroNome.sendKeys(Massa.PODER_CON_PRIMEIRAINSTANCIA_NOME);
		campoPrimeiroPrazo.sendKeys(Massa.PODER_CON_DATALIMITE);
		botaoSalvar.click();
		wait.until(ExpectedConditions.elementToBeClickable(botaoIncluir));
		//botaoIncluir.click();
		

	}

	public void voltarComSucesso() {
		wait.until(ExpectedConditions.elementToBeClickable(botaoVoltar));
		botaoVoltar.click();
	}

}
