import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class RegistrationTest {
    public static void main(String[] args) {
        // Set the path to the ChromeDriver executable
        System.setProperty("webdriver.chrome.driver", "C://WebDrivers/chromedriver.exe");

        // Create a new instance of the ChromeDriver
        WebDriver driver = new ChromeDriver();

        // Navigate to the registration page
        driver.get("http://localhost:8080/tc_2project/register.jsp");

        // Fill in the registration form
        WebElement fullNameInput = driver.findElement(By.name("fullname"));
        fullNameInput.sendKeys("John Doe");

        WebElement usernameInput = driver.findElement(By.name("username"));
        usernameInput.sendKeys("johndoe");

        WebElement passwordInput = driver.findElement(By.name("password"));
        passwordInput.sendKeys("secretpassword");

        WebElement emailInput = driver.findElement(By.name("email"));
        emailInput.sendKeys("johndoe@example.com");

        // Submit the registration form
        WebElement submitButton = driver.findElement(By.tagName("button"));
        submitButton.click();

        // Wait for the success message to appear
        WebElement successMessage = driver.findElement(By.xpath("//h2[contains(text(),'Registration Successful')]"));

        // Verify the success message is displayed
        if (successMessage.isDisplayed()) {
            System.out.println("Registration successful!");
        } else {
            System.out.println("Registration failed!");
        }

        // Close the browser
        driver.quit();
    }
}
