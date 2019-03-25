public class MountainBikeTest {
    public static void main(String[] args) {
        MountainBike jeep = new MountainBike(5,6,22);

        System.out.println("Bike's speed: " + jeep.speed +
                "\nLet's speed up!");
        jeep.speedUp(22);

        System.out.println("Bike's speed: " + jeep.speed +
                "\nLet's slow down a bit");
        jeep.applyBrake(12);

        System.out.println("Bike's speed: " + jeep.speed);

        System.out.println(jeep.toString());
    }
}
