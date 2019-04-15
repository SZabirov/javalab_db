package ru.itis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ru.itis.models.User;

import java.util.List;

public interface UsersJpaRepository extends JpaRepository<User, Long>, UsersJpaRepositoryCustom{

    List<User> findAllByNameOrderById(String name);

    @Query("SELECT distinct u FROM User u, Order o " +
            "WHERE o MEMBER OF u.orders AND o.name = :name " +
            "ORDER BY u.id")
    List<User> findAllByOrderNameOrderById(@Param("name") String name);

    @Query(nativeQuery = true, value = "SELECT u.id, u.age, u.name, u.passwordhash FROM shop_user u, shop_order o" +
            " WHERE o.user_id = u.id AND o.name = :name")
    List<User> findAllByOrderNameOrderByIdNative(@Param("name") String name);

    @Query("SELECT u as user, count(o) as count FROM User u, Order o " +
            "WHERE o member OF u.orders group by u")
    List<UserWithOrderCount> findAllUsersWithOrderCounts();

    interface UserWithOrderCount {
        User getUser();
        int getCount();
    }
}
