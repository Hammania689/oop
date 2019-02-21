public class Truck extends Vehicle {

    private double tonage = 0;

    public Truck(String make, String model, int year, double weight) {

        super(make, model, year);
        if (weight < 0.0) {
            throw new IllegalArgumentException("Weight must be greater than 0.0");
        }

        this.tonage = weight;
    }

    double getTonnage() {
        return this.tonage;
    }

    @Override
    public void print() {
        super.print();
        System.out.print( " Tonnage: " + getTonnage());
    }

}