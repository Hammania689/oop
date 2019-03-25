
public class Square extends TwoDimensional {

    private final double s;

    public Square(double s) {
        super();
        this.s = s;
    }

    public double getArea() {
        return Math.pow(this.s, 2);
    }

    public double getPerimeter() {
        return this.s * 4;
    }
}