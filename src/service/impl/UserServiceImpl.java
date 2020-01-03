package service.impl;

import dao.UsersDao;
import dao.impl.UserDaoImpl;
import entity.Users;
import org.apache.log4j.Logger;
import service.UserService;

import java.util.List;

/**
 * 应用模块名称<p>
 * 代码描述<p>
 *
 * @author a2008q
 * @since 2019/12/25 15:08
 */
public class UserServiceImpl implements UserService {
    Logger logger=Logger.getLogger(UserServiceImpl.class);
    UsersDao usersDao = new UserDaoImpl();

    @Override
    public int UserRegService(Users user) {
        return usersDao.UserRegDao(user);
    }

    @Override
    public Users CheckLoginService(String name, String password) {
        logger.debug(name+"发起登录请求");
        Users user = usersDao.checkUserLoginDao(name,password);
        if (user!=null){
            logger.debug(name+"登陆成功");
        }else {
            logger.debug(name+"登陆失败");
        }
        return user;
    }

    @Override
    public List<Users> userShowService() {
        List<Users> usersList = usersDao.userShowDao();
        return usersList;
    }

}
