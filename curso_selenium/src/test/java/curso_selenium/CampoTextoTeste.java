package curso_selenium;

import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class CampoTextoTeste {

	WebDriver driver;

	@Before
	public void antesdoTeste() {
		System.setProperty("webdriver.chrome.driver", "src/test/resources/chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
	}

	@Test
	public void digitarValorTeste() throws Exception {
		driver.get("http://toolsqa.com/automation-practice-form/");
		WebElement campoFirstName=driver.findElement(By.name("firstname"));
		campoFirstName.sendKeys("Raphael");
		WebElement linkPartial=driver.findElement(By.partialLinkText("Partial"));
		linkPartial.click();
		//WebElement linkLinkText=driver.findElement(By.linkText("Link Test"));
		//linkLinkText.click();
		WebElement comboContinente=driver.findElement(By.id("continents"));
		Select select=new Select(comboContinente);
		select.selectByIndex(3);
	}

}
