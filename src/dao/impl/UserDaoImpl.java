package dao.impl;

import dao.UsersDao;
import entity.Users;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 应用模块名称<p>
 * 代码描述<p>
 *
 * @author a2008q
 * @since 2019/12/25 15:10
 */
public class UserDaoImpl implements UsersDao {

    @Override
    public int UserRegDao(Users user) {
        Connection conn = null;
        PreparedStatement ps = null;
        int index = -1;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flower?serverTimezone =UTC", "flower", "yhh515515");
            String sql = "INSERT INTO flower_user(phone,pwd,name,age) value(?,?,?,?)";

            ps = ((Connection) conn).prepareStatement(sql);
            ps.setString(1, user.getPhone());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getName());
            ps.setString(4, user.getAge());
            index = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return index;
    }

    @Override
    public Users checkUserLoginDao(String phone, String password) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Users user = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flower?serverTimezone =UTC", "flower", "yhh515515");
            String sql = "select * from flower_user where phone=? and pwd=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                user = new Users();
                user.setUid(rs.getInt("uid"));
                user.setPhone(rs.getString("phone"));
                user.setPassword(rs.getString("pwd"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return user;
    }

    @Override
    public List<Users> userShowDao() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Users> usersList = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flower?serverTimezone =UTC", "flower", "yhh515515");
            String sql = "select * from flower_user ";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            usersList = new ArrayList<Users>();
            while (rs.next()) {
                Users user = new Users();
                user.setUid(rs.getInt("uid"));
                user.setPhone(rs.getString("phone"));
                user.setPassword(rs.getString("pwd"));
                user.setName(rs.getString("name"));
                user.setAge(rs.getString("age"));
                usersList.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return usersList;
    }
}
