package user;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FavoriteDAO {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project");
	EntityManager em = factory.createEntityManager();
	public void ftor(Integer rid,Integer did, favorite fa)
	{
		em.getTransaction().begin();
		Register reg1 = em.find(Register.class, rid);
		fa.setReg(reg1);
		reg1.getF().add(fa);
		em.merge(reg1);
		details de = em.find(details.class, did);
		fa.setDe(de);
		de.getF().add(fa);
		em.merge(de);
		em.getTransaction().commit();
	}
	
	public favorite createFavorite(favorite favorite) {
		em.getTransaction().begin();
		em.persist(favorite);
		em.getTransaction().commit();
		return favorite;
	}


}