package com.tuto.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tuto.model.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao{

	@Autowired
    private SessionFactory sessionFactory;
	
	public void addEmployee(Employee employee) {
		sessionFactory.getCurrentSession().saveOrUpdate(employee);
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Employee> getAllEmployees() {
		return sessionFactory.getCurrentSession().createQuery("from Employee")
                .list();
	}

	public void deleteEmployee(Integer employeeId) {
		Employee employee = (Employee) sessionFactory.getCurrentSession().load(
                Employee.class, employeeId);
        if (null != employee) {
            this.sessionFactory.getCurrentSession().delete(employee);
        }
 
    }

	public Employee updateEmployee(Employee employee) {
		sessionFactory.getCurrentSession().update(employee);
        return employee;
    }

	public Employee getEmployee(int empid) {
		return (Employee) sessionFactory.getCurrentSession().get(
                Employee.class, empid);
	}

}