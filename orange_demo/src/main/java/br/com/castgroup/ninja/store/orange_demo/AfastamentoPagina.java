package br.com.castgroup.ninja.store.orange_demo;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.gargoylesoftware.htmlunit.javascript.host.media.webkitMediaStream;

import massa.Massa;

public class AfastamentoPagina extends BasePageObject {
	
	@FindBy(name = "assignleave[txtEmployee][empName]")
	private WebElement nomeFuncionario;
	
	@FindBy(name = "assignleave[txtLeaveType]")
	private WebElement tipoAfastamento;
	
	@FindBy(name = "assignleave[txtFromDate]")
	private WebElement dataInicioAfastamento;
	
	@FindBy(name = "assignleave[txtToDate]")
	private WebElement dataTerminoAfastamento;
	
	@FindBy(name = "assignleave[partialDays]")
	private WebElement diaParcial;
	
	@FindBy(name = "assignleave[firstDuration][duration]")
	private WebElement duracaoTempo;
	
	@FindBy(name = "assignleave[firstDuration][ampm]")
	private WebElement periodo;
	
	@FindBy(name = "assignleave[txtComment]")
	private WebElement comentario;
	
	@FindBy(id = "assignBtn")
	private WebElement botaoAssign;
	
	@FindBy(id = "confirmOkButton")
	private WebElement botaoConfirmAssign;
	

	public AfastamentoPagina(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}
	
	public void cadastrarAfastamento() {
		
		nomeFuncionario.sendKeys(Massa.ASSIGN_LEAVE_NAME);
		tipoAfastamento.sendKeys(Massa.ASSIGN_LEAVE_TYPE);
		dataInicioAfastamento.clear();
		wait.until(ExpectedConditions.visibilityOf(dataInicioAfastamento));
		dataInicioAfastamento.click();
		dataInicioAfastamento.sendKeys(Massa.ASSIGN_LEAVE_FROMDATE);
		wait.until(ExpectedConditions.visibilityOf(dataTerminoAfastamento));
		dataTerminoAfastamento.clear();
		dataTerminoAfastamento.click();
		dataTerminoAfastamento.sendKeys(Massa.ASSIGN_LEAVE_TODATE);
		nomeFuncionario.click();
		diaParcial.sendKeys(Massa.ASSIGN_LEAVE_DAYS);
		duracaoTempo.sendKeys(Massa.ASSIGN_LEAVE_DURATION1);
		periodo.sendKeys(Massa.ASSIGN_LEAVE_DURATION2);
		comentario.sendKeys(Massa.ASSIGN_LEAVE_COMENT);
		botaoAssign.click();
		wait.until(ExpectedConditions.elementToBeClickable(botaoConfirmAssign));
		botaoConfirmAssign.click();
		
		
		
	}
	

}
