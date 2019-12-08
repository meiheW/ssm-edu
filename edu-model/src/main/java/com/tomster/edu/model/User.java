package com.tomster.edu.model;

/**
 * @author meihewang
 * @date 2019/12/05  0:02
 */
public class User {

    private String username;

    private String password;

    private int empId;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", empId=" + empId +
                '}';
    }
}
