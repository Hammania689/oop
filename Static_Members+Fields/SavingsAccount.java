public class SavingsAccount {

    // define the static double interest rate for all accounts
    public static double interest_rate;

    // define double savings balance for currrent account
    private double balance = 0.0;

    // constructor - creates a new account with the specified balance - check to
    // make sure "> 0.0"
    public SavingsAccount(double balance) throws Exception {
        if (balance < 0)
            throw new Exception("Balance must be greater than 0");
        this.balance = balance;
    }

    // calculate monthly interest based on savingsBalance and annualInterestRate
    public void calculateMonthlyInterest() {
        double monthly_interest = (balance * interest_rate) / 12;
        balance += monthly_interest;
    }

    // define the modify interest rate static method - check range of interest rate
    // " > 0 and < 1.0"
    public static void modifyInterestRate(Double new_rate) {
        interest_rate = new_rate;
    }

    // get string representation of SavingsAccount
    public String toString() {
        return String.format("$%.2f", balance);
    }
}