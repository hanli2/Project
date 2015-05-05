package user;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class DetailsDAO {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project");
	EntityManager em = factory.createEntityManager();
	
	// crud
	// createDetails
	public details createDetails(details detail) {
		em.getTransaction().begin();
		em.persist(detail);
		em.getTransaction().commit();
		return detail;
	}

	// readDetailsById
	public details readDetailsById(Integer id)
	{
		details d = em.find(details.class, id);
		em.refresh(d);
		return d;
	}
	
	// readAllDeatils
	public List<details> readAllDetails()
	{
		Query query = em.createQuery("select detail from details detail");
		return (List<details>)query.getResultList();
	}
	
	// updateDetails
	public details updateDetails(details detail)
	{
		em.getTransaction().begin();
		em.merge(detail);
		em.getTransaction().commit();
		return detail;
	}
	// deleteDetails
	public void deleteDetails(Integer id) {
		em.getTransaction().begin();
		details detail = em.find(details.class, id);
		em.remove(detail);
		em.getTransaction().commit();
	}
	public void adddetails(Integer regid, details detail)
	{
		em.getTransaction().begin();
		Register re = em.find(Register.class, regid);
		detail.setRegister(re);
		re.getDetail().add(detail);
		em.merge(re);
		em.getTransaction().commit();
	}
	

	
	public static void main(String[] args) {
		


		    DetailsDAO dao = new DetailsDAO();
			
//	       details chicken=new details (null,"hot",20,"cc", null);
//	       dao.adddetails(7, chicken);

//		dao.deleteDetails(3);
			List<details> de = dao.readAllDetails();
//	for(details detail : de)
//		{
//		System.out.println(detail.getLabel());
//		}

		
//		titanic.setPlot("Titanic sinks at the end");s
//		dao.updateMovie(titanic);
		
	
	}
		
		
	

} 
