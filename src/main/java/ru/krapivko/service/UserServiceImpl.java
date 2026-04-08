package ru.krapivko.service;

import org.springframework.transaction.annotation.Transactional;
import ru.krapivko.dao.UserDao;
import ru.krapivko.model.User;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    private UserDao userDao;

    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    @Transactional(readOnly = true)
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    @Override
    @Transactional(readOnly = true)
    public User getUserById(Long id) {
        return userDao.getUserById(id);
    }

    @Override
    public void saveUser(User user) {
        userDao.saveUser(user);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public void deleteUser(Long id) {
        userDao.deleteUser(id);
    }

    @Override
    public void createUser(String name, String lastname, Integer age) {
        User user = new User(name, lastname, age);
        userDao.saveUser(user);
    }

    @Override
    public void updateUser(Long id, String name, String lastname, Integer age) {
        User user = new User();
        user.setId(id);
        user.setName(name);
        user.setLastname(lastname);
        user.setAge(age);

        userDao.updateUser(user);
    }
}
