package br.com.castgroup.ninja.store.store_demon;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import massa.Massa;

public class DetalhesProdutoAddCarrinhoPagina extends BasePageObject {
	
	@FindBy(xpath = "//*/img[@src='http://demo-store.seleniumacademy.com/media/catalog/swatches/1/21x21/media/purple.png']")
	private WebElement selecionarCor;
	
	@FindBy(linkText = "L")
	private WebElement selecionarTamanho;
	
	@FindBy(name = "qty")
	private WebElement selecionarQuantidade;
	
	@FindBy(xpath = "//*/button[@onclick]")
	private WebElement addCarrinho;

	public DetalhesProdutoAddCarrinhoPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}

	public void escolherDetalhesProduto() {
		
		selecionarCor.click();
		selecionarTamanho.click();
		selecionarQuantidade.clear();
		selecionarQuantidade.sendKeys(Massa.QUANTIDADE);
		wait.until(ExpectedConditions.elementToBeClickable(addCarrinho));
		addCarrinho.click();
	}
	
	
}
