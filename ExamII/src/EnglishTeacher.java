class EnglishTeacher extends Teacher {

    String subject = "Native Canadian Literature";

    @Override
    void print() {
        super.print();
        System.out.print(" " + subject + " at " + collegeName + " as a " + designation);
    }

    public EnglishTeacher(){
        super();
    }
}
