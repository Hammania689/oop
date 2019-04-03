public class ScienceTeacher extends Teacher {

    String subject = "Motor Control in BioPhysical Systems";

    @Override
    void print() {
        super.print();
        System.out.print(" " + subject + " at " + collegeName + " as a " + designation);
    }

    public ScienceTeacher(){
        super();
    }

}
