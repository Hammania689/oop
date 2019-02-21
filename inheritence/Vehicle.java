public class Vehicle {
    private String make;
    private String model;
    private int year;

    Vehicle(String make, String model, int year) {
        this.make = make;
        this.model = model;
        this.year = year;
    }

    String getMake() {
        return make;
    }

    String getModel() {
        return model;
    }

    int getYear() {
        return year;
    }

    // method to print out the super variables
    
    public void print(){

        System.out.print("Make: " + make + ", Model: " + model + ", Year: " +
        year);
        // return String.format("Make:%s Model:%s Year:%d", this.getMake(), this.getModel(), this.getYear());
    }
}