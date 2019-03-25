
public class Triangle extends TwoDimensional {

    private final double s1;
    private final double s2;
    private final double s3;

    public Triangle(double s1, double s2, double s3) {
        super();
        this.s1 = s1;
        this.s2 = s3;
        this.s3 = s3;
    }

    public double getArea() {
        double half = (this.s1 + this.s2 + this.s3);
        double calc = Math.sqrt(half * (half - this.s1) * (half - this.s2) * (half - this.s3));
        return calc;
    }

    public double getPerimeter() {
        return this.s1 + this.s2 + this.s3;
    }
}