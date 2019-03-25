public class ShapeTest {

    public static void main(String[] args) {
        Shape circle = new Circle(4.0);
        Shape square = new Square(3.0);
        Shape triangle = new Triangle(1.0, 2.0, 3.0);

        Shape sphere = new Sphere(3.0);
        Shape cube = new Cube(4.0);
        Shape tetra = new Tetratheron(1.0, 2.0, 3.0);

        System.out.println(circle.toString());
        System.out.println(square.toString());
        System.out.println(triangle.toString());

        System.out.println(sphere.toString());
        System.out.println(cube.toString());
        System.out.println(tetra.toString());
    }
}