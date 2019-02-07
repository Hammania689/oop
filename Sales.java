
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

public class Sales {

    // Rows are sales person
    // Cols are product

    public static void main(String[] args) {

        boolean display = true;
        float[][] sales = new float[4][5];
        sales = InitializeArray(sales, display);

        float[] employeeSales = GetEmployeeSales(sales, display);
        float[] productSales = GetProductSales(sales, display);

    }

    static float[][] InitializeArray(float[][] temp, boolean display) {
        // Initialize new random object
        SecureRandom rand = new SecureRandom();

        // Initialize the array with random float
        for (int x = 0; x < temp.length; x++) {
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

    static float[] GetEmployeeSales(float[][] temp, boolean display) {
        // Create a 1 dim array with 5 columns
        float[] total = new float[temp[0].length];

        if (display) {
            System.out.println();
            System.out.println("Employee Sales");
            System.out.println("=========================================");
        }

        for (int x = 0; x < temp.length; x++) {
            float running_total = 0;

            for (int y = 0; y < temp[x].length; y++) {
                running_total += temp[x][y];
            }

            total[x] = running_total;
            if (display) {
                System.out.printf((x + 1) + ") $%.2f\n", total[x]);
            }
        }
        System.out.println();
        return total;
    }

    static float[] GetProductSales(float[][] temp, boolean display) {
        // Create a 1 dim array with 5 columns
        float[] total = new float[temp[0].length];

        if (display) {
            System.out.println();
            System.out.println("Product Sales");
            System.out.println("=========================================");
        }

        for (int x = 0; x < temp.length; x++) {
            float running_total = 0;
            for (int y = 0; y < temp[x].length; y++) {
                running_total += temp[y][x];
            }
            total[x] = running_total;
            if (display) {
                System.out.printf((x + 1) + ") $%.2f\n", total[x]);
            }
        }
        System.out.println();
        return total;
    }
}