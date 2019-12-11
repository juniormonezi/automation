package facebook;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class CriacaoUsuarioTeste {

	WebDriver driver;

	@Before
	public void antesDoTeste() {
		System.setProperty(Configuracoes.NOME_DRIVER, Configuracoes.CAMINHO_DRIVER);
		driver = new ChromeDriver();
		driver.get(Configuracoes.URL_APLICACAO);
		driver.manage().window().maximize();
	}

	@Test
	public void criacaoUsuarioTeste() {

		Select select;

		WebElement campoNome = driver.findElement(By.name("firstname"));
		WebElement campoSobrenome = driver.findElement(By.name("lastname"));
		WebElement campoEmail1 = driver.findElement(By.name("reg_email__"));
		WebElement campoEmail2 = driver.findElement(By.name("reg_email_confirmation__"));
		WebElement campoSenha = driver.findElement(By.name("reg_passwd__"));

		WebElement comboDia = driver.findElement(By.id("day"));
		WebElement comboMes = driver.findElement(By.id("month"));
		WebElement comboAno = driver.findElement(By.id("year"));

		WebElement radioMasculino = driver.findElement(By.xpath("//*/input[@value='2']"));

		WebElement botaoInscrevaSe = driver.findElement(By.name("websubmit"));

		campoNome.sendKeys(MassaTeste.NOME);
		campoSobrenome.sendKeys(MassaTeste.SOBRENOME);
		campoEmail1.sendKeys(MassaTeste.EMAIL);
		campoEmail2.sendKeys(MassaTeste.EMAIL);
		campoSenha.sendKeys(MassaTeste.SENHA);

		select = new Select(comboDia);
		select.selectByVisibleText(MassaTeste.DIA);

		select = new Select(comboMes);
		select.selectByVisibleText(MassaTeste.MES);

		select = new Select(comboAno);
		select.selectByVisibleText(MassaTeste.ANO);

		radioMasculino.click();
		botaoInscrevaSe.click();
	}
	
	@After
	public void depoisDoTeste() {
		driver.quit();
	}

}
