
public enum TrafficLight {

    // Declaring constants
    RED(50), GREEN(40), YELLOW(5);

    private final int duration;

    TrafficLight(int durationSeconds) {
        duration = durationSeconds;
    }

    // Public Accessor for duration
    public int getDuration() {
        return duration;
    }
}