package ru.itis.services;

import ru.itis.models.User;

import java.util.List;

/**
 * 09.10.2017
 * UsersService
 *
 * @author Sidikov Marsel (First Software Engineering Platform)
 * @version v1.0
 */
public interface UsersService {
    List<User> getAllUsers();

    void addUser(User user);

    User getById(Long id);
}
