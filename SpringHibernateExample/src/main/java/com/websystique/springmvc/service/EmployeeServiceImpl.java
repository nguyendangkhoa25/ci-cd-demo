package com.websystique.springmvc.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import com.websystique.springmvc.model.Employee;


public class EmployeeServiceImpl implements EmployeeService {
	private static final AtomicLong counter = new AtomicLong();

	private static List<Employee> employees;
	
	public Employee findById(long id) {
		for (Employee employee : employees) {
			if (employee.getId() == id) {
				return employee;
			}
		}
		return null;
	}

	public void saveEmployee(Employee employee) {
		employee.setId((int)counter.incrementAndGet());
		employees.add(employee);
	}

	public void updateEmployee(Employee employee) {
		int index = employees.indexOf(employee);
		employees.set(index, employee);
	}

	public void deleteEmployeeBySsn(String ssn) {
		for (Iterator<Employee> iterator = employees.iterator(); iterator.hasNext();) {
			Employee employee = iterator.next();
			if (employee.getSsn() == ssn) {
				iterator.remove();
			}
		}
	}
	
	public List<Employee> findAllEmployees() {
		return employees;
	}

	public Employee findEmployeeBySsn(String ssn) {
		for (Employee employee : employees) {
			if (employee.getSsn() == ssn) {
				return employee;
			}
		}
		return null;
	}

	public boolean isEmployeeSsnUnique(Long id, String ssn) {
		Employee employee = findEmployeeBySsn(ssn);
		return ( employee == null || ((id != null) && (employee.getId() == id)));
	}

	private static List<Employee> populateDummyEmployee() {
		List<Employee> employees = new ArrayList<Employee>();
		employees.add(new Employee(counter.incrementAndGet(), "Sam", 30, 70000 ,"aa"));
		employees.add(new Employee(counter.incrementAndGet(), "Tom", 40, 50000 , "bb"));
		employees.add(new Employee(counter.incrementAndGet(), "Jerome", 45, 30000, "cc"));
		employees.add(new Employee(counter.incrementAndGet(), "Silvia", 50, 40000, "dd"));
		return employees;
	}
	
}
