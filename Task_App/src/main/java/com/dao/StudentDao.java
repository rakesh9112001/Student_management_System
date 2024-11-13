package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.dto.Admin;
import com.dto.Student;

public class StudentDao {
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");
	private EntityManager em = emf.createEntityManager();
	private EntityTransaction et = em.getTransaction();
	
	
	
	public Student SaveStudent(Student ad) {
		et.begin();
		Student s=em.merge(ad);
		et.commit();
		return s;
	}



	public Student findStudentById(int id) {
		
		
		return em.find(Student.class, id);
		
		
	}



	public void deleteStudent(Student sid) {
		et.begin();
		em.remove(sid);
		et.commit();
		
	}



	


	




	
	
}
