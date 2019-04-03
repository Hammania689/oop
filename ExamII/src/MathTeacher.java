public class MathTeacher extends Teacher {

    String subject = "Statistical Learning Theory";

    @Override
    void print() {
        super.print();
        System.out.print(" " + subject + " at " + collegeName + " as a " + designation);
    }

    public MathTeacher() {
        super();
    }
}
