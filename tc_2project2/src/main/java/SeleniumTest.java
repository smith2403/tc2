import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class SeleniumTest {
    public static void main(String[] args) {
    	 // Set the path to the ChromeDriver executable
        System.setProperty("webdriver.chrome.driver", "C://WebDrivers/chromedriver.exe");

        // Create a new instance of ChromeDriver
        WebDriver driver = new ChromeDriver();

        // Launch the web application
        driver.get("http://localhost:8080/tc_2project/login.jsp");

        // Fill in the login form
        WebElement usernameField = driver.findElement(By.id("username"));
        WebElement passwordField = driver.findElement(By.id("password"));
        WebElement loginButton = driver.findElement(By.xpath("//button[@type='submit']"));

        usernameField.sendKeys("smith1234");
        passwordField.sendKeys("pass123");
        loginButton.click();

        // Wait until the add product button is visible
        WebDriverWait wait = new WebDriverWait(driver, 10);
        WebElement addProductButton = wait.until(ExpectedConditions.visibilityOfElementLocated(By.linkText("Add Product")));

        // Click on the add product button
        addProductButton.click();

        // Wait until the product page is loaded
        wait.until(ExpectedConditions.titleContains("Product Page"));

        // Fill in the product details
        WebElement productNameInput = driver.findElement(By.name("productname"));
        productNameInput.sendKeys("Test Product");

        WebElement productDescriptionInput = driver.findElement(By.name("productdescription"));
        productDescriptionInput.sendKeys("This is a test product");

        WebElement functionalityInput = driver.findElement(By.name("functionality"));
        functionalityInput.sendKeys("6");

        WebElement performanceInput = driver.findElement(By.name("performance"));
        performanceInput.sendKeys("7");

        WebElement usabilityInput = driver.findElement(By.name("usability"));
        usabilityInput.sendKeys("8");

        WebElement costInput = driver.findElement(By.name("cost"));
        costInput.sendKeys("99.99");

        WebElement valueInput = driver.findElement(By.name("value"));
        valueInput.sendKeys("10");

        WebElement environmentalImpactInput = driver.findElement(By.name("environmentalImpact"));
        environmentalImpactInput.sendKeys("Low");

        WebElement customerFeedbackInput = driver.findElement(By.name("custfeed"));
        customerFeedbackInput.sendKeys("Positive");

        // Submit the form
        WebElement saveButton = driver.findElement(By.cssSelector("button[type='submit']"));
        saveButton.click();

        // Wait for the page to reload
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        // Verify if the product is added to the product list
        WebElement updatedProductTable = driver.findElement(By.xpath("//table[@id='sig']"));
        WebElement productNameCell = updatedProductTable.findElement(By.xpath("//td[contains(text(), 'Test Product')]"));

        if (productNameCell != null) {
            System.out.println("Product added successfully!");
        } else {
            System.out.println("Product addition failed!");
        }

        // Close the browser
        driver.quit();
    }
}
