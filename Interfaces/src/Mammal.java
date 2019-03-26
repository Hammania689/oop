public class Mammal implements Animal{
    private double travel;
    private String food;

    @Override
    public void travel() {
        System.out.println("Hi, I am Mammal that travels " + getTravel() + " miles");
    }

    @Override
    public void eat() {
        System.out.println("Hi, I am a Mammal that likes to eat " + getFood());
    }

    public static void main(String[] args) {
        Animal human = new Mammal("kale", 2.6 );
        human.eat();
        human.travel();
    }

    public double getTravel() {
        return travel;
    }

    public String getFood() {
        return food;
    }

    public Mammal(String food, double travel){
        this.food = food;
        this.travel = travel;
    }
}
