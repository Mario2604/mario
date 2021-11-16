package DAO;

import entity.subway;

import java.util.List;

public interface SubwayDAO {
    public List<subway> findAll();

    void delete(String name);


    subway findMessageById(int id);

    void Update(int number, String name, String route);

    void insert(int number, String name, String route);

    public List<subway> findAll2(String sql);
    public List<subway> findTwo(String name,String name2);
    public List<subway> findOne(String name);
    public List<subway> findRoute(String route);
}
