import java.awt.geom.Area;

public class Sphere extends ThreeDimensional {

    private final double r;

    public Sphere(double r) {
        super();
        this.r = r;
    }

    public double getArea() {
        return 4 * Math.PI * this.r * this.r;
    }

    public double getVolume() {
        return (Math.PI * this.r * this.r * this.r * 4) / 3.0;
    }
}