public class TwoDimensional extends Shape {

    private final double perimeter = 0.0;
    private final double area = 0.0;

    public void type() {
        System.out.println("Two Dimensional Shape");
    }

    public String toString() {
        return String.format("Area:%.2f%nPerimeter:%.2f%n", getArea(), getPerimeter());
    }

    public double getArea() {
        return area;
    }

    public double getPerimeter() {
        return perimeter;
    }

    public TwoDimensional() {
        super();
    }
}