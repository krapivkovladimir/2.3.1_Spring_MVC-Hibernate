package ru.krapivko.service;

import ru.krapivko.model.User;

import java.util.List;

public interface UserService {
    List<User> getAllUsers();

    User getUserById(Long id);

    void saveUser(User user);

    void updateUser(User user);

    void deleteUser(Long id);

    void createUser(String name, String lastname, Integer age);

    void updateUser(Long id, String name, String lastname, Integer age);
}
