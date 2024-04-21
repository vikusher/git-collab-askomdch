package com.askomdch.driver;

import com.askomdch.config.ConfigReader;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.safari.SafariDriver;

import java.time.Duration;

public class Driver {
    private static WebDriver driver;
    private Driver(){}

    public static WebDriver getDriver(){

        String browser = ConfigReader.getProperty("browser");

        if (driver == null){
            switch (browser){
                case "chrome":
                    WebDriverManager.chromedriver().setup();
                    ChromeOptions options = new ChromeOptions();
//                    options.addArguments("--headless"); // Run in headless mode
                    options.addArguments("--no-sandbox"); // Bypass OS security model
//                    options.addArguments("--disable-gpu"); // Applicable to windows os only
                    options.addArguments("start-maximized"); // Maximize the browser on start
                    options.addArguments("enable-automation");
                    options.addArguments("--disable-infobars");
                    options.addArguments("--disable-dev-shm-usage");
                    driver = new ChromeDriver(options);
                    break;
                case "firefox":
                    driver = new FirefoxDriver();
                    break;
                case "safari":
                    driver = new SafariDriver();
                    break;
                case "edge":
                    driver = new EdgeDriver();
                    break;
            }
            driver.manage().window().maximize();
            driver.manage().deleteAllCookies();
            driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(15));
            driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(15));
        }
        return driver;
    }

    public static void quitDriver(){
        if (driver != null){
            driver.quit();
            driver = null;
        }
    }

}
