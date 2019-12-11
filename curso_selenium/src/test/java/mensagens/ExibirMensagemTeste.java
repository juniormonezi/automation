package mensagens;

import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class ExibirMensagemTeste {

	WebDriver driver;
	
	@Before
	public void antesDoTeste() {
		System.setProperty(Configuracoes.NOME_DRIVER, Configuracoes.CAMINHO_DRIVER);
		driver=new ChromeDriver();
		driver.get(Configuracoes.URL_APLICACAO);
		driver.manage().window().maximize();
	}
	
	@Test
	public void exibeMensagemTeste() {
		WebElement mensagem=driver.findElement(By.xpath("//*/span/em"));
		System.out.println(mensagem.getText());
	}
}
