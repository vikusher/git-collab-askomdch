package com.askomdch.step_definitions;
import com.askomdch.config.ConfigReader;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import static com.askomdch.driver.Driver.getDriver;

public class AskOmDchNewUserRegistrationStepDefinitions {
    @Given("user is on the homepage")
    public void user_is_on_the_homepage() throws InterruptedException {
        getDriver().get(ConfigReader.getProperty("url"));
        Thread.sleep(1000);
        String actualTitle = getDriver().getTitle();
        Assert.assertEquals("Home page titles do not match", "AskOmDch – Become a Selenium automation expert!", actualTitle);
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
    @Then("user clicks on add link billing address")
    public void userClicksOnAddLinkBillingAddress() {
        WebElement addButtonBillingInformation = getDriver().findElement(By.xpath("//div[@class='u-column1 col-1 woocommerce-Address']//a"));
        Assert.assertTrue(addButtonBillingInformation.isEnabled());
        addButtonBillingInformation.click();
    }
    @And("user enters {string} for firstname")
    public void userEntersForFirstname(String firstName) {
        WebElement firstNameInput = getDriver().findElement(By.id("billing_first_name"));
        firstNameInput.sendKeys(firstName);
    }
    @And("user enters {string} for lastname")
    public void userEntersForLastname(String lastName){
        WebElement lastNameInput = getDriver().findElement(By.id("billing_last_name"));
        lastNameInput.sendKeys(lastName);
    }
    @And("user enters {string} for company name")
    public void userEntersForCompanyName(String companyName) {
        WebElement companyNameInput = getDriver().findElement(By.id("billing_company"));
        companyNameInput.sendKeys(companyName);
    }
    @And("user selects {string} for country")
    public void userSelectsForCountry(String country) {
        Select select = new Select(getDriver().findElement(By.id("billing_country")));
        select.selectByVisibleText(country);
    }
    @And("user enters {string} for street address first")
    public void userEntersForStreetAddressFirst(String streetAddress1) {
        WebElement streetAddress1Input = getDriver().findElement(By.id("billing_address_1"));
        streetAddress1Input.sendKeys(streetAddress1);
    }
    @And("user enters {string} for street address second")
    public void userEntersForStreetAddressSecond(String streetAddress2) {
        WebElement streetAddress2Input = getDriver().findElement(By.id("billing_address_2"));
        streetAddress2Input.sendKeys(streetAddress2);
    }
    @And("user enters {string} for city")
    public void userEntersForCity(String city) {
        WebElement cityInput = getDriver().findElement(By.id("billing_city"));
        cityInput.sendKeys(city);
    }
    @And("user selects {string} for state")
    public void userSelectsForState(String state) {
        Select select = new Select(getDriver().findElement(By.id("billing_state")));
        select.selectByValue(state);
    }
    @And("user enters {string} for zipcode")
    public void userEntersForZipCode(String zip) {
        WebElement zipCodeInput = getDriver().findElement(By.id("billing_postcode"));
        zipCodeInput.sendKeys(zip);
    }
    @And("user enters {string} for phone")
    public void userEntersForPhone(String phone) {
        WebElement phoneInput = getDriver().findElement(By.id("billing_phone"));
        phoneInput.sendKeys(phone);
    }
    @Then("user clicks on save address button")
    public void userClicksOnSaveAddressButton() {
        WebElement saveAddressButton = getDriver().findElement(By.xpath("//*[@name='save_address']"));
        saveAddressButton.click();
    }
    @And("verify {string} message")
    public void verifyMessage(String expectedMessage) {
        WebElement successMessage = getDriver().findElement(By.xpath("//*[@class='woocommerce-message']"));
        Assert.assertEquals("Address changed successfully not displayed",expectedMessage,successMessage.getText());
        System.out.println(successMessage.getText());
    }
    @Then("verify completed billing information and should see the {string}  {string}  {string}  {string}  {string}  {string}  {string}  {string}")
    public void verifyCompletedBillingInformationAndShouldSeeThe(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5, String arg6, String arg7) {
        WebElement completedBillingInfoVerification = getDriver().findElement(By.xpath("//*[@class='u-column1 col-1 woocommerce-Address']/address"));
        String trimInfoVerify = completedBillingInfoVerification.getText().trim();
        String compressedText = trimInfoVerify.replaceAll("\\s+", " ");
        String finalText = compressedText.replaceAll("(?m)^\\s*$", "");
        Assert.assertEquals("Billing information is not correct",arg0+" " + arg1+" " + arg2 +" "+ arg3 +" "+arg4+" " +arg5+", "+ arg6+ " " +arg7, finalText);
    }
}
