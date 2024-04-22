package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Bill;
import model.Car;
import model.Category;
import model.Color;
import model.Detail;
import model.Order;

public class CarDAO extends DBContext {

    //doc tat ca cac ban ghi tu StudentDB
    public List<Car> getFeturedCars() {
        List<Car> list = new ArrayList<>();
        String sql = "SELECT TOP 4 Car.id , Car.name, Car.img, Car.description, Car.price, Car.cid, COUNT(detail.id) as total_count \n"
                + "                 FROM detail \n"
                + "                 JOIN Car ON detail.id = Car.id \n"
                + "                GROUP BY Car.id, Car.name, Car.img, Car.description, Car.price, Car.cid \n"
                + "                ORDER BY total_count DESC";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Car s = new Car(rs.getString("id"), rs.getString("name"), rs.getString("img"), rs.getString("description"), rs.getDouble("price"), rs.getString("cid"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Car> getnewCars() {
        List<Car> list = new ArrayList<>();
        String sql = "select top 4 * from Car order by id desc";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Car s = new Car(rs.getString("id"), rs.getString("name"), rs.getString("img"), rs.getString("description"), rs.getFloat("price"), rs.getString("cid"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Car> getAllCars() {
        List<Car> list = new ArrayList<>();
        String sql = "select * from car";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Car s = new Car(rs.getString("id"), rs.getString("name"), rs.getString("img"), rs.getString("description"), rs.getFloat("price"), rs.getString("cid"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Car> getAllCarsbyCid(String cid) {
        List<Car> list = new ArrayList<>();
        String sql = "select * from \n"
                + " car \n"
                + " where cid= ?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Car s = new Car(rs.getString("id"), rs.getString("name"), rs.getString("img"), rs.getString("description"), rs.getFloat("price"), rs.getString("cid"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Category> getAllTypeCars() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from category\n";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category s = new Category(rs.getString("cid"), rs.getString("type"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Car getCarsbyid(String id) {
        List<Car> list = new ArrayList<>();
        String sql = "select * from Car\n"
                + "where id =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Car s = new Car(rs.getString("id"), rs.getString("name"), rs.getString("img"), rs.getString("description"), rs.getFloat("price"), rs.getString("cid"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public List<Car> getCarsbySearch(String name) {
        List<Car> list = new ArrayList<>();
        String sql = "select * from Car\n"
                + "where car.name like ?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + name + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Car s = new Car(rs.getString("id"), rs.getString("name"), rs.getString("img"), rs.getString("description"), rs.getFloat("price"), rs.getString("cid"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Detail getDetailsCar(String id) {
        List<Detail> list = new ArrayList<>();
        String sql = "SELECT top 1*\n"
                + "                FROM Color\n"
                + "                INNER JOIN detail ON color.color_id = detail.color_id\n"
                + "                where id = ?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Detail s = new Detail(rs.getString("color_id"), rs.getString("color"), rs.getString("id"), rs.getString("interior"), rs.getString("interior_img"), rs.getString("color_img"), rs.getString("id_detail"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Detail> getAllDetailsCar(String id) {
        List<Detail> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "FROM Color\n"
                + "INNER JOIN detail ON color.color_id = detail.color_id\n"
                + "where id = ?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Detail s = new Detail(rs.getString("color_id"), rs.getString("color"), rs.getString("id"), rs.getString("interior"), rs.getString("interior_img"), rs.getString("color_img"), rs.getString("id_detail"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Account getUser(String user, String password) {
        String sql = "select * from account \n"
                + "where [user] =? and [password] =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, user);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account s = new Account(rs.getString("user"), rs.getString("password"), rs.getInt("admin"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Account CheckAccount(String user) {
        String sql = "select * from account \n"
                + "where [user] =?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, user);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account s = new Account(rs.getString("user"), rs.getString("password"), rs.getInt("admin"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void SignUp(String user, String password) {
        String sql = "insert into account\n"
                + "values(?,?,0)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, user);
            st.setString(2, password);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void DeleteCar(String id) {
        String sql = "delete from detail\n"
                + "where id =?\n"
                + "delete from car \n"
                + "where id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, id);
            st.setString(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void AddCar(String id, String name, String img, String des, float price, String type) {
        String sql = "insert into Car\n"
                + "values(?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, id);
            st.setString(2, name);
            st.setString(3, img);
            st.setString(4, des);
            st.setFloat(5, price);
            st.setString(6, type);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void EditCar(String id, String name, String img, String des, float price, String type) {
        String sql = "update Car\n"
                + " set [name]=?,\n"
                + " img=?,\n"
                + " [description]= ?,\n"
                + " price=?,\n"
                + " cid=?\n"
                + " where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, name);
            st.setString(2, img);
            st.setString(3, des);
            st.setFloat(4, price);
            st.setString(5, type);
            st.setString(6, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Order getOrderByNC(String name, String color) {
        List<Order> list = new ArrayList<>();
        String sql = "select detail.id_detail, car.name, detail.color_img, color.color,car.price\n"
                + "from detail join Car on detail.id = Car.id\n"
                + "join color on detail.color_id = color.color_id\n"
                + "where Car.name= ? and  Color.color = ?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, name);
            st.setString(2, color);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order s = new Order(rs.getString("id_detail"), rs.getString("name"), rs.getString("color_img"), rs.getString("color"), rs.getDouble("price"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public void AddBill(Bill bill) {
        String sql = "insert into bill\n"
                + "values(?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, bill.getUser());
            st.setString(2, bill.getDate());
            st.setDouble(3, bill.getTotal());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public String BestFriend() {
        String sql = "select top 1 [user] ,sum(total)\n"
                + "from bill \n"
                + "group by [user]";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String user = rs.getString("user");
                return user;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Double Revenue() {
        String sql = "select   sum(total) as total\n"
                + "from bill ";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                double total = rs.getDouble("total");
                return total;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void AddOP(String id, String color_id, String interior, String interior_img, String color_img, String detail_id) {
        String sql = "insert into detail\n"
                + "values(?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, id);
            st.setString(2, interior);
            st.setString(3, interior_img);
            st.setString(4, color_img);
            st.setString(5, color_id);
            st.setString(6, detail_id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void DeleteOPCar(String id, String color) {
        String sql = "delete detail\n"
                + "where id =? and detail.color_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, id);
            st.setString(2, color);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void EditCarOP(String id, String inter, String inter_img, String color_img, String id_color) {
        String sql = "update detail\n"
                + "set interior=?,\n"
                + "interior_img=?,\n"
                + "color_img=?,\n"
                + "color_id=? \n"
                + "where id_detail=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, inter);
            st.setString(2, inter_img);
            st.setString(3, color_img);
            st.setString(4, id_color);

            st.setString(5, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Detail getDetailById(String id) {
        String sql = "SELECT *\n"
                + "FROM Color\n"
                + "INNER JOIN detail ON color.color_id = detail.color_id\n"
                + "where id_detail = ?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, id);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Detail s = new Detail(rs.getString("color_id"), rs.getString("color"), rs.getString("id"), rs.getString("interior"), rs.getString("interior_img"), rs.getString("color_img"), rs.getString("id_detail"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public List<Color> getAllColor() {
        List<Color> list = new ArrayList<>();
        String sql = "select * from color";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Color c = new Color(rs.getString("color_id"), rs.getString("color"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Car> getAllCarsbyColor(String cid) {
        List<Car> list = new ArrayList<>();
        String sql = "select * from Car\n"
                + "join detail on Car.id = detail.id\n"
                + "join Color on detail.color_id= color.color_id\n"
                + "where color.color_id= ?";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Car s = new Car(rs.getString("id"), rs.getString("name"), rs.getString("img"), rs.getString("description"), rs.getFloat("price"), rs.getString("cid"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public static void main(String[] args) {
        CarDAO sd = new CarDAO();
      
        List<Color> c = sd.getAllColor();
        List<Car> c1 = sd.getCarsbySearch("u");
        System.out.println(c1);
        System.out.println(c.get(0).getId());
            for (int i = 0; i < c1.size(); i++) {
           System.out.println(c.get(i).getName());
        }
    }

}
