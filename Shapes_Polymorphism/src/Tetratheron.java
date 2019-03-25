class Tetratheron extends ThreeDimensional {


    private final double s1;
    private final double s2;
    private final double s3;

    public Tetratheron(double s1, double s2, double s3) {
        super();
        this.s1 = s1;
        this.s2 = s3;
        this.s3 = s3;
    }

    public double getArea() {
        return (this.s1 * this.s2 * this.s3) / Math.sqrt(2 * 6);
    }

    public double getVolume() {
        return this.s1  * this.s2 * this.s3  * Math.sqrt(3);
    }
}

