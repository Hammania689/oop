
public class SavingsAccountTest {
    public static void main(String[] args) throws Exception {

        // Define saver1 and saver2 objects - pass in values to the constructor
        SavingsAccount saver1 = new SavingsAccount(13000);
        SavingsAccount saver2 = new SavingsAccount(33000);

        // Call the modifyInterestRate method and pass in .04
        System.out.println("Monthly balances for one year at .04");
        System.out.println("Balances:");
        SavingsAccount.modifyInterestRate(.04);

        System.out.printf("%20s%10s%n", "Saver 1", "Saver 2");
        System.out.printf("%-10s%10s%10s%n", "Base", saver1.toString(), saver2.toString());

        for (int month = 1; month <= 12; month++) {

            String monthLabel = String.format("Month %d:", month);
            saver1.calculateMonthlyInterest();
            saver2.calculateMonthlyInterest();

            System.out.printf("%-10s%10s%10s%n", monthLabel, saver1.toString(), saver2.toString());

            // Call the modifyInterestRate method and pass in .05
            SavingsAccount.modifyInterestRate(0.5);
            saver1.calculateMonthlyInterest();
            saver2.calculateMonthlyInterest();

            System.out.printf("%nAfter setting interest rate to .05 and calculating monthly interest%n");
            System.out.println("Balances:");
            System.out.printf("%-10s%10s%n", "Saver 1", "Saver 2");
            System.out.printf("%-10s%10s%n", saver1.toString(), saver2.toString());
        }
    }
}