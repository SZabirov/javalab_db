package ru.itis.services;

import ru.itis.models.User;
import ru.itis.repository.UsersJpaRepository;

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

    List<UsersJpaRepository.UserWithOrderCount> getAllUsersWithOrderCounts();

    List<User> getAllUsersByOrderName(String order);

    void addUser(User user);

    User getById(Long id);

    User getSomeUser();
}
