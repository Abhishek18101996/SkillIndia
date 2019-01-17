package com.skillIndia.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.skillIndia.model.Candidate;
import com.skillIndia.model.Course;
import com.skillIndia.model.Establishment;

@Repository
public class EstablishmentDaoImpl implements EstablishmentDao{

	static Transaction tcx;
    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sf) {
	this.sessionFactory = sf;
    }
    
	@Override
	public void addEstablishment(Establishment establishment) {
		Session session = this.sessionFactory.openSession();
		tcx = session.beginTransaction();
		System.out.println(establishment);
		session.save(establishment);
		tcx.commit();
		session.close();
	}

	@Override
	public void updateEstablishment(Establishment p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeEstablishmentByName(String name) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addCourse(Course establishmentCourse) {
		
	}

	@Override
	public void evaluateCandidate(Candidate candidateProgress) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Course> listCourses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Candidate> listCandidates() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean verifyEstablishment(String userIdEst, String estPassword){
		Session session = this.sessionFactory.openSession();
		String query = "from Establishment where userIdEst=:userIdEst and estPassword=:estPassword";
		System.out.println("query");
		org.hibernate.Query q = session.createQuery(query);
		q.setString("userIdEst", userIdEst);
		q.setString("estPassword", estPassword);
		List<Establishment> establishmentList = q.list();
		if(establishmentList.size()==0) {
		return false;
		}
		session.close();
		return true;
	}

	@Override
	public Establishment returnEstablishment(Establishment establishment) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		String USERIDEST = establishment.getUserIdEst();
		String ESTPASSWORD = establishment.getEstPassword();
		String query = "from establishment e where e.USERIDEST=:USERIDEST and e.ESTPASSWORD=:ESTPASSWORD";
		org.hibernate.Query q = session.createQuery(query);
		q.setString("USERIDEST", USERIDEST);
		q.setString("ESTPASSWORD", ESTPASSWORD);
		List<Establishment> establishmentlist = q.list();
		Iterator<Establishment> canitr = establishmentlist.iterator();
		Establishment c = new Establishment();
		while (canitr.hasNext()) {
			c = (Establishment) canitr.next();
		}
		return c;
	}

}
