package curso_selenium;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class CheckBoxTeste {

	WebDriver driver;
	
	@Before
	public void antesDoTeste() {
		System.setProperty("webdriver.chrome.driver", "src/test/resources/chromedriver.exe");
		driver=new ChromeDriver();
		driver.manage().window().maximize();
	}
	
	@Test
	public void testeCheckBox() {
		int contador=0;
		
		driver.get("http://www.ultimateqa.com/automation");
		WebElement linkElementosHTML=driver.findElement(By.linkText("Interactions with simple elements"));
		linkElementosHTML.click();
		
		
		List<WebElement> meiosTransporte=driver.findElements(By.name("vehicle"));
		//meiosTransporte.get(0).click();
		//meiosTransporte.get(1).click();
		
		for(WebElement meioTransporte:meiosTransporte) {
			if(meioTransporte.isSelected()) 
				contador++;
		}
		
		if(contador>0)
			System.out.println("Há um ou mais meios de transporte selecionados");
		else
			System.out.println("Nenhum meio de transporte foi selecionado");
	}
}
