package pageObjects;

import java.lang.reflect.Field;
import java.time.Duration;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.testng.Assert;
import org.xml.sax.Locator;

import utilities.GenericUtilities;
import utilities.GenericUtilities.IncorrectXpathException;

public class MerxLoginPage 	extends BasePage {
	 private static final Logger LOGGER = Logger.getLogger(MerxLoginPage.class.getName());
		
		public MerxLoginPage(WebDriver driver) {
			super(driver);
		}
		
		GenericUtilities utils = new GenericUtilities(driver);

		@FindBy(xpath = "//input[@id='username']")
		WebElement txtEmailAddress;

		@FindBy(xpath = "//input[@type='password']")
		WebElement txtPasswords;

		@FindBy(xpath = "//*[contains(text(),'Sign In')]")
		WebElement btnSignIn;
		
		@FindBy(xpath = "//input[@id='usernamesss']")
		WebElement btnSignIn1;


		public void setEmails(String email)  {
			   
			//  utils.waitForpresenseofElementLocated(Duration.ofSeconds(60), txtEmailAddress);
		
				txtEmailAddress.clear();
				txtEmailAddress.sendKeys(email);

		}

		public void setPasswords(String pwd) throws TimeoutException, IncorrectXpathException {
			 
			 //utils.waitForpresenseofElementLocated(Duration.ofSeconds(60), txtPasswords);
			//GenericUtilities.isElementPresent(driver,txtPasswords,60);
			  //utils.isPresent(txtPasswords);
			    txtPasswords.clear();
			    txtPasswords.sendKeys(pwd);
			  }
			    
				  
				 
		

			
			

		public void clickbtnSignIn() throws InterruptedException, TimeoutException, NoSuchElementException {
			  try {
			    utils.waitForElementToBeClickablewithFluentWait(btnSignIn, 5);
			    JavascriptExecutor executor = (JavascriptExecutor) driver;
			    executor.executeScript("arguments[0].click();", btnSignIn);
			  } catch (NoSuchElementException e) {
			    System.out.println("Error: Sign-in button not found on the page. Please check the login page layout.");
			  } catch (ElementClickInterceptedException e) {
			    System.out.println("Error: Unable to click sign-in button. Another element might be blocking it.");
			  }
			}


}
