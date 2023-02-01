package application;

import org.joda.time.LocalTime;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.ArrayList;


public class ApplicationStart {

  public static void main(String[] args) throws InterruptedException {
    LocalTime currentTime = new LocalTime();
    System.out.println("The current local time is: " + currentTime);


    Greeter greeter = new Greeter();
    System.out.println("What is up muchcho");
    String userDir = System.getProperty("user.dir");


    System.setProperty("webdriver.chrome.driver", userDir.concat("/assets/chromedriver"));


    ArrayList<WebDriver> driverList = new ArrayList<>();

    for(int i=0; i < 10; i++){
      ChromeOptions options = new ChromeOptions();
      options.addArguments("headless");
      WebDriver driver = new ChromeDriver(options);
      driver.get("https://www.cambridgema.gov/PropertyDatabase");
      driverList.add(driver);
      System.out.println("Driver number booted up: ".concat(Integer.toString(i)));
    }
    ProcessAddress processor = new ProcessAddress();

    processor.dataExtractor(driverList.get(0),"Wood","27");
    processor.dataExtractor(driverList.get(1), "Royal", "17");
    processor.dataExtractor(driverList.get(2), "Wood", "27");
    processor.dataExtractor(driverList.get(3), "Wood", "27");
    processor.dataExtractor(driverList.get(4), "Wood", "27");
    processor.dataExtractor(driverList.get(5), "Royal", "17");

  }
}
