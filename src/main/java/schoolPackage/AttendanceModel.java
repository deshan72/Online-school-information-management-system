package schoolPackage;

import java.time.LocalDate;

public class AttendanceModel {
    private String studentID;
    private String name;
    private int grade;           
    private String classRoom;    
    private LocalDate date;
    private String status;

    // ✅ Correct constructor
    public AttendanceModel(String studentID, String name, int grade, String classRoom, LocalDate date, String status) {
        this.studentID = studentID;
        this.name = name;
        this.grade = grade;
        this.classRoom = classRoom;
        this.date = date;
        this.status = status;
    }

    // ✅ Getters and setters
    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public String getClassRoom() {
        return classRoom;
    }

    public void setClassRoom(String classRoom) {
        this.classRoom = classRoom;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
