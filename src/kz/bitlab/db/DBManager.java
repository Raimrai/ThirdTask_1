package kz.bitlab.db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBManager {

    private static Connection connection;

    static {
        try {

            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/java_pro_db",
                    "postgres","password");

        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public static ArrayList<Student> getAllStudents(){
       ArrayList<Student> students = new ArrayList<>();
       try {
           PreparedStatement statement = connection.prepareStatement(" "
                   + "SELECT * FROM students "
                   + " ORDER BY id ASC ");
           ResultSet resultSet = statement.executeQuery();
           while (resultSet.next()){
               Student student = new Student();
               student.setId(resultSet.getLong("id"));
               student.setName(resultSet.getString("name"));
               student.setSurname(resultSet.getString("surname"));
               student.setBirthday(resultSet.getString("birthday"));
               student.setCity(resultSet.getString("city"));
               students.add(student);
           }
           statement.close();

       }catch (Exception e){
           e.printStackTrace();
       }
       return students;
    }
    public static void addStudent(Student student){
        try {

            PreparedStatement statement = connection.prepareStatement(""
                    +"INSERT INTO students (name, surname, birthday, city)"
                    +"VALUES (?, ?, ?, ?)");
            statement.setString(1,student.getName());
            statement.setString(2, student.getSurname());
            statement.setString(3,student.getBirthday());
            statement.setString(4,student.getCity());

            statement.executeUpdate();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public static Student getStudent(Long id){
        Student student = null;
        try {
            PreparedStatement statement = connection.prepareStatement(" " +
                    "SELECT * FROM students WHERE id = ?");
            statement.setLong(1,id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()){
                student = new Student();
                student.setId(resultSet.getLong("id"));
                student.setName(resultSet.getString("name"));
                student.setSurname(resultSet.getString("surname"));
                student.setBirthday(resultSet.getString("birthday"));
                student.setCity(resultSet.getString("city"));
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return student;
    }
    public static void updateStudent(Student student){
            try {
                PreparedStatement statement = connection.prepareStatement(
                        "UPDATE students SET name = ?, surname = ?, birthday = ?, city = ?"
                                + "WHERE id = ?");
                statement.setString(1, student.getName());
                statement.setString(2, student.getSurname());
                statement.setString(3, student.getBirthday());
                statement.setString(4, student.getCity());
                statement.setLong(5, student.getId());

                statement.executeUpdate();
                statement.close();

            }catch (Exception e){
                e.printStackTrace();
            }
    }
    public static void deleteStudent(Long id){
        try {

            PreparedStatement statement = connection.prepareStatement(" "
                    + " DELETE FROM students WHERE id = ?");
            statement.setLong(1,id);
            statement.executeUpdate();
            statement.close();


        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
