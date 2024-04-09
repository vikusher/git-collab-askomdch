package com.askomdch.step_definitions;
import com.askomdch.config.ConfigReader;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static com.askomdch.driver.Driver.getDriver;

public class AskOmDchNewUserRegistrationStepDefinitions {
    @Given("user is on the homepage")
    public void user_is_on_the_homepage() {
        getDriver().get(ConfigReader.getProperty("url"));
        String actualTitle = getDriver().getTitle();
        Assert.assertEquals("Home page titles do not match", actualTitle, "AskOmDch – Become a Selenium automation expert!");

    }
    @When("user clicks on the account link")
    public void user_clicks_on_the_account_link() {
        WebElement accountLink = getDriver().findElement(By.linkText("Account"));
        Assert.assertTrue("Account link is not displayed", accountLink.isDisplayed());
        accountLink.click();
    }
    @Then("user should be navigate to account page")
    public void user_should_be_navigate_to_account_page() {
        String actualTitle = getDriver().getTitle();
        Assert.assertEquals("Account page titles do not match", actualTitle, "Account – AskOmDch");
        WebElement accountHeader = getDriver().findElement(By.tagName("h1"));
        Assert.assertTrue("Account Header is not displayed",accountHeader.isDisplayed());
    }
    @And("user should be able to see register form header {string}")
    public void userShouldBeAbleToSeeRegisterFormHeader(String registerHeader) {
        WebElement header = getDriver().findElement(By.xpath("//div[@class='u-column2 col-2']/h2"));
        Assert.assertEquals("Register Form Header is not displayed",registerHeader,header.getText());
    }

    @And("user enters {string} for username")
    public void userEntersForUsername(String username) {
        WebElement userNameInput = getDriver().findElement(By.id("reg_username"));
        userNameInput.sendKeys(username);
    }

    @And("user enters {string} for email address")
    public void userEntersForEmailAddress(String email) {
        WebElement emailInput = getDriver().findElement(By.id("reg_email"));
        emailInput.sendKeys(email);
    }

    @And("user enters {string} for password")
    public void userEntersForPassword(String password) {
        WebElement passwordInput = getDriver().findElement(By.id("reg_password"));
        passwordInput.sendKeys(password);
    }
    @Then("user should be able to see register button and click it")
    public void user_should_be_able_to_see_register_button_and_click_it() {
        WebElement registerBtn = getDriver().findElement(By.xpath("//button[@type = 'submit'][contains(text(),'Register')]"));
        Assert.assertTrue(registerBtn.isEnabled());
        registerBtn.click();

    }

    @And("user should be able to register successfully {string} {string} {string} {string} {string}")
    public void userShouldBeAbleToRegisterSuccessfully(String arg0, String arg1, String arg2, String arg3, String arg4) {
        WebElement actRegisterMessage = getDriver().findElement(By.xpath("(//*[@class = 'woocommerce-MyAccount-content']/p)[1]"));
        Assert.assertEquals("User Not registered",(arg0+arg1+arg2+arg3+arg4),actRegisterMessage.getText());
    }

    @Then("user should bee able to click addresses link")
    public void userShouldBeeAbleToClickAddressesLink() {
        WebElement addressLink = getDriver().findElement(By.linkText("Addresses"));
        Assert.assertTrue(addressLink.isEnabled());
        addressLink.click();
    }

    @And("verify {string} and {string} header is Displayed")
    public void verifyAndHeaderIsDisplayed(String expectedHeader1, String expectedHeader2) {
        WebElement billingHeader = getDriver().findElement(By.xpath("//*[@class='woocommerce-Address-title title']/*[contains(text(),'Billing')]"));
        Assert.assertEquals("Billing Header not Displayed",expectedHeader1,billingHeader.getText());
        WebElement shippingHeader = getDriver().findElement(By.xpath("//*[@class='woocommerce-Address-title title']/*[contains(text(),'Shipping')]"));
        Assert.assertEquals("Shipping Header not Displayed",expectedHeader2,shippingHeader.getText());
    }
}
