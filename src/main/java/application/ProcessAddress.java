package application;


import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;

public class ProcessAddress {

    public ProcessAddress(){

    }

    public HomeObject dataExtractor(WebDriver driver, String streetName, String streetNum){

        //Filling fields
        driver.findElement(By.name("body_0$content_0$txtStreetNum")).sendKeys(streetNum);
        driver.findElement(By.name("body_0$content_0$txtStreetName")).sendKeys(streetName);


        //Clicking on search button
        driver.findElement(By.name("body_0$content_0$btnBasicSearchSubmit")).click();




        //System.out.println(driver.getPageSource());

        //Getting property attributes

        try{
            System.out.println(driver.findElement(By.id("body_0_content_0_PI_PropertyClass")).getText());
            System.out.println(driver.findElement(By.id("body_0_content_0_PV_BuildingValue")).getText());
        }
        catch(NoSuchElementException e){
            System.out.println("No element found");
        }



        driver.quit();

        return HomeObject.builder().build();

    }
}
