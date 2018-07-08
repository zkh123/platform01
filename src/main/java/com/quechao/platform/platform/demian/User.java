package com.quechao.platform.platform.demian;

import java.util.Date;

public class User {
    private int id;
    private String name;
    private double salary;
    private Date birthday;

    public User() {
    }

    public User(int id, String name, double salary, Date birthday) {
        this.id = id;
        this.name = name;
        this.salary = salary;
        this.birthday = birthday;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
