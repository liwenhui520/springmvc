package com.lwh.entity;

/**
 * @author lwh
 * @version 1.0
 */
public class Master {

    private Integer id;
    private String name;
    private Pet pet;

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Pet getPet() {
        return pet;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPet(Pet pet) {
        this.pet = pet;
    }

    @Override
    public String toString() {
        return "Master{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", pet=" + pet +
                '}';
    }
}
