import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;

public class GoldLoanInterestCalculator {

    public static void main(String[] args) {
        // Create Scanner object to take input from user
        Scanner scanner = new Scanner(System.in);
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

        // Take user input for principal amount and interest rate
        System.out.print("Enter the principal amount (in Rs): ");
        double principal = scanner.nextDouble();

        System.out.print("Enter the monthly interest rate (in %): ");
        double rate = scanner.nextDouble();

        // Take user input for loan start date
        System.out.print("Enter the date on which the amount was given (dd/MM/yyyy): ");
        String startDateInput = scanner.next();
        LocalDate startDate = LocalDate.parse(startDateInput, dateFormatter);

        // Take user input for loan return date
        System.out.print("Enter the date on which the amount was returned (dd/MM/yyyy): ");
        String endDateInput = scanner.next();
        LocalDate endDate = LocalDate.parse(endDateInput, dateFormatter);

        // Calculate the difference in years, months, and days
        Period period = Period.between(startDate, endDate);
        int years = period.getYears();
        int months = period.getMonths();
        int days = period.getDays();

        // Show the difference in years, months, and days
        System.out.println("Time period: " + years + " year(s), " + months + " month(s), and " + days + " day(s)");

        // Convert the time period to months and days:
        // Full years converted to months
        double totalMonths = (years * 12) + months;

        // Convert remaining days to a fraction of a month (assume 30 days in a month)
        double fractionalMonths = days / 30.0;

        // Total time in months (including fraction of month for days)
        double totalTimeInMonths = totalMonths + fractionalMonths;

        // Call the function to calculate interest
        double interest = calculateInterest(principal, rate, totalTimeInMonths);
        double totalAmount = principal + interest;

        // Display the results
        System.out.println("Interest for the period: Rs " + interest);
        System.out.println("Total amount after interest: Rs " + totalAmount);

        // Close the scanner object
        scanner.close();
    }

    // Method to calculate simple interest
    public static double calculateInterest(double principal, double rate, double timeInMonths) {
        return (principal * rate * timeInMonths) / 100;
    }
}
