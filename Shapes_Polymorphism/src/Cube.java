import java.awt.geom.Area;

public class Cube extends ThreeDimensional {

    private final double s;

    public Cube(double s) {
        super();
        this.s = s;
    }

    public double getArea() {
        return Math.pow(s, 3);
    }

    public double getVolume() {
        return this.s * this.s * 6;
    }
}