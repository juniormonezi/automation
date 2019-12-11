package curso_selenium;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class RadioButtonTeste {

	WebDriver driver;
	
	@Before
	public void antesDoTeste() {
		System.setProperty("webdriver.chrome.driver", "src/test/resources/chromedriver.exe");
		driver=new ChromeDriver();
		driver.manage().window().maximize();
	}
	
	@Test
	public void testeRadioButton() {
		int contador=0;
		
		driver.get("http://www.ultimateqa.com/automation");
		WebElement linkElementosHTML=driver.findElement(By.linkText("Interactions with simple elements"));
		linkElementosHTML.click();
		
		
		List<WebElement> generos=driver.findElements(By.name("gender"));
		generos.get(2).click();
		
		for(WebElement genero:generos) {
			if(genero.isSelected()) {
				System.out.println(genero.getText());
				contador++;
			}
				
		}
		
		if(contador==1)
			System.out.println("Está correto.");
		else
			System.out.println("Está errado.");
	}
}
