package user;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class AdminDAO {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project");
	EntityManager em = factory.createEntityManager();
	public void deleteDetails(Integer id) {
		em.getTransaction().begin();
		details detail = em.find(details.class, id);
		em.remove(detail);
		em.getTransaction().commit();
	}
}
