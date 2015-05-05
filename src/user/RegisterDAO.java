package user;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class RegisterDAO {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project");
	EntityManager em = factory.createEntityManager();
	public Register readReById(Integer id)
	{
		Register r = em.find(Register.class, id);
		em.refresh(r);
		return r;
}
}