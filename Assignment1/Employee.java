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

public class Employee{

    // Private class fields
    private String firstName;
    private String lastName;
    private double monthlySalary;

    // Constructor to initialize values
    public Employee(String firstName, String lastName, double salary){
        this.firstName = firstName;
        this.lastName = lastName;
        this.monthlySalary = salary;
    }

    // Methods that return class field values 
    public String getFirstName(){
        return firstName;
    }

    public String getLastName(){
        return lastName;
    }

    public Double getMonthlySalary(){
        return monthlySalary;
    }
   
    // Methods that set class field values
    public void setFirstName(String firstName){
        this.firstName = firstName;
    }
    
    public void setLastName(String lastName){
        this.lastName = lastName;
    }
    
    public void setMonthlySalary(double salary){
        this.monthlySalary = salary;
    }
    
}