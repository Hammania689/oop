public class ThreeDimensional extends Shape {

    private final double volume = 0.0;
    private final double area = 0.0;

    public void type() {
        System.out.println("Three Dimensional Shape");
    }

    public String toString() {
        return String.format("Area:%.2f%nVolume:%.2f%n", getArea(), getVolume());
    }

    public double getArea() {
        return area;
    }

    public double getVolume() {
        return volume;
    }

    public ThreeDimensional() {
        super();
    }
}