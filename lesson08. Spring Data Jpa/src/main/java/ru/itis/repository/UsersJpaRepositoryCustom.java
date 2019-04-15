package ru.itis.repository;

import ru.itis.models.User;

import java.util.Optional;

public interface UsersJpaRepositoryCustom {
    Optional<User> findSomeUser();
}
