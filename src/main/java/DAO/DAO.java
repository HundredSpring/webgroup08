package DAO;


import module.LoaihangEntity;
import module.ProductEntity;
import module.UserEntity;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {


    public static List<ProductEntity> getAllProduct(){
        List<ProductEntity> list =new ArrayList<>();
        String query = "SELECT p FROM ProductEntity p";
        EntityManager em = Util.getEmFactory().createEntityManager(); //tao ket noi va lay

        TypedQuery<ProductEntity> q = em.createQuery(query, ProductEntity.class);

        try {
             list = q.getResultList();

             return  list;

        }catch (Exception e){

            return null;
        }finally {
            em.close();
        }
    }

    public static List<LoaihangEntity> getAllCategory(){
        List<LoaihangEntity> list =new ArrayList<>();
        String query = "SELECT p FROM LoaihangEntity p";
        EntityManager em = Util.getEmFactory().createEntityManager(); //tao ket noi va lay

        TypedQuery<LoaihangEntity> q = em.createQuery(query, LoaihangEntity.class);

        try {
            list = q.getResultList();

            return  list;

        }catch (Exception e){

            return null;
        }finally {
            em.close();
        }
    }

    public static List<ProductEntity> getAllProductByCategory(int id){
        List<ProductEntity> list =new ArrayList<>();
        String query = "SELECT p FROM ProductEntity p where p.categoryID = ?1 ";
        EntityManager em = Util.getEmFactory().createEntityManager(); //tao ket noi va lay

        TypedQuery<ProductEntity> q = em.createQuery(query, ProductEntity.class);
        q.setParameter(1,id);

        try {
            list = q.getResultList();

            return  list;

        }catch (Exception e){

            return null;
        }finally {
            em.close();
        }
    }

    public static ProductEntity getProductById(int id){
        EntityManager em = Util.getEmFactory().createEntityManager(); //tao ket noi va lay
        String query = "SELECT p FROM ProductEntity p where p.id = ?1 ";

        TypedQuery<ProductEntity> q = em.createQuery(query, ProductEntity.class);
        q.setParameter(1,id);

        try {
            ProductEntity pro = q.getSingleResult();
            return  pro;

        }catch (Exception e){

            return null;
        }finally {
            em.close();
        }
    }
    public static UserEntity login(String user, String pass){
        EntityManager em = Util.getEmFactory().createEntityManager(); //tao ket noi va lay
        String query = "SELECT p from UserEntity p WHERE p.userName= ?1 and p.password =?2";
        TypedQuery<UserEntity> q = em.createQuery(query, UserEntity.class);
        q.setParameter(1,user);
        q.setParameter(2,pass);

        try {
            UserEntity u =q.getSingleResult();
            return u;

        }catch (Exception e){

            return  null;
        }finally {
            em.close();
        }
    }

    public static UserEntity checkUserExist(String user){
        EntityManager em = Util.getEmFactory().createEntityManager(); //tao ket noi va lay
        String query = "SELECT p from UserEntity p WHERE p.userName= ?1";
        TypedQuery<UserEntity> q = em.createQuery(query, UserEntity.class);
        q.setParameter(1,user);

        try {
            UserEntity u =q.getSingleResult();
            return u;

        }catch (Exception e){

            return  null;
        }finally {
            em.close();
        }
    }

    public void SignUp(UserEntity user){
        EntityManagerFactory emf = Util.getEmFactory(); //tao ket noi va lay
        EntityManager query = emf.createEntityManager();
        EntityTransaction transaction = query.getTransaction();
        UserEntity result =null;

        try {
            transaction.begin();
            query.persist(user);
            transaction.commit();


        }catch (Exception e){
            System.out.println(e.getMessage());

        }finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            query.close();
        }

    }



//    public static void main(String[] args){
//        DAO dao =new DAO();
//        List<ProductEntity> list = dao.getAllProduct();
//         for (ProductEntity o : list){
//             System.out.println(o);
//         }
//    }

}
