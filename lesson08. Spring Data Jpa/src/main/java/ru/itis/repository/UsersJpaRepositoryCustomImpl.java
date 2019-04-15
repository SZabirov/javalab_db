package ru.itis.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.itis.models.User;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.Optional;

@Component
public class UsersJpaRepositoryCustomImpl implements UsersJpaRepositoryCustom {

    @Autowired
    EntityManager em;

    @Override
    public Optional<User> findSomeUser() {
        Query q = em.createQuery("SELECT u FROM User u WHERE u.id = 1");
        User u = (User) q.getSingleResult();
        return Optional.ofNullable(u);
    }
}
