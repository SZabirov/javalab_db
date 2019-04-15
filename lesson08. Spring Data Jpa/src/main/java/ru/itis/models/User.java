package ru.itis.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

/**
 * 22.10.2018
 * User
 *
 * @author Sidikov Marsel (First Software Engineering Platform)
 * @version v1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "shop_user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String passwordHash;
    private Integer age;

    @OneToMany(mappedBy = "user")
    List<Order> orders;
}
