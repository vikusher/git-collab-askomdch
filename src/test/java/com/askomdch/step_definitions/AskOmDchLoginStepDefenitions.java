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

public class AskOmDchLoginStepDefenitions {

    @Given("user is on the home page")
    public void user_is_on_the_home_page() throws InterruptedException {
        getDriver().get(ConfigReader.getProperty("url"));
        Thread.sleep(1000);
        String actualTitle = getDriver().getTitle();
        Assert.assertEquals("Home page titles do not match", "AskOmDch – Become a Selenium automation expert!", actualTitle);
    }
    @When("user clicks on account link")
    public void user_clicks_on_account_link() {
        WebElement accountLink = getDriver().findElement(By.linkText("Account"));
        Assert.assertTrue("Account link is not displayed", accountLink.isDisplayed());
        accountLink.click();
    }
    @Then("user should be able to see account page")
    public void user_should_be_able_to_see_account_page() {
        String actualTitle = getDriver().getTitle();
        Assert.assertEquals("Account page titles do not match", actualTitle, "Account – AskOmDch");
        WebElement accountHeader = getDriver().findElement(By.tagName("h1"));
        Assert.assertTrue("Account Header is not displayed",accountHeader.isDisplayed());
    }
    @When("user enters valid {string} and {string} for login and clicks on login button")
    public void userEntersValidAndForLoginAndClicksOnLoginButton(String username, String password) {
        WebElement emailInput = getDriver().findElement(By.id("username"));
        emailInput.sendKeys(username);
        WebElement passwordInput = getDriver().findElement(By.id("password"));
        passwordInput.sendKeys(password);
        WebElement loginButton = getDriver().findElement(By.xpath("//button[@type = 'submit'][contains(text(),'Log in')]"));
        Assert.assertTrue(loginButton.isEnabled());
        loginButton.click();
    }
    @When("user should be able to login successfully")
    public void user_should_be_able_to_login_successfully() {
        WebElement logOutLink = getDriver().findElement(By.linkText("Log out"));
        Assert.assertTrue(logOutLink.isDisplayed());
    }
    @Then("user should be able to see {string} message")
    public void user_should_be_able_to_see_message(String successMessage) throws InterruptedException {
        WebElement infoVerify = getDriver().findElement(By.xpath("(//div[@class='woocommerce-MyAccount-content']/p)[2]"));
        String trimInfoVerify = infoVerify.getText().trim();
        String compressedText = trimInfoVerify.replaceAll("\\s+", " ");
        String finalText = compressedText.replaceAll("(?m)^\\s*$", "");
        Assert.assertEquals("User is not able to login successfully", successMessage, finalText );
    }
    @When("user enters valid {string} and {string} for login")
    public void userEntersValidAndForLogin(String username, String password) {
        WebElement emailInput = getDriver().findElement(By.id("username"));
        emailInput.sendKeys(username);
        WebElement passwordInput = getDriver().findElement(By.id("password"));
        passwordInput.sendKeys(password);
    }
    @And("user checks remember me checkbox")
    public void userChecksRememberMeCheckbox() throws InterruptedException {
        try {
            WebElement rememberMeCheckBox = getDriver().findElement(By.id("rememberme"));
            Assert.assertTrue(rememberMeCheckBox.isDisplayed());
            rememberMeCheckBox.click();
        } catch (Exception e) {
        }
    }
    @And("clicks on login button")
    public void clicksOnLoginButton() {
        WebElement loginButton = getDriver().findElement(By.xpath("//button[@type = 'submit'][contains(text(),'Log in')]"));
        Assert.assertTrue(loginButton.isEnabled());
        loginButton.click();
    }
    @Then("user should be able to see {string}")
    public void userShouldBeAbleToSee(String expectErrorMessage) {
        WebElement actualErrorMessage = getDriver().findElement(By.xpath("//*[@class='woocommerce-error']/li"));
        Assert.assertEquals("Error message does not match",expectErrorMessage,actualErrorMessage.getText());
    }
    @Then("user should be able to see {string} {string} {string}")
    public void userShouldBeAbleToSee(String errorMessage, String userName, String errorMessage2) {
        WebElement actualErrorMessage = getDriver().findElement(By.xpath("//*[@class='woocommerce-error']/li"));
        Assert.assertEquals("Error message does not match",(errorMessage+userName+errorMessage2),actualErrorMessage.getText());
    }
    @When("user enters not valid username or email {string} and correct password {string} for login and clicks on login button")
    public void userEntersNotValidUsernameOrEmailAndCorrectPasswordForLoginAndClicksOnLoginButton(String username, String password) {
        WebElement emailInput = getDriver().findElement(By.id("username"));
        emailInput.sendKeys(username);
        WebElement passwordInput = getDriver().findElement(By.id("password"));
        passwordInput.sendKeys(password);
        WebElement loginButton = getDriver().findElement(By.xpath("//button[@type = 'submit'][contains(text(),'Log in')]"));
        Assert.assertTrue(loginButton.isEnabled());
        loginButton.click();
    }
    @When("user enters valid username {string} and password field is blank and click on login button")
    public void userEntersValidUsernameAndPasswordFieldIsBlankAndClickOnLoginButton(String username) {
        WebElement emailInput = getDriver().findElement(By.id("username"));
        emailInput.sendKeys(username);
        WebElement loginButton = getDriver().findElement(By.xpath("//button[@type = 'submit'][contains(text(),'Log in')]"));
        Assert.assertTrue(loginButton.isEnabled());
        loginButton.click();
    }
    @When("username or email field is blank and valid {string} password and click on login button")
    public void usernameEmailFieldIsBlankAndValidPasswordAndClickOnLoginButton(String password) {
        WebElement passwordInput = getDriver().findElement(By.id("password"));
        passwordInput.sendKeys(password);
        WebElement loginButton = getDriver().findElement(By.xpath("//button[@type = 'submit'][contains(text(),'Log in')]"));
        Assert.assertTrue(loginButton.isEnabled());
        loginButton.click();
    }
    @And("user clicks on login button")
    public void userClicksOnLoginButton() {
        WebElement loginButton = getDriver().findElement(By.xpath("//button[@type = 'submit'][contains(text(),'Log in')]"));
        Assert.assertTrue(loginButton.isEnabled());
        loginButton.click();
    }
    @When("user click on lost your password link")
    public void userClickOnLostYourPasswordLink() {
        WebElement lostPasswordLink = getDriver().findElement(By.linkText("Lost your password?"));
        Assert.assertTrue(lostPasswordLink.isEnabled());
        lostPasswordLink.click();
    }
    @Then("user should be able to enter {string} username and click reset password button")
    public void userShouldBeAbleToEnterUsernameAndClickResetPasswordButton(String username) {
        WebElement message = getDriver().findElement(By.xpath("//*[@class = 'woocommerce-ResetPassword lost_reset_password']/p"));
        Assert.assertEquals("Message not displayed","Lost your password? Please enter your username or email address. You will receive a link to create a new password via email.",message.getText());
        WebElement userInput = getDriver().findElement(By.id("user_login"));
        Assert.assertTrue(userInput.isEnabled());
        userInput.sendKeys(username);
        WebElement resetPasswordButton = getDriver().findElement(By.xpath("//button[@type= 'submit']"));
        Assert.assertTrue(resetPasswordButton.isEnabled());
        resetPasswordButton.click();
    }
    @And("user should be able to see confirmation message {string}")
    public void userShouldBeAbleToSeeConfirmationMessage(String expectConfirmationMessage) {
        WebElement actualConfirmationMessage = getDriver().findElement(By.className("woocommerce-message"));
        Assert.assertEquals("Message not correct",expectConfirmationMessage,actualConfirmationMessage.getText());
    }
    @And("user should be able to see {string} alert message")
    public void userShouldBeAbleToSeeAlertMessage(String expectedAlertMessage) {
        WebElement actualAlertMessage = getDriver().findElement(By.className("woocommerce-error"));
        Assert.assertEquals("Message not alert",expectedAlertMessage,actualAlertMessage.getText());
    }
}
