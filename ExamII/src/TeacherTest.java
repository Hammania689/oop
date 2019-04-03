class TeacherTest {
    public static void main(String[] args) {

        Teacher m = new MathTeacher();
        Teacher s = new ScienceTeacher();
        Teacher e = new ScienceTeacher();

        m.print();
        System.out.println();
        s.print();
        System.out.println();
        e.print();
        System.out.println();
    }
}
