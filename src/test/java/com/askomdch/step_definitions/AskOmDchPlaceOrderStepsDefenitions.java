package com.askomdch.step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static com.askomdch.driver.Driver.getDriver;

public class AskOmDchPlaceOrderStepsDefenitions {
    @Then("user should be able to click store link")
    public void user_should_be_able_to_click_store_link() {
        WebElement storeLink = getDriver().findElement(By.linkText("Store"));
        Assert.assertTrue(storeLink.isEnabled());
        storeLink.click();
    }

    @And("user should be able to enter product name {string} in search field and click search button")
    public void userShouldBeAbleToEnterProductNameInSearchFieldAndClickSearchButton(String productName) {
        String titleStorePage = getDriver().getTitle();
        Assert.assertEquals("Store page not displayed","Products – AskOmDch",titleStorePage);
        WebElement searchFieldInput = getDriver().findElement(By.id("woocommerce-product-search-field-0"));
        searchFieldInput.sendKeys(productName);
        WebElement searchButton = getDriver().findElement(By.xpath("//button[@type='submit'][contains(text(),'Search')]"));
        Assert.assertTrue(searchButton.isEnabled());
        searchButton.click();
    }

    @Then("user should be able to verify search result {string}")
    public void userShouldBeAbleToVerifySearchResult(String productName) {
        WebElement searchResultMessage = getDriver().findElement(By.tagName("h1"));
        Assert.assertTrue(searchResultMessage.getText().contains(productName));
    }

    @And("user should be able to see {string} product item")
    public void userShouldBeAbleToSeeProductItem(String productName) {
        WebElement newItem = getDriver().findElement(By.xpath("//*[@class='woocommerce-loop-product__title'][contains(text(),'"+productName+"')]"));
        newItem.click();
    }

    @And("confirm {string} product item and add to cart")
    public void confirmProductItemAndAddToCart(String productName) {
        String titlePage = getDriver().getTitle();
        Assert.assertTrue(titlePage.contains(productName));
        WebElement addToCartButton = getDriver().findElement(By.name("add-to-cart"));
        addToCartButton.click();
    }

    @Then("user should be able to see {string} verify message")
    public void userShouldBeAbleToSeeVerifyMessage(String expectMessage) {
        String actualVerifyMessage = getDriver().findElement(By.className("woocommerce-message")).getText();
        Assert.assertTrue(actualVerifyMessage.contains(expectMessage));
    }

    @And("user should be able to click shopping cart link")
    public void userShouldBeAbleToClickShoppingCartLink() {
        WebElement shoppingCartLink = getDriver().findElement(By.xpath("//*[@class ='ast-site-header-cart-li ']"));
        Assert.assertTrue(shoppingCartLink.isEnabled());
        shoppingCartLink.click();
    }

    @And("user should be able to verify cart page and product added {string}")
    public void userShouldBeAbleToVerifyCartPageAndProductAdded(String productName) {
        Assert.assertEquals("Cart Page titles do not match","Cart – AskOmDch",getDriver().getTitle());
        WebElement productNameText = getDriver().findElement(By.xpath("//*[@class='woocommerce-cart-form']//*[@class='product-name']/a"));
        Assert.assertEquals("Added to cart not correct product Item",productName,productNameText.getText());
    }

    @Then("user should be able to click proceed to checkout button")
    public void userShouldBeAbleToClickProceedToCheckoutButton() {
        WebElement proceedToCheckoutButton = getDriver().findElement(By.xpath("//*[@class='wc-proceed-to-checkout']"));
        Assert.assertTrue(proceedToCheckoutButton.isEnabled());
        proceedToCheckoutButton.click();
    }

    @And("user should be able to see checkout page")
    public void userShouldBeAbleToSeeCheckoutPage() {
        String checkoutPageTitle = getDriver().getTitle();
        Assert.assertEquals("Checkout Page titles do not match","Checkout – AskOmDch",checkoutPageTitle);
    }

    @And("user enters {string} for email")
    public void userEntersForEmail(String email) throws InterruptedException {
        WebElement emailInput = getDriver().findElement(By.id("billing_email"));
        emailInput.sendKeys(email);
        Thread.sleep(2000);
    }

    @Then("user should be able to click place order button")
    public void userShouldBeAbleToClickPlaceOrderButton() {
        WebElement placeOrderButton = getDriver().findElement(By.id("place_order"));
        Assert.assertTrue(placeOrderButton.isEnabled());
        placeOrderButton.click();
    }

    @And("user should be able to see {string} confirmation message")
    public void userShouldBeAbleToSeeConfirmationMessage(String confirmationMessage) {
        WebElement actualConfirmationMessage = getDriver().findElement(By.xpath("//*[@class='woocommerce-notice woocommerce-notice--success woocommerce-thankyou-order-received']"));
        Assert.assertEquals("Your order not confirmed",confirmationMessage,actualConfirmationMessage.getText());
    }

    @And("user should be able to create account")
    public void userShouldBeAbleToCreateAccount() {
        WebElement createAccountCheckbox = getDriver().findElement(By.id("createaccount"));
        Assert.assertTrue(createAccountCheckbox.isEnabled());
        createAccountCheckbox.click();
        WebElement userNameInput = getDriver().findElement(By.id("account_username"));

    }

    @And("user enters {string} for account username")
    public void userEntersForAccountUsername(String username) {
        WebElement userNameInput = getDriver().findElement(By.id("account_username"));
        userNameInput.sendKeys(username);
    }

    @And("user enters {string} for account password")
    public void userEntersForAccountPassword(String password) {
        WebElement passwordInput = getDriver().findElement(By.id("account_password"));
        passwordInput.sendKeys(password);
    }

    @Then("verify billing information and should see the {string}  {string}  {string}  {string}  {string}  {string}  {string}  {string} {string} {string}")
    public void verifyBillingInformationAndShouldSeeThe(String firstname, String lastname, String company, String street1, String street2, String city, String state, String zip, String phone, String email) throws InterruptedException {
        WebElement completedBillingInfoVerification = getDriver().findElement(By.xpath("//*[@class='woocommerce-column woocommerce-column--1 woocommerce-column--billing-address col-1']/address"));
        String trimInfoVerify = completedBillingInfoVerification.getText().trim();
        String compressedText = trimInfoVerify.replaceAll("\\s+", " ");
        String finalText = compressedText.replaceAll("(?m)^\\s*$", "");
        Assert.assertEquals("Billing information is not correct",firstname+" " + lastname+" " + company +" "+ street1 +" "+ street2+" "+ city +", "+ state+ " "+ zip +" "+ phone +" " + email, finalText);
        Thread.sleep(3000);
    }
}
