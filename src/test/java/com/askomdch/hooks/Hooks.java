package com.askomdch.hooks;

import com.askomdch.driver.Driver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.File;
import java.io.IOException;

public class Hooks {
    @Before
    public void beforeEachScenario(){
        Driver.getDriver();
    }

    @After
    public void tearDown(Scenario scenario){

        if (scenario.isFailed()){
            String screenshotName = scenario.getName();
            String screenshotPath = "target/screenshots" + screenshotName + ".png";
            try {
                byte[] screenshot = ((TakesScreenshot)Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
                scenario.attach(screenshot, "image/png", "Screenshot");
                FileUtils.copyFile(((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.FILE),
                        new File(screenshotPath));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        Driver.quitDriver();
    }
}
