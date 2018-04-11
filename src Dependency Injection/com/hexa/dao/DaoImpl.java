package com.hexa.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
//import org.objectweb.asm.attrs.Annotation;

import com.hexa.entity.Student;

public class DaoImpl implements IDao {
	private static SessionFactory sfac;
	static {
		Configuration cfg = new AnnotationConfiguration();
		cfg.configure();
		sfac = cfg.buildSessionFactory();
	}

	public Student getStudent(int sid) {
		Session sess = sfac.openSession();
		Student stu = (Student) sess.get(Student.class, sid);
		sess.close();
		return stu;
	}

	@Override
	public int addStudent(Student stu) {
		Session sess = null;
		Transaction tx = null;
		try {
			sess = sfac.openSession();
			tx = sess.beginTransaction();
			sess.save(stu);
			tx.commit();
			return 1;
		} catch (HibernateException ex) {
			System.out.println(ex.getMessage());
			if (tx != null)
				tx.rollback();
		} finally {
			if (sess != null)
				sess.close();
		}
		return 0;
	}

	@Override
	public int updateStudent(int sid, int marks) {
		Session sess = sfac.openSession();
		Student stu = (Student) sess.get(Student.class, sid);
		Transaction tx = sess.beginTransaction();
		stu.setMarks(marks);
		// sess.flush(); -- usually used to send the sql statement to database
		tx.commit(); // if flush() is not given then it sends data along with sql statement.
		sess.close();
		return 1;
	}

	@Override
	public int deleteStudent(int sid) {
		Session sess = sfac.openSession();
		Student stu = (Student) sess.get(Student.class, sid);
		Transaction tx = sess.beginTransaction();
		try {
			sess.delete(stu);
			tx.commit();
			return 1;
		} catch (HibernateException ex) {
			System.out.println(ex.getMessage());
		}
		System.out.println("student");
		sess.close();

		return 0;
	}

	@Override
	public int updateStudent(Student stu) {

		Session sess = sfac.openSession();
		Transaction tx = sess.beginTransaction();
		try {
			sess.saveOrUpdate(stu);
			tx.commit();
			return 1;
		} catch (HibernateException ex) {
			System.out.println(ex.getMessage());
		}

		sess.close();
		return 0;
	}

	@Override
	public List<Student> getStudents() {
		Session sess = sfac.openSession();
		Query qry = sess.createQuery("from Student s");
		List<Student> lst = qry.list();
		sess.close();
		return lst;
	}

	@Override
	public List<Student> getStudent(String dept) {
		Session sess = sfac.openSession();
		Query qry = sess.createQuery("from Student s where dept=?");
		qry.setParameter(0, dept);
		List<Student> lst = qry.list();
		sess.close();
		return lst;
	}

	@Override
	public List<String> getDepartments() {
		Session sess = sfac.openSession();
		Query qry = sess.createQuery("select distinct(dept) from Student");
		List<String> lst = (List<String>) qry.list();
		return lst;
	}

}
