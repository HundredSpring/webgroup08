package DAO;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Util {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("test");

    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}   
