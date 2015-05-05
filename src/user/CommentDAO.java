package user;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class CommentDAO {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("Project");
	EntityManager em = factory.createEntityManager();
	public void comment(Integer id, Integer rid,Integer did, Comment com)
	{
		em.getTransaction().begin();
		Register reg = em.find(Register.class, rid);
		com.setReg(reg);
		reg.getC().add(com);
		em.merge(reg);
		details de = em.find(details.class, did);
		com.setDe(de);
		de.getC().add(com);
		em.merge(de);
		em.getTransaction().commit();
	}
	
	public Comment createComment(Comment comment) {
		em.getTransaction().begin();
		em.persist(comment);
		em.getTransaction().commit();
		return comment;
	}

	// readCommentsById
	public Comment readCommentsById(Integer id)
	{
		Comment d = em.find(Comment.class, id);
		em.refresh(d);
		return d;
	}
	
	// readAllComments
	public List<Comment> readAllComments()
	{
		Query query = em.createQuery("select comment from Comment comment");
		return (List<Comment>)query.getResultList();
	}
	public void deleteComment(Integer id) {
		em.getTransaction().begin();
		Comment d = em.find(Comment.class, id);
		em.remove(d);
		em.getTransaction().commit();
	}
}
