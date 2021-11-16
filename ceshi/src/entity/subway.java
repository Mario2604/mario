package entity;

public class subway {
    private int number;
    private  String name;
    private  String route;

    public int getNumber(){
        return number;
    }

    public String getName() {
        return name;
    }

    public String getRoute() {
        return route;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public void setRoute(String route) {
        this.route = route;
    }
    public subway(int number,String name,String route){
        super();
        this.number=number;
        this.name=name;
        this.route=route;
    }
    public subway(){
        super();

    }
    @Override
    public String toString() {
        return "subway number=" + number + ", name=" + name + ", route=" + route + "]";
    }
}
