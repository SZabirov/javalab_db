package ru.itis.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import ru.itis.models.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.swing.text.html.parser.Entity;
import java.util.List;
import java.util.Optional;

@Component
public class UsersRepositoryHibernateImpl implements UsersRepository {
    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    EntityManager em;

    @Autowired
    public UsersRepositoryHibernateImpl(@Qualifier(value = "entityManagerFactory") EntityManagerFactory emf) {
        em = emf.createEntityManager();
    }

    @Override
    public Optional<User> findByName(String name) {
        Session session = this.sessionFactory.openSession();
        Query q = session.createQuery("FROM User WHERE name = :name");
        q.setParameter("name", name);
        User user = (User) q.uniqueResult();
        return Optional.ofNullable(user);
    }

    @Override
    public List<User> findAll() {
        List<User> users = sessionFactory
                .openSession()
                .createQuery("FROM User").list();
        return users;
    }

    @Override
    public Optional<User> find(Long id) {
        //Entity Manager
        User u = em.find(User.class, id);
        return Optional.ofNullable(u);

//        Session session = this.sessionFactory.openSession();
//        User u = session.get(User.class, id);
//        return Optional.ofNullable(u);
    }

    @Override
    public void save(User model) {
        em.getTransaction().begin();
        em.persist(model);
        em.getTransaction().commit();

//        Session session = this.sessionFactory.openSession();
//        Transaction tx = session.beginTransaction();
//        session.persist(model);
//        tx.commit();
//        session.close();
    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public void update(User model) {

    }
}
