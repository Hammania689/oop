/* 
  Author: Hameed Abdul
  Date : 2/3/2019
  
  Desrcription: CSC 317 Assignment 1
Employee Class - Create a class called Employee that includes three instance variables - a first name (type String),
 a last name (type String) and a monthly salary (double).  Provide a constructor that initializes the three instance variables.
   Provide a set and a get method for each instance variable.  If the monthly salary is not positive, do not set its value.  
   Write a test application named EmployeeTest that demonstrates class Employee's capabilities.  
   Create two Employee objects and display each object's yearly salary.  Then give each Employee a 10% raise and display each Employee's yearly salary again.


NOTE:  Format the float using %.2f for output the float value with a rounded 2 point decimal.  

*/

public class EmployeeTest{

    public static void main(String[] args) {

        // Create and Initialize two Employee objects
        Employee ceo = new Employee("Charlie", "Munger", 1.7 * Math.pow(10, 6) );
        Employee hobo = new Employee("Tyrone", "Biggums", 9);
        
        // Print out data
        System.out.print("Yearly Salary: \n");
        System.out.printf(ceo.getFirstName() + " " + ceo.getLastName()+ "'s" + " yearly salary: " + "$%.2f\n", ceo.getMonthlySalary() * 12 );
        System.out.printf(hobo.getFirstName() + " " + hobo.getLastName()+ "'" + " yearly salary: " + "$%.2f\n", hobo.getMonthlySalary() * 12 );
        
    
        System.out.println("\n");
        System.out.print("Yearly Salary with 10% monthly raise\n");

        // Change monthly salary 
        ceo.setMonthlySalary(ceo.getMonthlySalary() * 1.10);
        hobo.setMonthlySalary(hobo.getMonthlySalary() * 1.10);
  
        // Print out new data
        System.out.printf(ceo.getFirstName() + " " + ceo.getLastName()+ "'s" + " yearly salary: " + "$%.2f\n", ceo.getMonthlySalary() * 12 );
        System.out.printf(hobo.getFirstName() + " " + hobo.getLastName()+ "'" + " yearly salary: " + "$%.2f\n\n", hobo.getMonthlySalary() * 12 );
        
        System.out.print("Yearly Salary with 10% annual raise\n");
        
        // Change monthly salary
        ceo.setMonthlySalary(ceo.getMonthlySalary() * (1.10 / 12));
        hobo.setMonthlySalary(hobo.getMonthlySalary() * (1.10 / 12));
        
        // Print out new data
        System.out.printf(ceo.getFirstName() + " " + ceo.getLastName()+ "'s" + " yearly salary: " + "$%.2f\n", ceo.getMonthlySalary() * 12 );
        System.out.printf(hobo.getFirstName() + " " + hobo.getLastName()+ "'" + " yearly salary: " + "$%.2f\n", hobo.getMonthlySalary() * 12 );
    }


}