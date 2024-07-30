package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entity.Student;
import com.demo.repo.StudnetRepo;
@Service
public class StudentService {
	
	 @Autowired
	    private StudnetRepo studentRepository;
	

	public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    public Student getStudentById(Long id) {
        return studentRepository.findById(id).orElse(null);
    }

    public void saveOrUpdateStudent(Student student) {
        studentRepository.save(student);
    }

    public void deleteStudent(Long id) {
        studentRepository.deleteById(id);
    }

}
