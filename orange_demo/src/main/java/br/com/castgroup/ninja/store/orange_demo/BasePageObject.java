package br.com.castgroup.ninja.store.orange_demo;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BasePageObject {
	
	protected WebDriver driver;
	protected WebDriverWait wait;

	public BasePageObject(WebDriver driver) {
		
		this.driver = driver;
		wait = new WebDriverWait(driver, 20);
		
	}
	
}
