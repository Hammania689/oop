
/*
Hameed Abdul
Csc 317 
2/6/19

Program Description:
Use a two-dimensional array to solve the following problem: A company has four salespeople (1 to 4) who sell five different products (1 to 5). Once a day, each salesperson passes in a slip for each type of product sold. Each slip contains the following:
    The salesperson number
    The product number
    The total dollar value of that product sold that day
*/

import java.security.SecureRandom;
import java.text.Format;
import java.util.Formatter;
import java.util.Locale;

public class Sales {

    // Rows are Sales Employees
    public enum Employees {
        Itay, Seoyung, Ming, Trun
    };

    // Cols are Products
    public enum Products {
        Green_Tea, FitBit, Kale, Gpu_Set, Bundle_of_Hay
    };

    public static void main(String[] args) {

        final boolean PRINT_DISPLAY = true;

        float[][] sales = new float[4][5];
        sales = secureRandInitilizer(sales, PRINT_DISPLAY);

        float[] employeeSales = getEmployeeSales(sales, PRINT_DISPLAY);
        float[] productSales = getProductSales(sales, PRINT_DISPLAY);
    }

    static float[][] secureRandInitilizer(float[][] temp, boolean display) {
        /**
         * Use to initialize float matrix with securely random generated numbers Returns
         * matrix with secure random values
         * 
         * temp: Matrix to initilize values display: Boolean that enables/disables print
         * statements
         */

        // Initialize new random object
        SecureRandom rand = new SecureRandom();

        // Initialize the array with random float
        if (display) {
            System.out.print("\t");
            for (Products p : Products.values()) {
                System.out.print(p.toString() + "\t");
            }
            System.out.println();
        }

        for (int x = 0; x < temp.length; x++) {
            if (display) {
                System.out.print(Employees.values()[x] + "\t   ");
            }
            for (int y = 0; y < temp[x].length; y++) {
                temp[x][y] = rand.nextFloat() * 100;
                if (display) {
                    System.out.printf("%.2f\t", temp[x][y]);
                }
            }

            if (display) {
                System.out.println();
            }
        }
        return temp;
    }

    static float[] getEmployeeSales(float[][] temp, boolean display) {
        /**
         * Sums all rows within a given matrix Returns Array of Summed Values
         * 
         * temp: Matrix to iterate through display: Boolean that enables/disables print
         * statements
         */

        // Create a 1 dim array for summed row values
        float[] total = new float[temp[0].length];

        // Output Header
        if (display) {
            System.out.println();
            System.out.println("Employee Sales");
            System.out.println("=========================================");
        }

        // Iterate through each row of the array
        // Reset the current row total before touching individual elements
        // Set the total
        for (int x = 0; x < temp.length; x++) {
            float running_total = 0;

            // Iterate through each element of an array
            // Add to the current row total
            for (int y = 0; y < temp[x].length; y++) {
                running_total += temp[x][y];
            }

            total[x] = running_total;

            // Final Output
            if (display) {
                System.out.printf((Employees.values()[x]) + "\t- $%.2f\n", total[x]);
            }
        }
        System.out.println();
        return total;
    }

    static float[] getProductSales(float[][] temp, boolean display) {
        /**
         * Sums all columns within a given matrix Returns Array of Summed Values
         * 
         * temp: Matrix to iterate through display: Boolean that enables/disables print
         * statements
         */

        // Array to hold summed column values
        float[] total = new float[temp[0].length];

        // Output header
        if (display) {
            System.out.println();
            System.out.println("Product Sales");
            System.out.println("=========================================");
        }

        // Iterate through each row of the matrix
        for (int x = 0; x < temp.length; x++) {
            // Iterate through each element of the current row
            // Add the current element to the total[at the current index]
            for (int y = 0; y < temp[x].length; y++) {
                total[y] += temp[x][y];
            }
        }

        // Final output
        if (display) {
            for (int i = 0; i < total.length; i++) {
                System.out.printf("%s - $%.2f\n", Products.values()[i], total[i]);
            }
        }
        System.out.println();
        return total;
    }
}