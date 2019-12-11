package curso_selenium;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class PrimeiroTesteSelenium {
	
	WebDriver driver;
	
	@Before
	public void antesCadaTeste() {
		System.setProperty("webdriver.chrome.driver", "src/test/resources/chromedriver.exe");
		driver=new ChromeDriver();	
	}
	
	@Test
	public void primeiroTeste() {
		driver.get("http://www.google.com");		
		driver.manage().window().maximize();
		System.out.println(driver.getCurrentUrl());		
	}
	
	@Test
	public void segundoTeste() {
			
		driver.get("http://www.google.com");
		driver.manage().window().maximize();
		System.out.println(driver.getTitle());
		
	}
	
	@After
	public void depoisCadaTeste() {
		driver.quit();
	}
}
