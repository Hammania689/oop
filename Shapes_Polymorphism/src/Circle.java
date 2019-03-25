import java.awt.geom.Area;

public class Circle extends TwoDimensional {

    private final double r;

    public Circle(double r) {
        super();
        this.r = r;
    }

    public double getArea() {
        return Math.PI * Math.pow(this.r, 2);
    }

    public double getPerimeter() {
        return Math.PI * 2 * this.r;
    }
}