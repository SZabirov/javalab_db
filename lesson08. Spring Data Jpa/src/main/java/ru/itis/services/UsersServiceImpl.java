package ru.itis.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.itis.repository.UsersJpaRepository;
import ru.itis.models.User;

import java.util.List;
import java.util.Optional;

/**
 * 09.10.2017
 * UsersServiceImpl
 *
 * @author Sidikov Marsel (First Software Engineering Platform)
 * @version v1.0
 */
@Component
public class UsersServiceImpl implements UsersService {
//
//    @Autowired
//    @Qualifier(value = "usersRepositoryHibernateImpl")
//    private UsersRepository usersRepository;

    @Autowired
    private UsersJpaRepository usersRepository;

    @Override
    public List<User> getAllUsers() {
        usersRepository.findSomeUser();
        return usersRepository.findAll();
    }

    @Override
    public List<UsersJpaRepository.UserWithOrderCount> getAllUsersWithOrderCounts() {
        return usersRepository.findAllUsersWithOrderCounts();
    }

    @Override
    public List<User> getAllUsersByOrderName(String order) {
        return usersRepository.findAllByOrderNameOrderByIdNative(order);
    }

    @Override
    public void addUser(User user) {
        usersRepository.save(user);
    }

    @Override
    public User getById(Long id) {
        Optional<User> optionalUser =
                usersRepository.findById(id);
        if (optionalUser.isPresent()) {
            return optionalUser.get();
        } else {
            throw new IllegalArgumentException(
                    "User with id = " + id + " not found"
            );
        }
    }

    @Override
    public User getSomeUser() {
        Optional<User> optionalUser = usersRepository.findSomeUser();
        if (optionalUser.isPresent()) {
            return optionalUser.get();
        } else {
            throw new IllegalArgumentException(
                    "User not found"
            );
        }
    }
}
