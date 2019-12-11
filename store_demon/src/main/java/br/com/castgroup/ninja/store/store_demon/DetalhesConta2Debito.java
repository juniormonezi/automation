package br.com.castgroup.ninja.store.store_demon;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

public class DetalhesConta2Debito extends BasePageObject{

	public DetalhesConta2Debito(WebDriver driver) {
		super(driver);
		PageFactory.initElements(driver, this);
		
	}
	

}
