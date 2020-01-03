package service;

import entity.Users;

import java.util.List;

/**
 * 应用模块名称<p>
 * 代码描述<p>
 *
 * @author a2008q
 * @since 2019/12/25 15:04
 */
public interface UserService {
    int UserRegService(Users user);
    Users CheckLoginService(String phone,String password);

    List<Users> userShowService();
}
