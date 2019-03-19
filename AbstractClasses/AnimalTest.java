import jdk.nashorn.internal.runtime.SharedPropertyMap;

public class AnimalTest{

    public static void main(String[] args) {
        
        Lion lion = new Lion();
        Cat kitten = new Cat();
        Sheep sheep = new Sheep();

       
        lion.sound();
        kitten.sound();
        sheep.sound();
    }
}