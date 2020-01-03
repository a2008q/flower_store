package dao;

import entity.Users;

import java.util.List;

/**
 * 应用模块名称<p>
 * 代码描述<p>
 *
 * @author a2008q
 * @since 2019/12/25 15:09
 */
public interface UsersDao {
    int UserRegDao(Users users);
    Users checkUserLoginDao(String name,String password);

    List<Users> userShowDao();
}
